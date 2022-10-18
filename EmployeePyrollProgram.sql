drop table Employee_Payroll

Create table Employee_Payroll
(
EmployeeId int primary key identity,
EmployeeName varchar (255),
PhoneNumber bigint,
Address varchar(200),
Department varchar(200),
Gender char(1),
BasicPay float,
Deduction float,
TaxablePay float,
Tax float,
NetPay float,
City varchar(100),
Country varchar(100),
)

create procedure SpAddEmployeeDetails
(
@EmployeeName varchar(255),
@PhoneNumber bigint,
@Address varchar(200),
@Department varchar(100),
@Gender char(1),
@BasicPay float,
@Deduction float,
@TaxablePay float,
@Tax float,
@NetPay float,
@City varchar(100),
@Country varchar(100),
)

as
begin
@NetPay float,
insert into Employee_Payroll(EmployeeName,PhoneNumber,Address,Department,Gender,BasicPay,Deduction,TaxablePay,Tax,NetPay,City,Country)
values(@EmployeeName,@PhoneNumber,@Address,@Department,@Gender,@BasicPay,@Deduction,@TaxablePay,@Tax,@NetPay,@City,@Country)
end

select * from Employee_Payroll