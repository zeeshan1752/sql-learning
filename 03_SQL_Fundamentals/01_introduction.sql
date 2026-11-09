-- SQL Introduction
-- Platform: Microsoft SQL Server
-- Database: sql_server_practice

-- Select the database in which you want to work.
USE sql_server_practice;

-- 1. Basic SELECT Statement
-- SELECT is used to retrieve or display values.

SELECT 'Hello, SQL Server';

-- 2. Selecting Multiple Values
-- Display multiple values using a single SELECT statement.

SELECT
    100 AS first_number,
    200 AS second_number,
    'SQL Practice' AS subject;

-- 3. Column Aliases
-- AS assigns a temporary name to a column in the output.

SELECT
    'Zeeshan' AS student_name,
    'SQL Server' AS database_platform;

-- 4. Multiple SELECT Statements
-- Each SELECT statement can be executed independently.

SELECT 'First Statement' AS message;

SELECT 'Second Statement' AS message;