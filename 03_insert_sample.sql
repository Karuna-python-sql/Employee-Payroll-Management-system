USE employee_payroll_db; 

-- departments 
INSERT INTO departments VALUES (1,'IT');
INSERT INTO departments VALUES (2,'HR');
INSERT INTO departments VALUES (3,'Finanical');
INSERT INTO departments VALUES (4,'IT Developer');
INSERT INTO departments VALUES (5,'Operations');
INSERT INTO departments VALUES (6,'admin');
INSERT INTO departments VALUES (7,'Python developer');
INSERT INTO departments VALUES (8,'java DEveloper');
INSERT INTO departments VALUES (9,'IT Support');
INSERT INTO departments VALUES (10,'customers support executive');

-- employees 
INSERT INTO employees VALUES (1,'Arun kumar','piya@gmail.com',1,'Python Developer','2026-01-06'); 
INSERT INTO employees VALUES (2,'Priya sharma','priya@gmail.com',2,'HR Executive','2026-09-08');
INSERT INTO employees VALUES (3,'Rahul Raj','rahul@gamil.com',3,'Accountant','2026-03-02');
INSERT INTO employees VALUES (4,'Divya S','divya@gmail.com',1,'software Developer','2026-01-12'); 
INSERT INTO employees VALUES (5,'Karthik M','karthi2gmail.com',4,'sales_analysis','2026-09-10'); 
INSERT INTO employees VALUES (6,'Sneha','snega@gmail.com',5,'Operations Executive','2026-08-06');
INSERT INTO employees VALUES (7,'Vijay','vijay@gmail.com',1,'SQL Developer','2026-09-02');
INSERT INTO employees VALUES (8,'Meena','Meena@gmail.com',3,'Finance Executive','2026-08-20');
INSERT INTO employees VALUES (9,'pooja','pooja@gmail.com',4,'IT Could','2026-08-03'); 

-- Payroll 
INSERT INTO payroll VALUES (1,1,300000,5000,2000,'2026-01-03'); 
INSERT INTO payroll VALUES (2,2,250000,4000,1500,'2026-02-05');
INSERT INTO payroll VALUES (3,3,350000,6000,2500,'2026-09-08');
INSERT INTO payroll VALUES (4,4,340000,3600,1500,'2026-09-12');
INSERT INTO payroll VALUES (5,5,22000,3000,1000,'2026-09-10');
INSERT INTO payroll VALUES (6,5,24000,3500,1800,'2026-09-05');
INSERT INTO payroll VALUES (7,7,28000,4500,1800,'2026-09-07');
INSERT INTO payroll VALUES (8,8,30000,2500,1200,'2026-09-01');
INSERT INTO payroll VALUES (9,9,45000,4500,1400,'2026-09-12');
INSERT INTO payroll VALUES (10,10,50000,5400,1800,'2026-08-12');




-- Verify data 
SELECT *FROM departments; 
SELECT *FROM employees; 
SELECT *FROM payroll;
