-- =============================================
-- 03_DISTINCT_Clause
-- File: distinct_clause.sql
-- Database: sql_server_practice
-- =============================================

USE sql_server_practice;
GO

-- =============================================
-- 1. DISTINCT with a Single Column
-- =============================================

-- Q1. Display unique job titles from EMPLOYEE.
SELECT DISTINCT JOB
FROM EMPLOYEE;

-- Q2. Display unique department numbers from EMPLOYEE.
SELECT DISTINCT DEPTNO
FROM EMPLOYEE;

-- Q3. Display unique employee salaries.
SELECT DISTINCT SAL
FROM EMPLOYEE;

-- Q4. Display unique employee names.
SELECT DISTINCT ENAME
FROM EMPLOYEE;


-- =============================================
-- 2. DISTINCT with Multiple Columns
-- =============================================

-- Q5. Display unique combinations of job and department number.
SELECT DISTINCT JOB, DEPTNO
FROM EMPLOYEE;

-- Q6. Display unique combinations of job and salary.
SELECT DISTINCT JOB, SAL
FROM EMPLOYEE;

-- Q7. Display unique combinations of department number and salary.
SELECT DISTINCT DEPTNO, SAL
FROM EMPLOYEE;

-- Q8. Display unique combinations of employee name and job.
SELECT DISTINCT ENAME, JOB
FROM EMPLOYEE;


-- =============================================
-- 3. DISTINCT with Other Tables
-- =============================================

-- Q9. Display unique department names from DEPT.
SELECT DISTINCT DNAME
FROM DEPT;

-- Q10. Display unique student courses from STUDENT_DETAILS.
SELECT DISTINCT COURSE
FROM STUDENT_DETAILS;


-- =============================================
-- 4. DISTINCT with All Columns
-- =============================================

-- Q11. Display distinct employee records.
SELECT DISTINCT *
FROM EMPLOYEE;

SELECT DISTINCT *
FROM EMP;

-- Q12. Display distinct department records.
SELECT DISTINCT *
FROM DEPT;


-- =============================================
-- 5. Practice Questions
-- =============================================

-- Q13. Display unique employee job titles.
SELECT DISTINCT JOB
FROM EMPLOYEE;

-- Q14. Display unique department numbers from EMPLOYEE.
SELECT DISTINCT DEPTNO
FROM EMPLOYEE;

-- Q15. Display unique salaries from EMPLOYEE.
SELECT DISTINCT SAL
FROM EMPLOYEE;

-- Q16. Display unique combinations of JOB and DEPTNO.
SELECT DISTINCT DEPTNO, JOB
FROM EMPLOYEE;

-- Q17. Display unique combinations of JOB and SAL.
SELECT DISTINCT JOB, SAL
FROM EMPLOYEE;

-- Q18. Display unique department names.
SELECT DISTINCT JOB
FROM EMPLOYEE;

-- Q19. Display unique student courses.
SELECT DISTINCT COURSE
FROM STUDENT_DETAILS;

-- Q20. Display distinct employee records.
SELECT DISTINCT *
FROM EMPLOYEE;