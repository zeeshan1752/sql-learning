-- =============================================
-- 08_Comparison_Operators
-- File: comparison_operators.sql
-- Database: sql_server_practice
-- =============================================

USE sql_server_practice;
GO

-- =============================================
-- 1. Equal To (=)
-- =============================================

-- Q1. Display employees earning exactly 3000.
SELECT *
FROM EMPLOYEE
WHERE SAL = 3000;

-- Q2. Display employees working in department 20.
SELECT *
FROM EMPLOYEE
WHERE DEPTNO = 20;

-- Q3. Display employees whose job is MANAGER.
SELECT *
FROM EMPLOYEE
WHERE JOB = 'MANAGER';


-- =============================================
-- 2. Not Equal To (<> and !=)
-- =============================================

-- Q4. Display employees whose salary is not 3000.
SELECT *
FROM EMPLOYEE
WHERE SAL <> 3000;

-- Q5. Display employees not working in department 10.
SELECT *
FROM EMPLOYEE
WHERE DEPTNO != 10;

-- Q6. Display employees whose job is not CLERK.
SELECT *
FROM EMPLOYEE
WHERE JOB <> 'CLERK';


-- =============================================
-- 3. Greater Than (>)
-- =============================================

-- Q7. Display employees earning more than 3000.
SELECT *
FROM EMPLOYEE
WHERE SAL > 3000;

-- Q8. Display employees with an employee ID greater than 103.
SELECT *
FROM EMPLOYEE
WHERE EMPNO > 103;


-- =============================================
-- 4. Less Than (<)
-- =============================================

-- Q9. Display employees earning less than 3000.
SELECT *
FROM EMPLOYEE
WHERE SAL < 3000;

-- Q10. Display employees with an employee ID less than 104.
SELECT *
FROM EMPLOYEE
WHERE EMPNO < 104;


-- =============================================
-- 5. Greater Than or Equal To (>=)
-- =============================================

-- Q11. Display employees earning 3000 or more.
SELECT *
FROM EMPLOYEE
WHERE SAL >= 3000;

-- Q12. Display employees working in department 20 or a higher-numbered department.
SELECT *
FROM EMPLOYEE
WHERE DEPTNO >= 20;


-- =============================================
-- 6. Less Than or Equal To (<=)
-- =============================================

-- Q13. Display employees earning 3000 or less.
SELECT *
FROM EMPLOYEE
WHERE SAL <= 3000;

-- Q14. Display employees with an employee ID of 103 or less.
SELECT *
FROM EMPLOYEE
WHERE EMPNO <= 103;


-- =============================================
-- 7. Comparison Operators with Dates
-- =============================================

-- Q15. Display employees hired after 2020-01-01.
SELECT *
FROM EMPLOYEE
WHERE JOINING_DATE > '20200101';

-- Q16. Display employees hired before 2020-01-01.
SELECT *
FROM EMPLOYEE
WHERE JOINING_DATE < '20200101';

-- Q17. Display employees hired on or after 2020-01-01.
SELECT *
FROM EMPLOYEE
WHERE JOINING_DATE >= '20200101';

-- Q18. Display employees hired on or before 2020-01-01.
SELECT *
FROM EMPLOYEE
WHERE JOINING_DATE <= '20200101';


-- =============================================
-- 8. Practice Questions
-- =============================================

-- Q19. Display employees earning exactly 3000.
SELECT *
FROM EMP
WHERE SAL = 3000;

-- Q20. Display employees earning more than 2500.
SELECT *
FROM EMP
WHERE SAL > 2500;

-- Q21. Display employees earning less than 2500.
SELECT *
FROM EMP
WHERE SAL < 2500;

-- Q22. Display employees whose salary is not equal to 2000.
SELECT *
FROM EMP
WHERE SAL <> 2000;

-- Q23. Display employees working in department 30.
SELECT *
FROM EMP
WHERE DEPTNO = 30;

-- Q24. Display employees whose employee ID is greater than or equal to 7900.
SELECT *
FROM EMP
WHERE EMPNO >= 7900;

-- Q25. Display employees hired after 1982-01-01.
SELECT *
FROM EMP
WHERE HIREDATE > '1982-01-01';