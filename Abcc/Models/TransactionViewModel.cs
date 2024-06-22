namespace Abcc.Models
{
    public class TransactionViewModel
    {
        public int TransactionId { get; set; }
        public decimal Amount { get; set; }
        public int DepositorAccount { get; set; }
        public int WithdrawalAccount { get; set; }
        public string Currency { get; set; }
        public string TransactionStatus { get; set; }
    }

}
