-- SQL Constraints
-- Platform: Microsoft SQL Server (T-SQL)
-- Database: sql_server_practice

USE sql_server_practice;

-- 1. Create Departments Table
-- PRIMARY KEY uniquely identifies each department.
-- NOT NULL prevents department_name from storing NULL values.

CREATE TABLE departments_demo
(
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL
);

-- 2. Insert Department Records

INSERT INTO departments_demo
VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance');

-- 3. Create Employees Table
-- Demonstrating different SQL constraints.

CREATE TABLE employees_constraints_demo
(
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE,
    age INT CHECK (age >= 18),
    salary DECIMAL(10, 2) DEFAULT 25000,
    department_id INT,

    -- FOREIGN KEY establishes a relationship
    -- with the departments_demo table.

    CONSTRAINT fk_employee_department
    FOREIGN KEY (department_id)
    REFERENCES departments_demo(department_id)
);

-- 4. Insert Valid Employee Records

INSERT INTO employees_constraints_demo
(
    employee_id,
    employee_name,
    email,
    age,
    salary,
    department_id
)
VALUES
(101, 'Rahul Sharma', 'rahul@example.com', 25, 45000, 1),
(102, 'Priya Singh', 'priya@example.com', 28, 55000, 2),
(103, 'Aman Verma', 'aman@example.com', 22, 35000, 1);

-- 5. Demonstrate DEFAULT Constraint
-- When salary is omitted, its default value is inserted.

INSERT INTO employees_constraints_demo
(
    employee_id,
    employee_name,
    email,
    age,
    department_id
)
VALUES
(104, 'Neha Gupta', 'neha@example.com', 26, 3);

-- 6. Display Employee Records

SELECT * FROM employees_constraints_demo;

-- 7. Display Department Records

SELECT * FROM departments_demo;