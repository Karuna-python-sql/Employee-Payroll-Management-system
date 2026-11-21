USE employee_payroll_db; 

-- Rank employees by basic_salary 
SELECT 
 employee_id, 
 basic_salary, 
 RANK() OVER(
   ORDER BY basic_salary DESC
   ) AS salary_rank 
 FROM payroll 
 WHERE payment_date = '2026-09-08';
 
 -- Dense rank 
 SELECT 
  employee_id, 
  basic_salary, 
  DENSE_RANK() OVER (
   ORDER BY basic_salary DESC 
  ) AS salary_rank FROM payroll 
  WHERE payment_date = '2026-09-10';
  
  -- Row number 
  SELECT 
   employee_id, 
   payment_date, 
   basic_salary, 
   ROW_NUMBER() OVER(
    PARTITION BY payment_date 
    ORDER BY basic_salary DESC 
   ) AS row_num FROM payroll; 
   
   
-- Running payroll total 
SELECT 
 payment_date, 
 employee_id, 
 basic_salary + allowance - deductions AS net_salary, 
 SUM(basic_salary + allowances - deductions) 
  OVER (
   ORDER BY payment_date,payroll_id) AS running_total  FROM payroll;  
   
   

 