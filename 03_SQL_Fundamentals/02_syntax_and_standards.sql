-- SQL Syntax and Standards
-- Platform: Microsoft SQL Server (T-SQL)
-- Database: sql_server_practice

-- Select the database
USE sql_server_practice;

-- 1. SQL Statement Structure
-- A SQL statement consists of keywords, identifiers and values.

SELECT 'Learning SQL Syntax' AS Topic;

-- 2. SQL Keywords
-- SQL keywords are reserved words used to perform specific operations.
-- Example: SELECT, FROM, WHERE, INSERT, UPDATE, DELETE.

SELECT
    'SELECT' AS keyword_1,
    'FROM' AS keyword_2,
    'WHERE' AS keyword_3;

-- 3. SQL Identifiers
-- Identifiers are names given to database objects.
-- Examples: database names, table names and column names.

-- Example of identifiers:
-- database_name
-- table_name
-- column_name

-- 4. SQL Literals
-- Literals are fixed values written directly in SQL statements.

SELECT
    100 AS integer_literal,
    45.50 AS decimal_literal,
    'Hello SQL' AS string_literal;

-- 5. SQL Statement Terminator
-- A semicolon (;) marks the end of a SQL statement.

SELECT 'First Statement' AS message;
SELECT 'Second Statement' AS message;

-- 6. SQL Case Sensitivity
-- SQL keywords are generally written in uppercase for readability.
-- SQL keywords can also be written in lowercase.

SELECT 'Uppercase Keywords' AS example;
select 'Lowercase Keywords' as example;

-- 7. SQL Naming Convention
-- Use meaningful names for database objects.
-- Avoid spaces and special characters in identifiers where possible.

SELECT
    'student_name' AS recommended_column_name,
    'student_marks' AS another_column_name;