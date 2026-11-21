USE employee_payroll_db; 

-- Employee earning above average basic salary 
SELECT *FROM employees 
WHERE employee_id IN (
 SELECT employee_id 
FROM payroll 
WHERE basic_salary > (
 SELECT AVG(basic_salary) FROM payroll
 
 )
);

-- Employees with highest basic_salary 
SELECT * FROM employees 
WHERE employee_id IN (
 SELECT employee_id 
 FROM payroll 
 WHERE basic_salary = (
  SELECT MAX(basic_salary) FROM payroll
  
 )

);

-- Payroll records above average net salary 
SELECT *
FROM (
 SELECT *, basic_salary + allowances - deductions AS net_salary FROM payroll) AS salary_date
 WHERE net_salary > (
  SELECT AVG(basic_salary + allowances - deductions) FROM payroll
 
 );
