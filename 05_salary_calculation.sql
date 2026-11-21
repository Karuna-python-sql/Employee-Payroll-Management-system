-- salary calculation 
-- Net salary = basic salary + allowances - deductions 

USE employee_payroll_db; 

SELECT 
 payroll_id, 
 employee_id, 
 basic_salary, 
 allowances, 
 deductions, 
 (basic_salary + allowances) AS gross_salary, 
 (basic_salary + allowances - deductions) AS net_salary FROM payroll; 
 
 SELECT SUM(basic_salary) AS total_salary FROM payroll;
 SELECT SUM(allowances) AS total_allowances FROM payroll; 
 SELECT SUM(dedcutions) AS total_deductions FROM payroll; 
 SELECT SUM(basic_salary + allowances - deductions) AS total_net_salary FROM payroll; 
 
 
 