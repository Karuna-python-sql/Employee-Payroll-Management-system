USE employee_payroll_db; 

-- 1. Total employees 
SELECT COUNT(*) AS total_employees FROM employees; 

-- 2. Department wise employee count 
SELECT 
 d.department_name, 
 COUNT(e.employee_id) AS employee_count FROM departments d 
 LEFT JOIN employees e 
 ON d.department_id = e.department_id
 GROUP BY d.department_name; 
 
 -- 3       Hignest net salary 
 SELECT 
  e.employee_name,
  p.basic_salary + p.allowances - p.deductions AS net_salary FROM employee e 
  JOIN payroll p 
  ON e.employee_id = employee_id 
  ORDER BY net_salary DESC 
  LIMIT 1; 
  
  -- 4. Total monthly payroll expanse 
  SELECT 
   DATE_FORMAL(payment_date,'%Y-%m') AS month, 
   SUM(basic_salary + allowances - deductions) AS payroll_expense FROM payroll 
   GROUP BY month; 
   
   -- 5. Department with highest payroll expense 
   SELECT 
    d.department_name, 
    SUM(p.basic_salary + p.allowances - p.deductions) AS payroll_expense FROM department d 
    JOIN employee e 
    ON d.department_id = e.department_id 
    JOIN payroll p 
    ON e.employee_id = p.employee_id 
    GROUP BY d.department_name 
    ORDER BY payroll_expense DESC 
    LIMIT 1; 
    
    