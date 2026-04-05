using System;
using System.Globalization;
using System.Linq;
using Microsoft.Maui.Graphics;
using busines_treker.Controls;
using System.Collections.Generic;
using busines_treker.Models;
using busines_treker.Services;
using Microsoft.Extensions.DependencyInjection;
using busines_treker.Localization;

namespace busines_treker
{
    public partial class MainPage : ContentPage
    {
        private readonly IExpenseService _expenseService;
        private readonly DonutDrawable _donut = new DonutDrawable();

        private Label _currentDateLabel;
        // track CTS for long press
        private readonly Dictionary<Guid, System.Threading.CancellationTokenSource> _pressCts = new Dictionary<Guid, System.Threading.CancellationTokenSource>();

        public MainPage()
        {
            InitializeComponent();
            _expenseService = MauiProgram.Services?.GetService<IExpenseService>() ?? throw new InvalidOperationException("ExpenseService not registered");
            // set localization binding context
            BindingContext = LocalizationResourceManager.Instance;
            var donutView = this.FindByName<GraphicsView>("DonutChartView");
            if (donutView != null)
                donutView.Drawable = _donut;
            _currentDateLabel = this.FindByName<Label>("CurrentDateLabel");
            if (_currentDateLabel != null)
                _currentDateLabel.Text = DateTime.Now.ToString("dd MMMM yyyy", CultureInfo.CurrentCulture);
            // add settings toolbar item
            ToolbarItems.Add(new ToolbarItem("⚙", null, async () => await Navigation.PushAsync(new SettingsPage())));
            LoadExpenses();
        }

        private async void OpenSettings_Clicked(object? sender, EventArgs e)
        {
            await Navigation.PushAsync(new SettingsPage());
        }

        private async void OnDeleteSwipeItemInvoked(object? sender, EventArgs e)
        {
            if (sender is SwipeItem si && si.BindingContext is Models.Expense exp)
            {
                var ok = await DisplayAlert("Подтвердить", $"Удалить расход {exp.Amount:C}?", "Да", "Нет");
                if (!ok) return;
                await _expenseService.DeleteExpenseAsync(exp.Id);
                LoadExpenses();
            }
        }

        private async void LoadExpenses()
        {
            var items = await _expenseService.GetExpensesAsync();
            // populate existing list control if present
            var expensesList = this.FindByName<CollectionView>("ExpensesList");
            if (expensesList != null)
                expensesList.ItemsSource = items;

            // aggregate by category for donut chart
            var groups = items.GroupBy(e => string.IsNullOrWhiteSpace(e.Category) ? "Other" : e.Category)
                              .Select(g => new { Name = g.Key, Total = g.Sum(x => x.Amount) })
                              .OrderByDescending(x => x.Total)
                              .ToList();

            // prepare colors
            var palette = new[] { Color.FromRgb(249,199,79), Color.FromRgb(144,190,109), Color.FromRgb(249,65,68), Color.FromRgb(87,117,144), Color.FromRgb(243,114,44) };

            _donut.Segments.Clear();
            var legend = new List<LegendItem>();
            int i = 0;
            foreach (var g in groups)
            {
                var color = palette[i % palette.Length];
                _donut.Segments.Add(new DonutSegment { Value = (float)g.Total, Color = color });
                legend.Add(new LegendItem { Name = g.Name, Total = g.Total, Percentage = groups.Sum(x => x.Total) > 0 ? g.Total / groups.Sum(x => x.Total) : 0.0m, Color = color });
                i++;
            }

            var catList = this.FindByName<CollectionView>("CategoryList");
            if (catList != null)
                catList.ItemsSource = legend;

            var donutView = this.FindByName<GraphicsView>("DonutChartView");
            if (donutView != null)
                donutView.Invalidate();

            // set center label to total for month
            var totalSum = groups.Sum(x => x.Total);
            var centerLabel = this.FindByName<Label>("DonutCenterLabel");
            if (centerLabel != null)
                centerLabel.Text = totalSum > 0 ? totalSum.ToString("C") : DateTime.Now.ToString("MMMM yyyy", CultureInfo.CurrentCulture);
        } 

        private void DonutTapped(object? sender, EventArgs e)
        {
            // show total details
            var items = _expenseService.GetExpensesAsync().Result;
            var total = items.Sum(x => x.Amount);
            DisplayAlert("Итого", $"Всего: {total:C}", "OK");
        }

        private void OnLegendItemTapped(object? sender, EventArgs e)
        {
            if (sender is VisualElement ve && ve.BindingContext is LegendItem li)
            {
                DisplayAlert(li.Name, $"Сумма: {li.Total:C}\nПроцент: {li.Percentage:P1}", "OK");
            }
        }

        private class LegendItem
        {
            public string Name { get; set; } = string.Empty;
            public decimal Total { get; set; }
            public decimal Percentage { get; set; }
            public required Color Color { get; set; }
        }

        private void AddFab_Clicked(object? sender, EventArgs e)
        {
            var overlay = this.FindByName<Grid>("AddOverlay");
            if (overlay != null)
                overlay.IsVisible = true;
        }

        private void OnExpensePressed(object? sender, EventArgs e)
        {
            // sender is the Grid; get binding context Expense
            if (sender is VisualElement ve && ve.BindingContext is Expense exp)
            {
                // cancel existing if any
                if (_pressCts.TryGetValue(exp.Id, out var old))
                {
                    try { old.Cancel(); } catch { }
                }
                var cts = new System.Threading.CancellationTokenSource();
                _pressCts[exp.Id] = cts;
                // start delay
                _ = Task.Run(async () =>
                {
                    try
                    {
                        await Task.Delay(TimeSpan.FromSeconds(4), cts.Token);
                        // still pressed -> show confirmation on UI thread
                        await MainThread.InvokeOnMainThreadAsync(async () =>
                        {
                            var ok = await DisplayAlert("Подтвердить", $"Удалить расход {exp.Amount:C}?", "Да", "Нет");
                            if (ok)
                            {
                                await _expenseService.DeleteExpenseAsync(exp.Id);
                                LoadExpenses();
                            }
                        });
                    }
                    catch (OperationCanceledException) { }
                    finally
                    {
                        // cleanup
                        _pressCts.Remove(exp.Id);
                    }
                });
            }
        }

        private void OnExpenseReleased(object? sender, EventArgs e)
        {
            if (sender is VisualElement ve && ve.BindingContext is Expense exp)
            {
                if (_pressCts.TryGetValue(exp.Id, out var cts))
                {
                    try { cts.Cancel(); } catch { }
                    _pressCts.Remove(exp.Id);
                }
            }
        }

        private void CancelAdd_Clicked(object? sender, EventArgs e)
        {
            var overlay = this.FindByName<Grid>("AddOverlay");
            if (overlay != null)
                overlay.IsVisible = false;
        }

        private async void SaveAdd_Clicked(object? sender, EventArgs e)
        {
            // reuse existing AddExpense_Clicked logic by calling directly
            AddExpense_Clicked(sender, e);
            var overlay = this.FindByName<Grid>("AddOverlay");
            if (overlay != null)
                overlay.IsVisible = false;
            // refresh date label to current month
            if (_currentDateLabel != null)
                _currentDateLabel.Text = DateTime.Now.ToString("MMMM yyyy", CultureInfo.CurrentCulture);
        }

        private async void DeleteItem_Clicked(object sender, EventArgs e)
        {
            if (sender is Button btn && btn.BindingContext is Expense exp)
            {
                var ok = await DisplayAlert("Подтвердить", $"Удалить расход {exp.Amount:C}?", "Да", "Нет");
                if (!ok) return;
                await _expenseService.DeleteExpenseAsync(exp.Id);
                LoadExpenses();
            }
        }

        private async void AddExpense_Clicked(object? sender, EventArgs e)
        {
            if (decimal.TryParse(AmountEntry.Text, out var amount))
            {
                var exp = new Expense
                {
                    Amount = amount,
                    Category = CategoryEntry.Text,
                    Note = NoteEntry.Text,
                    Date = DateTime.Now
                };

                await _expenseService.AddExpenseAsync(exp);
                AmountEntry.Text = string.Empty;
                CategoryEntry.Text = string.Empty;
                NoteEntry.Text = string.Empty;

                LoadExpenses();
            }
            else
            {
                await DisplayAlert("Error", LocalizationResourceManager.Instance["ErrorInvalidAmount"], "OK");
            }
        }

        // counter UI removed for expense tracker
    }
}
