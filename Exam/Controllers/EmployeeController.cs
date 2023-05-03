using Exam.Models;
using Exam.ViewModels;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using NuGet.Packaging;

namespace Exam.Controllers
{
    public class EmployeeController : Controller
    { 

        private readonly EmployeeDbContext db;
        public EmployeeController(EmployeeDbContext db)
        {
            this.db = db;
        }

        public IActionResult Index()
        {
            List<Employee> employees = db.Employee.ToList();
            return View(employees);
        }

        public async Task<IActionResult> SearchEmployee(int employeeId)
        {
            List<Employee> empList = new List<Employee>();

            //finding employee with employeeId
            Employee? employee = await db.Employee.Include(x=>x.Manager).FirstOrDefaultAsync(x => x.Id == employeeId); 

            //finding managerId of that employee
            int? empManagerId = employee.ManagerId;

            //checking if he is root manager
            bool isTheRootManager = isRootManager(employee.ManagerId);

            //return employee list under manager
            if (isTheRootManager)
            {
                string? rootManagerName = employee.Name;
                Manager? rootManager = await db.Manager.FirstOrDefaultAsync(x=>x.ManagerName == rootManagerName);
                empList = empUnderManager(rootManager.ManagerId);
            }
            else
            {
                empList = empUnderManager(empManagerId);
            }


            List<EmployeeVM> empListVM = new List<EmployeeVM>();

            foreach (Employee emp in empList)
            {
                EmployeeVM vm = new EmployeeVM
                {
                    Id = emp.Id,
                    Name = emp.Name,
                    Designation = emp.Designation,
                    JoinDate = emp.JoinDate,
                    SalaryWithBonus = CountSalaryWithBonus(emp)
                };
                empListVM.Add(vm);
            }

            return View(empListVM);
        }



        private bool isRootManager(int? managerId)
        {
            if(managerId == null)
            {
                return true;
            }
            else
            {
                return false;
            }
        }



        private List<Employee> empUnderManager(int? managerId)
        {
            List<Employee> emplistUnderManager = new List<Employee>();
            emplistUnderManager = db.Employee.Where(x=>x.ManagerId == managerId).ToList();
            return emplistUnderManager;
        }



        private decimal? CountSalaryWithBonus(Employee? employee)
        {
            decimal? mainSalary = employee.Salary;
            decimal? salaryWithBonus = 0;

            //find manager of employee
            Manager? manager = db.Manager.Find(employee.ManagerId) ;

            //is he root manager
            bool isTheRootManager = isRootManager(manager.ManagerId);

            //find manager as employee
            Employee? empIdentityOfManager =  db.Employee.FirstOrDefault(x=>x.Name == manager.ManagerName);

            //find manager's total working years
            int managerWorkingYears = DateTime.Today.Year - empIdentityOfManager.JoinDate.Value.Year;

            //find employee's total working years
            int empWorkingYears = DateTime.Today.Year - employee.JoinDate.Value.Year;

            if (isTheRootManager && managerWorkingYears >= 4 && DateTime.IsLeapYear(DateTime.Today.Year) && employee.IsBonusAdded == true)
            {
                salaryWithBonus = mainSalary + 10000;

                if(employee.JoinDate < empIdentityOfManager.JoinDate)
                {
                    salaryWithBonus += 2000;
                }
            }
            else if(isTheRootManager && managerWorkingYears >= 4 && !DateTime.IsLeapYear(DateTime.Today.Year) && employee.IsBonusAdded == true)
            {
                salaryWithBonus = mainSalary + 8000;

                if (employee.JoinDate >= empIdentityOfManager.JoinDate)
                {
                    salaryWithBonus += 1000;
                }
            }
            else if(isTheRootManager && managerWorkingYears < 4 && DateTime.IsLeapYear(DateTime.Today.Year) && employee.IsBonusAdded == true)
            {
                salaryWithBonus = mainSalary + 5000;

                if (employee.JoinDate < empIdentityOfManager.JoinDate)
                {
                    salaryWithBonus += 1000;
                }
            }
            else if (isTheRootManager && managerWorkingYears < 4 && !DateTime.IsLeapYear(DateTime.Today.Year) && employee.IsBonusAdded == true)
            {
                salaryWithBonus = mainSalary + 3000;

                if (employee.JoinDate >= empIdentityOfManager.JoinDate)
                {
                    salaryWithBonus += 500;
                }
            }

            return salaryWithBonus;
        }

    }
}
