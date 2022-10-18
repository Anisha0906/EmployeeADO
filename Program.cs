using EmployeePayrollADO;
using System;

namespace EmployeePayRollADO
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Wel-Come to Employee payroll");

            EmployeeModel model = new EmployeeModel();
            EmployeeRepo repo = new EmployeeRepo();

            model.EmployeeName = "Bruce";
            model.PhoneNumber = 1234567890;
            model.Address = "Banglore";
            model.Department = "HR";
            model.Gender = 'M';
            model.BasicPay = 22000;
            model.Deduction = 1500;
            model.TaxablePay = 200;
            model.Tax = 300;
            model.NetPay = 2500;
            model.City = "Benglore";
            model.Country = "India";

            //repo.AddEmployee(model);
            repo.GetAllEmployee();
        }
    }
}
