using System.Collections.Generic;
using busines_treker.Models;

namespace busines_treker.Services
{
    public interface IExpenseService
    {
        Task AddExpenseAsync(Expense expense);
        Task<List<Expense>> GetExpensesAsync();
        Task DeleteExpenseAsync(Guid id);
    }
}
