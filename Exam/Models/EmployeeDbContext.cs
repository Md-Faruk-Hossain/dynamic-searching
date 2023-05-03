using Microsoft.EntityFrameworkCore;
using System.Runtime.CompilerServices;

namespace Exam.Models
{
    public class EmployeeDbContext:DbContext
    {
        public EmployeeDbContext(DbContextOptions<EmployeeDbContext> options):base(options)
        {
            
        }
        public DbSet<Employee> Employee { get; set; } = null!;
        public DbSet<Manager> Manager { get; set; } = null!;
    }
}
