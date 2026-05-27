CREATE DATABASE EmployeeDB;

USE EmployeeDB;

CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    department VARCHAR(50),
    salary INT,
    city VARCHAR(50)
);

INSERT INTO Employees VALUES
(1, 'Rahul', 'IT', 50000, 'Mumbai'),
(2, 'Sneha', 'HR', 40000, 'Pune'),
(3, 'Aman', 'Finance', 60000, 'Delhi'),
(4, 'Priya', 'IT', 70000, 'Mumbai'),
(5, 'Rohit', 'HR', 45000, 'Pune');

------------------------------------------------------------

-- 1. Show all employee records
SELECT *
FROM Employees;

------------------------------------------------------------

-- 2. Find highest salary among employees
SELECT MAX(salary) AS highest_salary
FROM Employees;

------------------------------------------------------------

-- 3. Find average salary of employees
SELECT AVG(salary) AS avg_salary
FROM Employees;

------------------------------------------------------------

-- 4. Find minimum salary in the company
SELECT MIN(salary) AS minimum_salary
FROM Employees;

------------------------------------------------------------

-- 5. Find total salary paid by company
SELECT SUM(salary) AS total_salary
FROM Employees;

------------------------------------------------------------

-- 6. Find total number of employees
SELECT COUNT(*) AS total_employees
FROM Employees;

------------------------------------------------------------

-- 7. Find department-wise average salary
SELECT department,
AVG(salary) AS avg_department_salary
FROM Employees
GROUP BY department;

------------------------------------------------------------

-- 8. Find total employees in each department
SELECT department,
COUNT(*) AS total_employees
FROM Employees
GROUP BY department;

------------------------------------------------------------

-- 9. Show employees from Mumbai
SELECT *
FROM Employees
WHERE city = 'Mumbai';

------------------------------------------------------------

-- 10. Show employees from Pune
SELECT *
FROM Employees
WHERE city = 'Pune';

------------------------------------------------------------

-- 11. Find employees working in IT department
SELECT *
FROM Employees
WHERE department = 'IT';

------------------------------------------------------------

-- 12. Find employees working in HR department
SELECT *
FROM Employees
WHERE department = 'HR';

------------------------------------------------------------

-- 13. Find employees earning more than 50000
SELECT *
FROM Employees
WHERE salary > 50000;

------------------------------------------------------------

-- 14. Find employees earning between 40000 and 60000
SELECT *
FROM Employees
WHERE salary BETWEEN 40000 AND 60000;

------------------------------------------------------------

-- 15. Find second highest salary
SELECT MAX(salary) AS second_highest_salary
FROM Employees
WHERE salary <
(
SELECT MAX(salary)
FROM Employees
);

------------------------------------------------------------

-- 16. Find employee with highest salary
SELECT *
FROM Employees
ORDER BY salary DESC
LIMIT 1;

------------------------------------------------------------

-- 17. Find city-wise employee count
SELECT city,
COUNT(*) AS total_employees
FROM Employees
GROUP BY city;

------------------------------------------------------------

-- 18. Find department with highest average salary
SELECT department,
AVG(salary) AS avg_salary
FROM Employees
GROUP BY department
ORDER BY avg_salary DESC
LIMIT 1;

------------------------------------------------------------

-- 19. Show employees whose name starts with 'R'
SELECT *
FROM Employees
WHERE emp_name LIKE 'R%';

------------------------------------------------------------

-- 20. Display employees sorted by highest salary first
SELECT *
FROM Employees
ORDER BY salary DESC;