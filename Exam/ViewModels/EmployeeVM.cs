using Microsoft.EntityFrameworkCore.Metadata.Internal;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace Exam.ViewModels
{
    public class EmployeeVM
    {
        public int Id { get; set; }

        [StringLength(100)]
        public string? Name { get; set; }

        [StringLength(100)]
        public string? Designation { get; set; }

        [Column(TypeName = "decimal(18,2)")]
        public decimal? SalaryWithBonus { get; set; }

        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:yyyy-MM-dd}", ApplyFormatInEditMode = true)]
        public DateTime? JoinDate { get; set; }

    }
}
