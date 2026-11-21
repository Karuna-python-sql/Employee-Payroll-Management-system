USE employee_payroll_db; 

-- Display all employees 
SELECT *FROM employees; 

-- Display departments 
SELECT *FROM departments; 

-- Display payroll records 
SELECT *FROM payroll; 

-- Count total employees 
SELECT COUNT(*) AS total_employees FROM employees; 

-- Check duplicate employee emails 
SELECT email, COUNT(*) FROM employees 
GROUP BY email 
HAVING COUNT(*) > 1; 

-- check missing employee details 
SELECT * FROM employees
WHERE employee_name IS NULL
OR email IS NULL;

-- check invaild salary values 
SELECT *FROM payroll 
WHERE basic_salary < 0
 OR allowances < 0 
 OR deductions < 0; 
 

