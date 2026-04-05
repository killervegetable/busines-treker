using System;
using System.Collections.Generic;
using Microsoft.Maui.Controls;
using System.Globalization;
using Microsoft.Maui.Storage;
using busines_treker.Localization;

namespace busines_treker
{
    public partial class SettingsPage : ContentPage
    {
        public SettingsPage()
        {
            InitializeComponent();
            // populate languages
            var langs = new List<CultureInfo> { new CultureInfo("en"), new CultureInfo("ru") };
            LanguagePicker.ItemsSource = langs;
            LanguagePicker.ItemDisplayBinding = new Binding("NativeName");

            // populate currencies (symbol and culture code)
            var currencies = new List<CurrencyItem>
            {
                new CurrencyItem("USD","$"), new CurrencyItem("EUR","€"), new CurrencyItem("RUB","₽"), new CurrencyItem("UAH","₴")
            };
            CurrencyPicker.ItemsSource = currencies;
            CurrencyPicker.ItemDisplayBinding = new Binding("Symbol");

            // load saved
            var savedLang = Preferences.Get("lang", CultureInfo.CurrentUICulture.Name);
            var sel = langs.FindIndex(c => c.Name == savedLang);
            if (sel >= 0) LanguagePicker.SelectedIndex = sel;

            var savedCur = Preferences.Get("currency", "USD");
            var curSel = currencies.FindIndex(c => c.Code == savedCur);
            if (curSel >= 0) CurrencyPicker.SelectedIndex = curSel;
        }

        private class CurrencyItem
        {
            public string Code { get; }
            public string Symbol { get; }
            public CurrencyItem(string code, string symbol) { Code = code; Symbol = symbol; }
        }

        private void SaveSettings_Clicked(object sender, EventArgs e)
        {
            if (LanguagePicker.SelectedItem is CultureInfo ci)
            {
                LocalizationResourceManager.Instance.SetCulture(ci);
                Preferences.Set("lang", ci.Name);
            }

            if (CurrencyPicker.SelectedItem is ValueTuple<string, string> vt)
            {
                var code = vt.Item1;
                Preferences.Set("currency", code);
                // apply currency symbol globally
                var symbol = vt.Item2;
                var culture = (CultureInfo)CultureInfo.CurrentCulture.Clone();
                culture.NumberFormat = (NumberFormatInfo)CultureInfo.CurrentCulture.NumberFormat.Clone();
                culture.NumberFormat.CurrencySymbol = symbol;
                CultureInfo.CurrentCulture = culture;
                CultureInfo.DefaultThreadCurrentCulture = culture;
            }

            Application.Current.MainPage.Navigation.PopAsync();
        }
    }
}
