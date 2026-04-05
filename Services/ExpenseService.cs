using busines_treker.Data;
using busines_treker.Models;
using Microsoft.EntityFrameworkCore;

namespace busines_treker.Services
{
    public class ExpenseService : IExpenseService
    {
        private readonly AppDbContext _context;

        public ExpenseService(AppDbContext context)
        {
            _context = context;
        }

        public async Task AddExpenseAsync(Expense expense)
        {
            _context.Expenses.Add(expense);
            await _context.SaveChangesAsync();
        }

        public async Task<List<Expense>> GetExpensesAsync()
        {
            return await _context.Expenses.OrderByDescending(e => e.Date).ToListAsync();
        }

        public async Task DeleteExpenseAsync(Guid id)
        {
            var e = await _context.Expenses.FindAsync(id);
            if (e != null)
            {
                _context.Expenses.Remove(e);
                await _context.SaveChangesAsync();
            }
        }
    }
}
