namespace Exam.Models
{
    public class Manager
    {
        public int ManagerId { get; set; }
        public string? ManagerName { get; set; }
        public virtual ICollection<Employee> Employees { get; set; } = new List<Employee>();
    }
}
