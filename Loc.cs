using System.Globalization;
using System.Reflection;
using System.Resources;

namespace busines_treker
{
    // Static helper for XAML x:Static bindings to resource strings
    public static class Loc
    {
        private static readonly ResourceManager ResourceManager = new ResourceManager("busines_treker.Resources.Strings", Assembly.GetExecutingAssembly());

        public static string Title => ResourceManager.GetString("Title", CultureInfo.CurrentUICulture) ?? "Title";
        public static string AmountPlaceholder => ResourceManager.GetString("AmountPlaceholder", CultureInfo.CurrentUICulture) ?? "Amount";
        public static string CategoryPlaceholder => ResourceManager.GetString("CategoryPlaceholder", CultureInfo.CurrentUICulture) ?? "Category";
        public static string NotePlaceholder => ResourceManager.GetString("NotePlaceholder", CultureInfo.CurrentUICulture) ?? "Note";
        public static string AddButton => ResourceManager.GetString("AddButton", CultureInfo.CurrentUICulture) ?? "Add";
        public static string ErrorInvalidAmount => ResourceManager.GetString("ErrorInvalidAmount", CultureInfo.CurrentUICulture) ?? "Enter valid amount";
        public static string LanguageEnglish => ResourceManager.GetString("LanguageEnglish", CultureInfo.CurrentUICulture) ?? "English";
        public static string LanguageRussian => ResourceManager.GetString("LanguageRussian", CultureInfo.CurrentUICulture) ?? "Русский";
    }
}
