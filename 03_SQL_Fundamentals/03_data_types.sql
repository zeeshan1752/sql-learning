-- SQL Data Types
-- Platform: Microsoft SQL Server (T-SQL)
-- Database: sql_server_practice

USE sql_server_practice;

-- 1. Create a table to demonstrate SQL Server data types

CREATE TABLE data_types_demo
(
    -- Integer Data Types
    id INT,
    age TINYINT,
    total_students SMALLINT,
    population BIGINT,

    -- Decimal Data Types
    price DECIMAL(10, 2),
    percentage NUMERIC(5, 2),
    approximate_value FLOAT,
    measurement REAL,

    -- Character String Data Types
    gender CHAR(1),
    employee_name VARCHAR(100),

    -- Unicode String Data Types
    country NCHAR(50),
    address NVARCHAR(200),

    -- Date and Time Data Types
    birth_date DATE,
    login_time TIME,
    joining_date DATETIME,
    created_at DATETIME2,

    -- Boolean-like Data Type
    is_active BIT
);

-- 2. Insert sample records

INSERT INTO data_types_demo
(
    id,
    age,
    total_students,
    population,
    price,
    percentage,
    approximate_value,
    measurement,
    gender,
    employee_name,
    country,
    address,
    birth_date,
    login_time,
    joining_date,
    created_at,
    is_active
)
VALUES
(
    101,
    22,
    500,
    1000000,
    499.99,
    85.50,
    12345.6789,
    45.67,
    'M',
    'Rahul Sharma',
    N'India',
    N'Lucknow, Uttar Pradesh',
    '2004-05-15',
    '10:30:00',
    '2025-06-15 09:30:00',
    '2025-06-15 09:30:00',
    1
);

-- 3. Insert another record

INSERT INTO data_types_demo
(
    id,
    age,
    total_students,
    population,
    price,
    percentage,
    approximate_value,
    measurement,
    gender,
    employee_name,
    country,
    address,
    birth_date,
    login_time,
    joining_date,
    created_at,
    is_active
)
VALUES
(
    102,
    24,
    750,
    2000000,
    799.50,
    92.75,
    98765.4321,
    78.90,
    'F',
    'Priya Singh',
    N'India',
    N'New Delhi, India',
    '2002-08-20',
    '11:45:00',
    '2025-07-20 10:00:00',
    '2025-07-20 10:00:00',
    0
);

-- 4. Display all records

SELECT * FROM data_types_demo;