USE employee_payroll_db; 

-- Employee salary details 
SELECT 
 e.employee_name, 
 p.basic_salary, 
 p.allowance, 
 p.deductions,
 p.payments_date, 
 (p.basic_salary + p.allowances - p.dedeuctions) AS net_salary FROM employees e 
 JOIN payroll p 
 ON e.employee_id = p.employee_id; 
 
 -- Hignest paid employees 
SELECT 
   e.employee_name, 
   p.basic_salary + p.allowances - p.deductions AS net-salary FROM employees e
   JOIN payroll p 
   ON e.employee_id = p.employee_id 
   ORDER BY net_salary DESC 
   LIMIT 1;
   
   -- Payroll by paymenst date 
   SELECT 
    payment_date, 
    SUM(basic_salary + allowances - deductions) AS total_payroll FROM payroll 
    GROUP BY payment_date; 
    
    
    
    
 