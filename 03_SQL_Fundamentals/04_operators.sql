-- SQL Operators
-- Platform: Microsoft SQL Server (T-SQL)
-- Database: sql_server_practice

USE sql_server_practice;

-- 1. Create a sample table

CREATE TABLE operators_demo
(
    employee_id INT,
    employee_name VARCHAR(100),
    age INT,
    salary DECIMAL(10, 2),
    department VARCHAR(50)
);

-- 2. Insert sample records

INSERT INTO operators_demo
VALUES
(101, 'Rahul', 25, 45000, 'IT'),
(102, 'Priya', 28, 55000, 'HR'),
(103, 'Aman', 22, 35000, 'IT'),
(104, 'Neha', 30, 65000, 'Finance'),
(105, 'Karan', 26, 50000, 'HR');

-- 3. Arithmetic Operators
-- Used to perform mathematical calculations.

SELECT
    salary,
    salary + 5000 AS increased_salary,
    salary - 5000 AS decreased_salary,
    salary * 2 AS double_salary,
    salary / 2 AS half_salary,
    salary % 10000 AS remainder
FROM operators_demo;

-- 4. Comparison Operators
-- Used to compare two values.

SELECT *
FROM operators_demo
WHERE salary = 45000;

SELECT *
FROM operators_demo
WHERE salary <> 45000;

SELECT *
FROM operators_demo
WHERE salary > 45000;

SELECT *
FROM operators_demo
WHERE salary < 45000;

SELECT *
FROM operators_demo
WHERE salary >= 45000;

SELECT *
FROM operators_demo
WHERE salary <= 45000;

-- 5. Logical Operators
-- Used to combine multiple conditions.

-- AND: Both conditions must be true.

SELECT *
FROM operators_demo
WHERE department = 'IT' AND salary > 30000;

-- OR: At least one condition must be true.

SELECT *
FROM operators_demo
WHERE department = 'IT' OR department = 'HR';

-- NOT: Reverses a condition.

SELECT *
FROM operators_demo
WHERE NOT department = 'IT';

-- 6. BETWEEN Operator
-- Checks whether a value falls within a specified range.

SELECT *
FROM operators_demo
WHERE salary BETWEEN 40000 AND 60000;

-- 7. IN Operator
-- Checks whether a value matches any value in a given list.

SELECT *
FROM operators_demo
WHERE department IN ('IT', 'Finance');

-- 8. LIKE Operator
-- Searches for a specified pattern in a string.

-- Names starting with 'R'
SELECT *
FROM operators_demo
WHERE employee_name LIKE 'R%';

-- Names ending with 'a'
SELECT *
FROM operators_demo
WHERE employee_name LIKE '%a';

-- Names containing 'a'
SELECT *
FROM operators_demo
WHERE employee_name LIKE '%a%';

-- 9. IS NULL Operator
-- Checks whether a column contains a NULL value.

SELECT *
FROM operators_demo
WHERE department IS NULL;

-- 10. Concatenation Operator
-- The + operator combines strings in SQL Server.

SELECT
    employee_name + ' works in ' + department AS employee_details
FROM operators_demo;