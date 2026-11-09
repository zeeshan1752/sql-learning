-- =============================================
-- 02_WHERE_Clause
-- File: where_clause.sql
-- Database: sql_server_practice
-- =============================================

USE sql_server_practice;
GO

-- =============================================
-- 1. Basic WHERE Clause
-- =============================================

-- Q1. Display employees whose department number is 20.
SELECT *
FROM EMPLOYEE
WHERE DEPTNO = 20;

-- Q2. Display employees whose job is MANAGER.
SELECT *
FROM EMPLOYEE
WHERE JOB = 'MANAGER';

-- Q3. Display employees whose salary is 3000.
SELECT *
FROM EMPLOYEE
WHERE SAL = 3000;

-- Q4. Display employees whose employee ID is 101.
SELECT *
FROM EMPLOYEE
WHERE EMPNO = 101;


-- =============================================
-- 2. WHERE with Comparison Operators
-- =============================================

-- Q5. Display employees earning more than 3000.
SELECT *
FROM EMPLOYEE
WHERE SAL > 3000;

-- Q6. Display employees earning less than 3000.
SELECT *
FROM EMPLOYEE
WHERE SAL < 3000;

-- Q7. Display employees earning 3000 or more.
SELECT *
FROM EMPLOYEE
WHERE SAL >= 3000;

-- Q8. Display employees earning 3000 or less.
SELECT *
FROM EMPLOYEE
WHERE SAL <= 3000;

-- Q9. Display employees whose job is not CLERK.
SELECT *
FROM EMPLOYEE
WHERE JOB <> 'CLERK';

-- Q10. Display employees whose department number is not 20.
SELECT *
FROM EMPLOYEE
WHERE DEPTNO != 20;


-- =============================================
-- 3. WHERE with Text Values
-- =============================================

-- Q11. Display employees whose name is SMITH.
SELECT *
FROM EMPLOYEE
WHERE ENAME = 'SMITH';

-- Q12. Display employees whose job is SALESMAN.
SELECT *
FROM EMPLOYEE
WHERE JOB = 'SALESMAN';

-- Q13. Display departments whose department name is SALES.
SELECT *
FROM DEPT
WHERE DNAME = 'SALES';


-- =============================================
-- 4. WHERE with Date Values
-- =============================================

-- Q14. Display employees hired on 1981-05-01.
SELECT *
FROM EMPLOYEE
WHERE JOINING_DATE = '19810501';

-- Q15. Display employees hired after 2020-01-01.
SELECT *
FROM EMPLOYEE
WHERE JOINING_DATE > '20200101';

-- Q16. Display employees hired before 2020-01-01.
SELECT *
FROM EMPLOYEE
WHERE JOINING_DATE < '20200101';


-- =============================================
-- 5. Practice Questions
-- =============================================

-- Q17. Display employees earning exactly 5000.
SELECT *
FROM EMPLOYEE
WHERE SAL = 5000;

-- Q18. Display employees earning more than 4000.
SELECT * 
FROM EMPLOYEE
WHERE SAL > 4000;

-- Q19. Display employees earning less than 3500.
SELECT *
FROM EMPLOYEE
WHERE SAL < 3500;

-- Q20. Display employees whose department number is 10.
SELECT *
FROM EMPLOYEE
WHERE DEPTNO = 10;

-- Q21. Display employees whose job is ANALYST.
SELECT *
FROM EMPLOYEE
WHERE JOB = 'ANALYST';

-- Q22. Display employees whose name is ALLEN.
SELECT *
FROM EMP
WHERE ENAME = 'ALLEN';

-- Q23. Display departments whose department number is 30.
SELECT *
FROM EMP
WHERE DEPTNO = 30;

-- Q24. Display employees hired after 1982-01-01.
SELECT *
FROM EMP
WHERE HIREDATE > '1982-01-01';

-- Q25. Display employees whose salary is not 3000.
SELECT *
FROM EMP
WHERE SAL <> 3000;