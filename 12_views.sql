USE employee_payroll_db; 

CREATE VIEW employee_payroll_view AS 
SELECT 
 e.employee_id, 
 e.employee_name, 
 d.department_id, 
 e.job_role,  
 p.basic_salary, 
 p.allowances, 
 p.deductions, 
 p.payment_date, 
 p.ba3sic_salary + p.allowance - p.deductions AS net_salary FROM employees e 
 JOIN departments d 
 ON e.department_id = d.department_id 
 JOIN payroll p 
 ON e.employee_id = p.employee_id; 
 
 -- Display view 
 SELECT *FROM employee_payroll_view; 
 
 -- Department payroll report 
 SELECT departments_name, 
 SUM(net_salary) AS total_salary FROM employee_payroll_view 
 GROUP BY department_name; 
 
 
 
 
 