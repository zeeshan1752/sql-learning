-- =============================================
-- Database Objects: Tables
-- Platform: Microsoft SQL Server
-- Database: sql_server_practice
-- =============================================


-- Select your existing practice database.
USE sql_server_practice;
GO


-- =============================================
-- TABLE CREATION
-- =============================================

-- Q1. Create a DEPT table.
CREATE TABLE DEPT
(
    DEPTNO INT,
    DNAME VARCHAR(30),
    LOC VARCHAR(30)
);


-- Q2. Create an EMPLOYEE table.
CREATE TABLE EMPLOYEE
(
    EMPNO INT,
    ENAME VARCHAR(50),
    JOB VARCHAR(30),
    SAL DECIMAL(10,2),
    DEPTNO INT
);


-- Q3. Create a STUDENT table.
CREATE TABLE STUDENT
(
    STUDENT_ID INT,
    STUDENT_NAME VARCHAR(50),
    COURSE VARCHAR(50)
);


-- =============================================
-- DISPLAY TABLES
-- =============================================

-- Q4. Display all tables in the current database.
SELECT *
FROM sys.tables;


-- Q5. Display only table names.
SELECT
    name
FROM sys.tables;


-- =============================================
-- ADD COLUMNS
-- =============================================

-- Q6. Add EMAIL column to EMPLOYEE.
ALTER TABLE EMPLOYEE
ADD EMAIL VARCHAR(100);


-- Q7. Add JOINING_DATE column to EMPLOYEE.
ALTER TABLE EMPLOYEE
ADD JOINING_DATE DATE;


-- Q8. Add PHONE column to EMPLOYEE.
ALTER TABLE EMPLOYEE
ADD PHONE VARCHAR(15);


-- Q9. Add ADDRESS column to EMPLOYEE.
ALTER TABLE EMPLOYEE
ADD ADDRESS VARCHAR(100);


-- =============================================
-- MODIFY COLUMNS
-- =============================================

-- Q10. Modify the size of ENAME column.
ALTER TABLE EMPLOYEE
ALTER COLUMN ENAME VARCHAR(100);


-- Q11. Modify the size of EMAIL column.
ALTER TABLE EMPLOYEE
ALTER COLUMN EMAIL VARCHAR(150);


-- =============================================
-- DROP COLUMNS
-- =============================================

-- Q12. Drop PHONE column from EMPLOYEE.
ALTER TABLE EMPLOYEE
DROP COLUMN PHONE;


-- Q13. Drop ADDRESS column from EMPLOYEE.
ALTER TABLE EMPLOYEE
DROP COLUMN ADDRESS;


-- =============================================
-- INSERT RECORDS
-- =============================================

-- Q14. Insert records into DEPT.
INSERT INTO DEPT
VALUES
(10, 'ACCOUNTING', 'NEW YORK'),
(20, 'RESEARCH', 'DALLAS'),
(30, 'SALES', 'CHICAGO'),
(40, 'OPERATIONS', 'BOSTON');


-- Q15. Insert records into EMPLOYEE.
INSERT INTO EMPLOYEE
(EMPNO, ENAME, JOB, SAL, DEPTNO, EMAIL, JOINING_DATE)
VALUES
(101, 'AMAN', 'MANAGER', 5000, 10, 'aman@gmail.com', '20200115'),
(102, 'RAHUL', 'ANALYST', 4000, 20, 'rahul@gmail.com', '20210220'),
(103, 'PRIYA', 'DEVELOPER', 3500, 20, 'priya@gmail.com', '20220310'),
(104, 'NEHA', 'HR', 3000, 30, 'neha@gmail.com', '20230405'),
(105, 'ARJUN', 'TESTER', 2500, 40, 'arjun@gmail.com', '20240512');


-- Q16. Insert records into STUDENT.
INSERT INTO STUDENT
VALUES
(1, 'ROHIT', 'DATA SCIENCE'),
(2, 'SNEHA', 'COMPUTER SCIENCE'),
(3, 'KARAN', 'ARTIFICIAL INTELLIGENCE');


-- =============================================
-- DISPLAY TABLE RECORDS AND STRUCTURE
-- =============================================

-- Q17. Display all records from EMPLOYEE.
SELECT *
FROM EMPLOYEE;


-- Q18. Display the structure of EMPLOYEE.
EXEC sp_help 'dbo.EMPLOYEE';


-- Q19. Display column information of EMPLOYEE.
EXEC sp_columns 'EMPLOYEE';


-- Q20. Display indexes and other information of EMPLOYEE.
EXEC sp_helpindex 'EMPLOYEE';


-- =============================================
-- RENAME COLUMNS AND TABLES
-- =============================================

-- Q21. Rename the EMAIL column to EMAIL_ADDRESS.
EXEC sp_rename
    'dbo.EMPLOYEE.EMAIL',
    'EMAIL_ADDRESS',
    'COLUMN';


-- Q22. Verify the renamed column.
SELECT *
FROM EMPLOYEE;


-- Q23. Rename the STUDENT table to STUDENT_DETAILS.
EXEC sp_rename
    'dbo.STUDENT',
    'STUDENT_DETAILS';


-- Q24. Verify the renamed table.
SELECT *
FROM STUDENT_DETAILS;


-- =============================================
-- TEMPORARY PRACTICE TABLE
-- =============================================

-- Q25. Create a temporary practice table.
CREATE TABLE TABLE_DEMO
(
    ID INT,
    NAME VARCHAR(50),
    CITY VARCHAR(50)
);


-- Q26. Insert records into TABLE_DEMO.
INSERT INTO TABLE_DEMO
VALUES
(1, 'AMAN', 'LUCKNOW'),
(2, 'RAHUL', 'DELHI'),
(3, 'PRIYA', 'MUMBAI');


-- Q27. Display TABLE_DEMO records.
SELECT *
FROM TABLE_DEMO;


-- Q28. Rename TABLE_DEMO to TABLE_DEMO_RENAMED.
EXEC sp_rename
    'dbo.TABLE_DEMO',
    'TABLE_DEMO_RENAMED';


-- Q29. Verify the renamed table.
SELECT *
FROM TABLE_DEMO_RENAMED;


-- Q30. Rename the table back to TABLE_DEMO.
EXEC sp_rename
    'dbo.TABLE_DEMO_RENAMED',
    'TABLE_DEMO';


-- =============================================
-- TRUNCATE AND DROP TABLE
-- =============================================

-- Q31. Delete all records from TABLE_DEMO using TRUNCATE.
TRUNCATE TABLE TABLE_DEMO;


-- Q32. Verify that TABLE_DEMO is empty.
SELECT *
FROM TABLE_DEMO;


-- Q33. Delete TABLE_DEMO.
DROP TABLE TABLE_DEMO;


-- Q34. Verify that TABLE_DEMO has been deleted.
SELECT
    name
FROM sys.tables
WHERE name = 'TABLE_DEMO';


-- Q35. Display all remaining tables.
SELECT
    name
FROM sys.tables;


-- =============================================
-- ADDITIONAL PRACTICE QUESTIONS
-- =============================================

-- Q36. Display all columns of the EMPLOYEE table.
SELECT
    name AS COLUMN_NAME
FROM sys.columns
WHERE object_id = OBJECT_ID('dbo.EMPLOYEE');


-- Q37. Find the total number of tables in the current database.
SELECT
    COUNT(*) AS TOTAL_TABLES
FROM sys.tables;


-- Q38. Display the structure of the DEPT table using sp_help.
EXEC sp_help 'dbo.DEPT';


-- Q39. Add a column named GENDER to STUDENT_DETAILS.
ALTER TABLE STUDENT_DETAILS
ADD GENDER VARCHAR(10);


-- Q40. Modify the size of the COURSE column.
ALTER TABLE STUDENT_DETAILS
ALTER COLUMN COURSE VARCHAR(100);


-- Q41. Add a column named MANAGER_ID to EMPLOYEE.
ALTER TABLE EMPLOYEE
ADD MANAGER_ID INT;


-- Q42. Rename the GENDER column to STUDENT_GENDER.
EXEC sp_rename
    'dbo.STUDENT_DETAILS.GENDER',
    'STUDENT_GENDER',
    'COLUMN';


-- Q43. Display all records from STUDENT_DETAILS.
SELECT *
FROM STUDENT_DETAILS;


-- Q44. Display the schema name and table name
-- for all tables in the current database.
SELECT
    s.name AS SCHEMA_NAME,
    t.name AS TABLE_NAME
FROM sys.tables AS t
INNER JOIN sys.schemas AS s
    ON t.schema_id = s.schema_id;


-- Q45. Find all tables created by the dbo schema.
SELECT
    name AS TABLE_NAME
FROM sys.tables
WHERE schema_id = SCHEMA_ID('dbo');


-- =============================================
-- FINAL VERIFICATION
-- =============================================

-- Display all tables in the current database.
SELECT
    s.name AS SCHEMA_NAME,
    t.name AS TABLE_NAME
FROM sys.tables AS t
INNER JOIN sys.schemas AS s
    ON t.schema_id = s.schema_id;


-- Verify EMPLOYEE table structure.
EXEC sp_help 'dbo.EMPLOYEE';


-- Verify STUDENT_DETAILS table structure.
EXEC sp_help 'dbo.STUDENT_DETAILS';