using System;
using System.ComponentModel;
using System.Globalization;
using System.Reflection;
using System.Resources;

namespace busines_treker.Localization
{
    public class LocalizationResourceManager : INotifyPropertyChanged
    {
        public static LocalizationResourceManager Instance { get; } = new LocalizationResourceManager();

        private readonly ResourceManager _resourceManager;

        private LocalizationResourceManager()
        {
            _resourceManager = new ResourceManager("busines_treker.Resources.Strings", Assembly.GetExecutingAssembly());
        }

        public string this[string text]
        {
            get
            {
                try
                {
                    return _resourceManager.GetString(text, CultureInfo.CurrentUICulture) ?? text;
                }
                catch
                {
                    return text;
                }
            }
        }

        public void SetCulture(CultureInfo culture)
        {
            if (culture == null) return;
            CultureInfo.CurrentUICulture = culture;
            CultureInfo.DefaultThreadCurrentUICulture = culture;
            OnPropertyChanged(string.Empty);
        }

        public event PropertyChangedEventHandler? PropertyChanged;

        protected void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}
