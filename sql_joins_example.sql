-- Create Employees table
CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(50),
    DeptID INT
);

-- Create Departments table
CREATE TABLE Departments (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(50)
);

-- Insert data into Employees table
INSERT INTO Employees (EmpID, Name, DeptID) VALUES
(1, 'Alice', 101),
(2, 'Bob', 102),
(3, 'Charlie', 103),
(4, 'David', NULL);

-- Insert data into Departments table
INSERT INTO Departments (DeptID, DeptName) VALUES
(101, 'HR'),
(102, 'Finance'),
(103, 'IT'),
(104, 'Marketing');

-- INNER JOIN example
SELECT Employees.Name AS EmployeeName, Departments.DeptName AS DepartmentName
FROM Employees
INNER JOIN Departments ON Employees.DeptID = Departments.DeptID;

-- LEFT JOIN example
SELECT Employees.Name AS EmployeeName, Departments.DeptName AS DepartmentName
FROM Employees
LEFT JOIN Departments ON Employees.DeptID = Departments.DeptID;

-- RIGHT JOIN example (Simulated)
SELECT Employees.Name AS EmployeeName, Departments.DeptName AS DepartmentName
FROM Employees
LEFT JOIN Departments ON Employees.DeptID = Departments.DeptID
UNION ALL
SELECT NULL AS EmployeeName, DeptName AS DepartmentName
FROM Departments
WHERE DeptID NOT IN (SELECT DeptID FROM Employees);

-- FULL OUTER JOIN example (Simulated)
SELECT Employees.Name AS EmployeeName, Departments.DeptName AS DepartmentName
FROM Employees
LEFT JOIN Departments ON Employees.DeptID = Departments.DeptID
UNION
SELECT Employees.Name AS EmployeeName, Departments.DeptName AS DepartmentName
FROM Employees
RIGHT JOIN Departments ON Employees.DeptID = Departments.DeptID;
