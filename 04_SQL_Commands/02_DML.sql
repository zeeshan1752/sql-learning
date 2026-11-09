-- DML: Data Manipulation Language
-- Platform: Microsoft SQL Server
-- Database: sql_server_practice
-- Table: EMP

USE sql_server_practice;


-- ==========================================
-- 1. INSERT COMMAND
-- ==========================================

-- Q1. Insert a new employee into EMP.

INSERT INTO EMP
VALUES (8001, 'ROHIT', 'CLERK', 7839, '20240115', 2500, NULL, 10);


-- Q2. Insert multiple employee records.

INSERT INTO EMP
VALUES
(8002, 'AMIT', 'ANALYST', 7839, '20240210', 3500, NULL, 20),
(8003, 'PRIYA', 'MANAGER', 7839, '20240315', 4500, 500, 30);


-- Q3. Insert a record by specifying column names.

INSERT INTO EMP (EMPNO, ENAME, JOB, SAL, DEPTNO)
VALUES (8004, 'NEHA', 'CLERK', 2200, 10);


-- Q4. Insert an employee with NULL commission.

INSERT INTO EMP
VALUES (8005, 'KARAN', 'SALESMAN', 7698, '20240420', 3000, NULL, 30);


-- Q5. Insert an employee with zero commission.

INSERT INTO EMP
VALUES (8006, 'ANJALI', 'SALESMAN', 7698, '20240510', 2800, 0, 30);


-- Q6. Display all employee records.

SELECT * FROM EMP;


-- ==========================================
-- 2. UPDATE COMMAND
-- ==========================================

-- Q7. Update the salary of employee 8001 to 3000.

UPDATE EMP
SET SAL = 3000
WHERE EMPNO = 8001;


-- Q8. Change the job of employee 8002 to MANAGER.

UPDATE EMP
SET JOB = 'MANAGER'
WHERE EMPNO = 8002;


-- Q9. Update the commission of employee 8003 to 1000.

UPDATE EMP
SET COMM = 1000
WHERE EMPNO = 8003;


-- Q10. Change the department of employee 8004 to 20.

UPDATE EMP
SET DEPTNO = 20
WHERE EMPNO = 8004;


-- Q11. Increase the salary of employee 8005 by 500.

UPDATE EMP
SET SAL = SAL + 500
WHERE EMPNO = 8005;


-- Q12. Increase the salary of all employees in department 30 by 10%.

UPDATE EMP
SET SAL = SAL * 1.10
WHERE DEPTNO = 30;


-- Q13. Set commission to NULL for employee 8006.

UPDATE EMP
SET COMM = NULL
WHERE EMPNO = 8006;


-- Q14. Update both salary and commission of employee 8001.

UPDATE EMP
SET SAL = 3500,
    COMM = 500
WHERE EMPNO = 8001;


-- Q15. Change the job and department of employee 8002.

UPDATE EMP
SET JOB = 'ANALYST',
    DEPTNO = 10
WHERE EMPNO = 8002;


-- Q16. Display updated employee records.

SELECT * FROM EMP;


-- ==========================================
-- 3. DELETE COMMAND
-- ==========================================

-- Q17. Delete employee 8001.

DELETE FROM EMP
WHERE EMPNO = 8001;


-- Q18. Delete employee 8002.

DELETE FROM EMP
WHERE EMPNO = 8002;


-- Q19. Delete employees belonging to department 10
-- whose employee numbers are above 8000.

DELETE FROM EMP
WHERE DEPTNO = 10
AND EMPNO > 8000;


-- Q20. Delete employees whose job is CLERK
-- and employee number is above 8000.

DELETE FROM EMP
WHERE JOB = 'CLERK'
AND EMPNO > 8000;


-- Q21. Delete employees with employee number above 8000
-- and salary below 3000.

DELETE FROM EMP
WHERE EMPNO > 8000
AND SAL < 3000;


-- ==========================================
-- 4. VERIFY CHANGES
-- ==========================================

-- Q22. Display all remaining employee records.

SELECT * FROM EMP;

-- Q23. Display employees belonging to department 20.

SELECT * FROM EMP
WHERE DEPTNO = 20;

-- Q24. Display employees with salary greater than 3000.

SELECT * FROM EMP
WHERE SAL > 3000;

-- Q25. Display employee number, name, job and salary.

SELECT EMPNO, ENAME, JOB, SAL
FROM EMP;