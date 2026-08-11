create database employee;

drop table employee;
create table employee(EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    Age INT,
    Department VARCHAR(50)
);
INSERT INTO employee (EmpID, EmpName, Age, Department)
VALUES
(101, 'Roopa', 22, 'development'),
(102, 'Ravi', 21, 'tester'),
(103, 'Priya', 23, 'programmer');
INSERT INTO employee (EmpID, EmpName, Age, Department)
VALUES
(104, 'Roopa', 24, 'development'),
(105, 'Ravi', 25, 'tester'),
(106, 'Priya', 26, 'programmer');
select * from employee;
CREATE VIEW Employee_view AS
SELECT EmpID, Department
FROM employee;
select * from Employee_view;
CREATE VIEW Department_View AS
SELECT EmpID, Department
FROM employee;
SELECT *
FROM Department_View
WHERE Department = 'development';
ALTER TABLE employee
ADD Salary INT;
select * from employee;
UPDATE employee
SET Salary = 95000
WHERE EmpID = 101;
UPDATE employee
SET Salary =90000
WHERE EmpID = 102;
UPDATE employee
SET salary = 85000
WHERE EmpID =103;
UPDATE employee
SET Salary = 85000
WHERE EmpID =104;
UPDATE employee
SET Salary = 95000
WHERE EmpID =105;
UPDATE employee
SET Salary = 82000
WHERE EmpID =106;
select * from employee;
SELECT *
FROM employee
WHERE salary >= 90000;