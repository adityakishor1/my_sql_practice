CREATE DATABASE EmployeeDB;
USE EmployeeDB;


CREATE TABLE Employees (
    EmployeeID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2)
);

INSERT INTO Employees (FirstName, LastName, Department, Salary)
VALUES 
    ('John', 'Doe', 'IT', 60000.00),
    ('Jane', 'Smith', 'HR', 55000.00),
    ('Emily', 'Johnson', 'Finance', 75000.00);
    

-- Retrieve all employees
SELECT * FROM Employees;

-- Retrieve employees from the IT department
SELECT * FROM Employees WHERE Department = 'IT';


-- Update salary for an employee
UPDATE Employees
SET Salary = 65000.00
WHERE EmployeeID = 1;

-- Delete an employee from the table
DELETE FROM Employees
WHERE EmployeeID = 2;

-- Count the number of employees
SELECT COUNT(*) AS TotalEmployees FROM Employees;

-- Find the average salary
SELECT AVG(Salary) AS AverageSalary FROM Employees;

-- List employees sorted by salary in descending order
SELECT * FROM Employees
ORDER BY Salary DESC;