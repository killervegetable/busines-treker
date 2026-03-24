using System;
using System.Globalization;
using busines_treker.Models;
using busines_treker.Services;
using Microsoft.Extensions.DependencyInjection;
using busines_treker.Localization;

namespace busines_treker
{
    public partial class MainPage : ContentPage
    {
        private readonly IExpenseService _expenseService;

        public MainPage()
        {
            InitializeComponent();
            _expenseService = MauiProgram.Services?.GetService<IExpenseService>() ?? throw new InvalidOperationException("ExpenseService not registered");
            // set localization binding context
            BindingContext = LocalizationResourceManager.Instance;
            LoadExpenses();
        }

        private async void LoadExpenses()
        {
            var items = await _expenseService.GetExpensesAsync();
            ExpensesList.ItemsSource = items;
        }

        private async void AddExpense_Clicked(object sender, EventArgs e)
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
