-- DDL: Data Definition Language
-- Platform: Microsoft SQL Server
-- Database: sql_server_practice

USE sql_server_practice;


-- ==========================================
-- 1. CREATE TABLE - EMP
-- ==========================================

-- Q1. Create the EMP table.

CREATE TABLE EMP
(
    EMPNO SMALLINT,
    ENAME VARCHAR(10),
    JOB VARCHAR(9),
    MGR NUMERIC(4),
    HIREDATE DATE,
    SAL MONEY,
    COMM MONEY,
    DEPTNO TINYINT
);


-- ==========================================
-- 2. INSERT EMPLOYEE RECORDS
-- ==========================================

-- Insert all 14 employee records.

INSERT INTO EMP VALUES
(7369, 'SMITH', 'CLERK', 7902, '19801217', 800, NULL, 20),
(7499, 'ALLEN', 'SALESMAN', 7698, '19810220', 1600, 300, 30),
(7521, 'WARD', 'SALESMAN', 7698, '19810222', 1250, 500, 30),
(7566, 'JONES', 'MANAGER', 7839, '19810402', 2975, NULL, 20),
(7654, 'MARTIN', 'SALESMAN', 7698, '19810928', 1250, 1400, 30),
(7698, 'BLAKE', 'MANAGER', 7839, '19810501', 2850, NULL, 30),
(7782, 'CLARK', 'MANAGER', 7839, '19810609', 2450, NULL, 10),
(7788, 'SCOTT', 'ANALYST', 7566, '19821209', 3000, NULL, 20),
(7839, 'KING', 'PRESIDENT', NULL, '19811117', 5000, NULL, 10),
(7844, 'TURNER', 'SALESMAN', 7698, '19810908', 1500, 0, 30),
(7876, 'ADAMS', 'CLERK', 7788, '19830112', 1100, NULL, 20),
(7900, 'JAMES', 'CLERK', 7698, '19811203', 950, NULL, 30),
(7902, 'FORD', 'ANALYST', 7566, '19811203', 3000, NULL, 20),
(7934, 'MILLER', 'CLERK', 7782, '19820123', 1300, NULL, 10);


-- ==========================================
-- 3. ALTER TABLE - ADD COLUMN
-- ==========================================

-- Q2. Add EMAIL column to EMP.

ALTER TABLE EMP
ADD EMAIL VARCHAR(100);

-- Q3. Add PHONE column to EMP.

ALTER TABLE EMP
ADD PHONE VARCHAR(15);

-- Q4. Add ADDRESS column to EMP.

ALTER TABLE EMP
ADD ADDRESS VARCHAR(100);

-- Q5. Add BONUS column with MONEY datatype.

ALTER TABLE EMP
ADD BONUS MONEY;

-- Q6. Add GENDER column.

ALTER TABLE EMP
ADD GENDER VARCHAR(10);

-- Q7. Add EXPERIENCE column with INT datatype.

ALTER TABLE EMP
ADD EXPERIENCE INT;


-- ==========================================
-- 4. ALTER TABLE - ALTER COLUMN
-- ==========================================

-- Q8. Increase ENAME size to VARCHAR(30).

ALTER TABLE EMP
ALTER COLUMN ENAME VARCHAR(30);

-- Q9. Increase JOB size to VARCHAR(20).

ALTER TABLE EMP
ALTER COLUMN JOB VARCHAR(20);

-- Q10. Change EMAIL size to VARCHAR(150).

ALTER TABLE EMP
ALTER COLUMN EMAIL VARCHAR(150);

-- Q11. Change ADDRESS size to VARCHAR(200).

ALTER TABLE EMP
ALTER COLUMN ADDRESS VARCHAR(200);

-- Q12. Change EXPERIENCE datatype to SMALLINT.

ALTER TABLE EMP
ALTER COLUMN EXPERIENCE SMALLINT;


-- ==========================================
-- 5. ALTER TABLE - DROP COLUMN
-- ==========================================

-- Q13. Remove PHONE column.

ALTER TABLE EMP
DROP COLUMN PHONE;

-- Q14. Remove ADDRESS column.

ALTER TABLE EMP
DROP COLUMN ADDRESS;

-- Q15. Remove GENDER column.

ALTER TABLE EMP
DROP COLUMN GENDER;

-- Q16. Remove EMAIL column.

ALTER TABLE EMP
DROP COLUMN EMAIL;

-- Q17. Remove BONUS column.

ALTER TABLE EMP
DROP COLUMN BONUS;

-- Q18. Remove EXPERIENCE column.

ALTER TABLE EMP
DROP COLUMN EXPERIENCE;


-- ==========================================
-- 6. RENAME COLUMN
-- ==========================================

-- Q19. Rename ENAME to EMP_NAME.

EXEC sp_rename 'EMP.ENAME', 'EMP_NAME', 'COLUMN';

-- Q20. Rename EMP_NAME back to ENAME.

EXEC sp_rename 'EMP.EMP_NAME', 'ENAME', 'COLUMN';


-- ==========================================
-- 7. CREATE PRACTICE TABLES
-- ==========================================

-- Q21. Create a table named DEPT.

CREATE TABLE DEPT
(
    DEPTNO TINYINT,
    DNAME VARCHAR(30),
    LOCATION VARCHAR(30)
);

-- Q22. Create a table named PROJECT.

CREATE TABLE PROJECT
(
    PROJECT_ID INT,
    PROJECT_NAME VARCHAR(100),
    BUDGET MONEY
);


-- ==========================================
-- 8. RENAME TABLE
-- ==========================================

-- Q23. Rename DEPT to DEPARTMENT.

EXEC sp_rename 'DEPT', 'DEPARTMENT';

-- Q24. Rename DEPARTMENT back to DEPT.

EXEC sp_rename 'DEPARTMENT', 'DEPT';


-- ==========================================
-- 9. TRUNCATE TABLE
-- ==========================================

-- Q25. Remove all records from DEPT.
-- The table structure remains unchanged.

TRUNCATE TABLE DEPT;


-- ==========================================
-- 10. DROP TABLE
-- ==========================================

-- Q26. Delete the DEPT table completely.

DROP TABLE DEPT;

-- Q27. Delete the PROJECT table completely.

DROP TABLE PROJECT;


-- ==========================================
-- 11. VIEW TABLE STRUCTURE AND DATA
-- ==========================================

-- Q28. Display all employee records.

SELECT * FROM EMP;

-- Q29. Display EMP table structure.

EXEC sp_help 'EMP';

-- Q30. Display EMP table columns.

EXEC sp_columns 'EMP';