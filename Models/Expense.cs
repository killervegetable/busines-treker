using System;

namespace busines_treker.Models
{
    public class Expense
    {
        public Guid Id { get; set; } = Guid.NewGuid();
        public DateTime Date { get; set; } = DateTime.Now;
        public decimal Amount { get; set; }
        public string? Category { get; set; }
        public string? Note { get; set; }
    }
}
