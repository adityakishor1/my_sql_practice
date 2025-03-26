-- Sample Table: Employee

CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Department VARCHAR(50),
    Salary DECIMAL(10,2)
);


-- insert data

INSERT INTO Employees (EmpID, Name, Age, Department, Salary)
VALUES 
(1, 'Alice', 30, 'HR', 50000.00),
(2, 'Bob', 25, 'IT', 60000.00),
(3, 'Charlie', 35, 'Finance', 70000.00);


-- Increase salary by 10% for employees in the IT department
UPDATE Employees 
SET Salary = Salary * 1.10 
WHERE Department = 'IT';

-- Delete employees who are older than 40
DELETE FROM Employees 
WHERE Age > 40;


-- Retrieve all employees from IT department
SELECT * FROM Employees 
WHERE Department = 'IT';

-- Get employees with salary greater than 60,000
SELECT Name, Salary 
FROM Employees 
WHERE Salary > 60000;


-- Find the average salary of each department
SELECT Department, AVG(Salary) AS AvgSalary 
FROM Employees 
GROUP BY Department;

-- Retrieve the highest-paid employee
SELECT * FROM Employees 
ORDER BY Salary DESC 
LIMIT 1;

