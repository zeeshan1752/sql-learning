-- =============================================
-- 07_Logical_Operators
-- File: logical_operators.sql
-- Database: sql_server_practice
-- =============================================

USE sql_server_practice;
GO

-- =============================================
-- 1. AND Operator
-- =============================================

-- Q1. Display employees working in department 20
--     AND earning more than 3000.
SELECT *
FROM EMPLOYEE
WHERE DEPTNO = 20 AND SAL > 3000;

-- Q2. Display employees whose job is MANAGER
--     AND salary is greater than 4000.
SELECT *
FROM EMPLOYEE
WHERE JOB = 'MANAGER' AND SAL > 4000;

-- Q3. Display employees earning more than 2000
--     AND less than 5000.
SELECT *
FROM EMPLOYEE
WHERE SAL > 2000 AND SAL < 5000;

-- Q4. Display employees working in department 10
--     AND whose job is ANALYST.
SELECT *
FROM EMPLOYEE
WHERE DEPTNO = 10 AND JOB = 'ANALYST';


-- =============================================
-- 2. OR Operator
-- =============================================

-- Q5. Display employees working in department 10
--     OR department 20.
SELECT *
FROM EMPLOYEE
WHERE DEPTNO = 10 OR DEPTNO = 20;

-- Q6. Display employees whose job is MANAGER
--     OR ANALYST.
SELECT *
FROM EMPLOYEE
WHERE JOB = 'MANAGER' OR JOB = 'ANALYST';

-- Q7. Display employees earning less than 2000
--     OR more than 4000.
SELECT *
FROM EMPLOYEE
WHERE SAL < 2000 OR SAL > 4000;

-- Q8. Display employees whose name is SMITH
--     OR ALLEN.
SELECT *
FROM EMPLOYEE
WHERE ENAME = 'SMITH' OR ENAME = 'ALLEN';


-- =============================================
-- 3. NOT Operator
-- =============================================

-- Q9. Display employees who are NOT working
--     in department 20.
SELECT *
FROM EMPLOYEE
WHERE NOT (DEPTNO = 20);

-- Q10. Display employees whose job is NOT MANAGER.
SELECT *
FROM EMPLOYEE
WHERE NOT (JOB = 'MANAGER');

-- Q11. Display employees whose salary is NOT equal to 3000.
SELECT *
FROM EMPLOYEE
WHERE NOT (SAL = 3000);

-- Q12. Display employees whose name is NOT SMITH.
SELECT *
FROM EMPLOYEE
WHERE NOT (ENAME = 'SMITH');


-- =============================================
-- 4. Combining Logical Operators
-- =============================================

-- Q13. Display employees working in department 20
--      AND earning more than 3000 OR working in department 10.
SELECT *
FROM EMPLOYEE
WHERE (DEPTNO = 20 AND SAL > 3000)
   OR DEPTNO = 10;

-- Q14. Display employees who are MANAGERS
--      AND earn more than 3000 OR are ANALYSTS.
SELECT *
FROM EMPLOYEE
WHERE (JOB = 'MANAGER' AND SAL > 3000)
   OR JOB = 'ANALYST';

-- Q15. Display employees who are NOT working in department 10
--      AND earning more than 2000.
SELECT *
FROM EMPLOYEE
WHERE NOT (DEPTNO = 10)
  AND SAL > 2000;

-- Q16. Display employees working in department 10 or 20
--      AND earning more than 2500.
SELECT *
FROM EMPLOYEE
WHERE (DEPTNO = 10 OR DEPTNO = 20)
  AND SAL > 2500;


-- =============================================
-- 5. Practice Questions
-- =============================================

-- Q17. Display employees earning more than 2500
--      AND working in department 20.
SELECT *
FROM EMP
WHERE SAL > 2500 AND DEPTNO = 20;

-- Q18. Display employees whose job is CLERK
--      OR SALESMAN.
SELECT *
FROM EMP
WHERE JOB = 'CLERK' OR JOB = 'SALESMAN';

-- Q19. Display employees earning less than 3000
--      AND working in department 10.
SELECT *
FROM EMP
WHERE SAL < 3000 AND DEPTNO = 10;

-- Q20. Display employees who are NOT ANALYSTS.
SELECT *
FROM EMP
WHERE JOB <> 'ANALYST';

-- Q21. Display employees working in department 10 or 30.
SELECT *
FROM EMP
WHERE DEPTNO = 10 OR DEPTNO = 30;

-- Q22. Display employees earning more than 2000
--      AND less than 4500.
SELECT *
FROM EMP
WHERE SAL > 2000 AND SAL < 4500;

-- Q23. Display employees whose job is MANAGER
--      AND department number is 20.
SELECT *
FROM EMP
WHERE JOB = 'MANAGER' AND DEPTNO = 20;

-- Q24. Display employees who are NOT working in department 30
--      AND earning more than 3000.
SELECT *
FROM EMP
WHERE DEPTNO <> 30 AND SAL > 3000;

-- Q25. Display employees working in department 10 or 20
--      AND whose salary is less than 4000.
SELECT *
FROM EMP
WHERE (DEPTNO = 10 OR DEPTNO = 20) AND SAL < 4000;