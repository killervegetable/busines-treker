using Microsoft.Extensions.Logging;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.EntityFrameworkCore;
using busines_treker.Data;
using busines_treker.Services;
using System.IO;
using Microsoft.Maui.Storage;
using Microsoft.EntityFrameworkCore;
using busines_treker.Data;
using busines_treker.Services;

namespace busines_treker
{
    public static class MauiProgram
    {
        public static IServiceProvider? Services { get; private set; }
        public static MauiApp CreateMauiApp()
        {
            var builder = MauiApp.CreateBuilder();
            builder
                .UseMauiApp<App>()
                .ConfigureFonts(fonts =>
                {
                    fonts.AddFont("OpenSans-Regular.ttf", "OpenSansRegular");
                    fonts.AddFont("OpenSans-Semibold.ttf", "OpenSansSemibold");
                });

#if DEBUG
			builder.Logging.AddDebug();
#endif

            // Register DbContext
            builder.Services.AddDbContext<AppDbContext>(options =>
                options.UseSqlite($"Filename={Path.Combine(FileSystem.AppDataDirectory, "expenses.db")}"));

            // Register services
            builder.Services.AddSingleton<IExpenseService, ExpenseService>();

            var app = builder.Build();
            Services = app.Services;

            // set default culture from device (optional)
            var culture = System.Globalization.CultureInfo.CurrentUICulture;
            Localization.LocalizationResourceManager.Instance.SetCulture(culture);

            return app;
        }
    }
}
