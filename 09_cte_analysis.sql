USE employee_payroll_db; 

WITH salary_details AS (
 SELECT 
  employee_id, 
  basic_salary, 
  allowances, 
  deductions, 
  basic_salary + allowances - deductions AS net_salary FROM payroll 
)
SELECT *FROM salary_details 
WHERE net_salary > 30000; 

-- Department salary analysis 
WITH department_salary AS (
 SELECT 
  d.department_name, 
  SUM(P.basic_salary + p.allownaces - p.deductions) AS total_salary FROM departments d 
  JOIN payroll p 
  ON e.employee_id = p.employee_id 
  GROUP BY d.department_name 

)
SELECT *FROM department_salary 
ORDER BY total_salary DESC; 

