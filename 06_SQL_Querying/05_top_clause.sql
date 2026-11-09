-- =============================================
-- 05_TOP_Clause
-- File: top_clause.sql
-- Database: sql_server_practice
-- =============================================

USE sql_server_practice;
GO

-- =============================================
-- 1. Basic TOP
-- =============================================

-- Q1. Display the first 3 rows from EMPLOYEE.
SELECT TOP (3) *
FROM EMPLOYEE;

-- Q2. Display the first 5 rows from EMPLOYEE.
SELECT TOP (5) *
FROM EMPLOYEE;

-- Q3. Display the first 2 rows from DEPT.
SELECT TOP (2) *
FROM DEPT;

-- Q4. Display the first 3 rows from STUDENT_DETAILS.
SELECT TOP (3) *
FROM STUDENT_DETAILS;


-- =============================================
-- 2. TOP with Specific Columns
-- =============================================

-- Q5. Display the top 3 employee names.
SELECT TOP (3) ENAME
FROM EMPLOYEE;

-- Q6. Display the top 5 employee names and salaries.
SELECT TOP (5) ENAME, SAL
FROM EMPLOYEE;

-- Q7. Display the top 3 department names.
SELECT TOP (3) DNAME
FROM DEPT;


-- =============================================
-- 3. TOP with ORDER BY
-- =============================================

-- Q8. Display the 3 highest-paid employees.
SELECT TOP (3) *
FROM EMPLOYEE
ORDER BY SAL DESC;

-- Q9. Display the 5 highest-paid employees.
SELECT TOP (5) *
FROM EMPLOYEE
ORDER BY SAL DESC;

-- Q10. Display the 3 lowest-paid employees.
SELECT TOP (3) *
FROM EMPLOYEE
ORDER BY SAL ASC;

-- Q11. Display the employee with the highest salary.
SELECT TOP (1) *
FROM EMPLOYEE
ORDER BY SAL DESC;

-- Q12. Display the employee with the lowest salary.
SELECT TOP (1) *
FROM EMPLOYEE
ORDER BY SAL ASC;


-- =============================================
-- 4. TOP PERCENT
-- =============================================

-- Q13. Display the top 50 percent of employee records.
SELECT TOP (50) PERCENT *
FROM EMPLOYEE;

-- Q14. Display the top 25 percent of employee records.
SELECT TOP (25) PERCENT *
FROM EMPLOYEE;

-- Q15. Display the top 50 percent of employees based on salary.
SELECT TOP (50) PERCENT *
FROM EMPLOYEE
ORDER BY SAL DESC;


-- =============================================
-- 5. TOP WITH TIES
-- =============================================

-- Q16. Display the top 3 highest-paid employees,
--      including employees tied with the third salary.
SELECT TOP (3) WITH TIES *
FROM EMPLOYEE
ORDER BY SAL DESC;

-- Q17. Display the top 2 lowest-paid employees,
--      including employees tied with the second salary.
SELECT TOP (2) WITH TIES *
FROM EMPLOYEE
ORDER BY SAL ASC;


-- =============================================
-- 6. Practice Questions
-- =============================================

-- Q18. Display the top 4 employee records.
SELECT TOP 4 *
FROM EMP;

-- Q19. Display the top 2 employee names and jobs.
SELECT TOP 2 ENAME, JOB
FROM EMP;

-- Q20. Display the 2 highest-paid employees.
SELECT TOP 2 *
FROM EMP
ORDER BY SAL DESC;

-- Q21. Display the 2 lowest-paid employees.
SELECT TOP 2 *
FROM EMP
ORDER BY SAL ASC;

-- Q22. Display the top 30 percent of employee records.
SELECT TOP 30 PERCENT *
FROM EMP

-- Q23. Display the top 3 employees by salary, including ties.
SELECT TOP 3 WITH TIES *
FROM EMP
ORDER BY SAL DESC;

-- Q24. Display the top 2 JOB records.
SELECT TOP 2 JOB
FROM EMP
ORDER BY JOB;

-- Q25. Display the top 3 student records.
SELECT TOP 3 *
FROM STUDENT_DETAILS;