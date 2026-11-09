-- TCL: Transaction Control Language
-- Platform: Microsoft SQL Server
-- Database: sql_server_practice
-- Table: EMP

USE sql_server_practice;


-- ==========================================
-- 1. AUTO-COMMIT MODE
-- ==========================================

-- Q1. Insert a record.
-- SQL Server commits this statement automatically.

INSERT INTO EMP (EMPNO, ENAME, JOB, SAL, DEPTNO)
VALUES (8101, 'ROHIT', 'CLERK', 2500, 10);

-- Q2. Verify the inserted record.

SELECT * FROM EMP
WHERE EMPNO = 8101;

-- Q3. Delete the record.
-- This statement is also automatically committed.

DELETE FROM EMP
WHERE EMPNO = 8101;


-- ==========================================
-- 2. IMPLICIT TRANSACTION MODE
-- ==========================================

-- Q4. Enable implicit transaction mode.

SET IMPLICIT_TRANSACTIONS ON;

-- Q5. Insert a record.
-- SQL Server automatically starts a transaction.

INSERT INTO EMP (EMPNO, ENAME, JOB, SAL, DEPTNO)
VALUES (8102, 'AMIT', 'ANALYST', 3500, 20);

-- Q6. Check the transaction count.

SELECT @@TRANCOUNT AS transaction_count;

-- Q7. Roll back the transaction.

ROLLBACK TRANSACTION;

-- Q8. Disable implicit transaction mode.

SET IMPLICIT_TRANSACTIONS OFF;

-- Verify that the record was not inserted.

SELECT * FROM EMP
WHERE EMPNO = 8102;


-- ==========================================
-- 3. EXPLICIT TRANSACTION - COMMIT
-- ==========================================

-- Q9. Start an explicit transaction.

BEGIN TRANSACTION;

-- Q10. Insert a record.

INSERT INTO EMP (EMPNO, ENAME, JOB, SAL, DEPTNO)
VALUES (8103, 'PRIYA', 'MANAGER', 4500, 30);

-- Q11. Commit the transaction.

COMMIT TRANSACTION;

-- Verify the committed record.

SELECT * FROM EMP
WHERE EMPNO = 8103;


-- ==========================================
-- 4. EXPLICIT TRANSACTION - ROLLBACK
-- ==========================================

-- Q12. Start an explicit transaction.

BEGIN TRANSACTION;

-- Q13. Update employee salary.

UPDATE EMP
SET SAL = 10000
WHERE EMPNO = 7369;

-- Q14. Roll back the transaction.

ROLLBACK TRANSACTION;

-- Verify the original salary.

SELECT EMPNO, ENAME, SAL
FROM EMP
WHERE EMPNO = 7369;


-- ==========================================
-- 5. ALTERNATIVE SYNTAX
-- ==========================================

-- Q15. COMMIT and COMMIT TRANSACTION are equivalent.

BEGIN TRANSACTION;

INSERT INTO EMP (EMPNO, ENAME, JOB, SAL, DEPTNO)
VALUES (8104, 'NEHA', 'CLERK', 2800, 10);

COMMIT;

-- ROLLBACK and ROLLBACK TRANSACTION are equivalent.

BEGIN TRANSACTION;

UPDATE EMP
SET SAL = 12000
WHERE EMPNO = 7369;

ROLLBACK;

-- Final verification.

SELECT * FROM EMP;