USE employee_payroll_db; 

-- INNER JOIN 
SELECT 
 e.employee_name, 
 d.department_name, 
 e.job_role 
FROM employee e 
INNER JOIN departments d 
ON e.department_id = d.department_id; 

-- LEFT JOINS 
SELECT 
 e.employee_name, 
 p.basic_salary, 
 p.payment_date 
FROM employee p 
LEFT JOIN payroll p 
ON e.employee_id = p.employee_id; 

--  Department-wise payroll 
 SELECT 
  d.department_name, 
  SUM(p.basic_salary + p.allowance - p.deductions) AS total_salary FROM department d 
  JOIN employees e 
  ON d.department_id = department_id 
  JOIN payroll p 
  ON e.employee_id = p.employee_id 
  GROUP BY d.department_name; 
  