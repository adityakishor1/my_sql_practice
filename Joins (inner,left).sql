CREATE DATABASE CompanyDB;
USE CompanyDB;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    department_id INT,
    salary DECIMAL(10,2)
);

create table Department(
department_id int primary key,
department_name varchar(50)
);

insert into Department(department_id, department_name) values
(1, "HR"),
(2, "IT"),
(3, "Finance"),
(4, "Marketing");


INSERT INTO Employees (name, department_id, salary) VALUES
('Alice', 1, 60000.00),
('Bob', 2, 75000.00),
('Charlie', 2, 80000.00),
('David', 3, 65000.00),
('Eve', 4, 70000.00),
('Frank', NULL, 50000.00); -- No department assigned

-- Inner joins

SELECT e.employee_id, e.name, e.salary, d.department_name
FROM Employees e
INNER JOIN Department d ON e.department_id = d.department_id;

-- left joins

SELECT e.employee_id, e.name, d.department_name
FROM employees e
LEFT JOIN department d ON e.department_id = d.department_id;
