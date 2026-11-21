USE employee_payroll_db; 

SELECT 
 DATE_FORMAL(payment_date,'%Y-%m') AS payroll_month, 
 COUNT(*) AS total_payments, 
 SUM(basic_salary) AS total_basic_salary, 
 SUM(allownace) AS total_allowances, 
 SUM(deductions) AS total_deductions, 
 SUM(basic_salary + allowance - deductions) AS total_net_salary FROM payroll 
 GROUP BY DATE_FORMAT(payment_date,'%Y-%m')
 ORDER BY payroll_month; 
 
 