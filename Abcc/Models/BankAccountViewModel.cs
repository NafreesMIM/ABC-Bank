namespace Abcc.Models
{
    public class BankAccountViewModel
    {
        public int AccountNumber { get; set; }
        public string HolderName { get; set; }
        public string Type { get; set; }
        public decimal Balance { get; set; }
        public string TransactionHistory { get; set; }
        public decimal InterestRate { get; set; }
        public string AccountStatus { get; set; }
        public DateTime OpeningDate { get; set; }
        public DateTime? ClosureDate { get; set; }
        public string OwnershipDetails { get; set; }
    }

}
