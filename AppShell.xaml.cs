namespace busines_treker
{
    public partial class AppShell : Shell
    {
        public Command GoToSettingsCommand { get; }

        public AppShell()
        {
            InitializeComponent();
            GoToSettingsCommand = new Command(async () =>
            {
                await Shell.Current.Navigation.PushAsync(new SettingsPage());
            });
            BindingContext = this;
        }
    }
}
