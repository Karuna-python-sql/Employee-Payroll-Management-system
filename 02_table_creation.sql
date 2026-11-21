USE employee_payroll_db; 

CREATE TABLE departments (
 department_id INT PRIMARY KEY AUTO_INCREMENT, 
 department_name VARCHAR(100) NOT NULL 
 
);

CREATE TABLE employees (
 employee_id INT PRIMARY KEY AUTO_INCREMENT, 
 employee_name VARCHAR(100) NOT NULL, 
 email VARCHAR(100) UNIQUE, 
 department_id INT, 
 job_role VARCHAR(100), 
 joining_date DATE, 
 FOREIGN KEY (department_id) 
  REFERENCES departments(department_id) 

);

CREATE TABLE payroll ( 
 payroll_id INT PRIMARY KEY AUTO_INCREMENT, 
 employee_id INT NOT NULL, 
 basic_salary DECIMAL(10,2), 
 allowances DECIMAL(10,2), 
 deductions DECIMAL(10,2), 
 payment_date DATE, 
 FOREIGN KEY (employee_db) 
  REFERENCES employees(employee_id) 
  
  );
  
  
  -- Verify table 
  SHOW TABLES; 
  DESC departments; 
  DESC employees;
  DESC Payroll;