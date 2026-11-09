-- =============================================
-- 07_SQL_Functions
-- 04_Aggregate_Functions
-- File: aggregate_functions.sql
-- Database: sql_server_practice
-- =============================================

USE sql_server_practice;
GO

-- =============================================
-- AGGREGATE FUNCTIONS
-- =============================================

-- 1. Count the total number of employees.
SELECT COUNT(*) AS TOTAL_EMPLOYEES
FROM EMPLOYEE;


-- 2. Count the number of employee names.
SELECT COUNT(ENAME) AS EMPLOYEE_NAME_COUNT
FROM EMPLOYEE;


-- 3. Count the number of employees with a salary.
SELECT COUNT(SAL) AS EMPLOYEES_WITH_SALARY
FROM EMPLOYEE;


-- 4. Calculate the total salary of all employees.
SELECT SUM(SAL) AS TOTAL_SALARY
FROM EMPLOYEE;


-- 5. Calculate the average salary of all employees.
SELECT AVG(SAL) AS AVERAGE_SALARY
FROM EMPLOYEE;


-- 6. Find the highest employee salary.
SELECT MAX(SAL) AS HIGHEST_SALARY
FROM EMPLOYEE;


-- 7. Find the lowest employee salary.
SELECT MIN(SAL) AS LOWEST_SALARY
FROM EMPLOYEE;


-- 8. Count the number of employees in each department.
SELECT
    DEPTNO,
    COUNT(*) AS TOTAL_EMPLOYEES
FROM EMPLOYEE
GROUP BY DEPTNO;


-- 9. Calculate the total salary in each department.
SELECT
    DEPTNO,
    SUM(SAL) AS TOTAL_SALARY
FROM EMPLOYEE
GROUP BY DEPTNO;


-- 10. Calculate the average salary in each department.
SELECT
    DEPTNO,
    AVG(SAL) AS AVERAGE_SALARY
FROM EMPLOYEE
GROUP BY DEPTNO;


-- 11. Find the highest salary in each department.
SELECT
    DEPTNO,
    MAX(SAL) AS HIGHEST_SALARY
FROM EMPLOYEE
GROUP BY DEPTNO;


-- 12. Find the lowest salary in each department.
SELECT
    DEPTNO,
    MIN(SAL) AS LOWEST_SALARY
FROM EMPLOYEE
GROUP BY DEPTNO;


-- 13. Count the number of employees in each job role.
SELECT
    JOB,
    COUNT(*) AS TOTAL_EMPLOYEES
FROM EMPLOYEE
GROUP BY JOB;


-- 14. Calculate the total salary for each job role.
SELECT
    JOB,
    SUM(SAL) AS TOTAL_SALARY
FROM EMPLOYEE
GROUP BY JOB;


-- 15. Calculate the average salary for each job role.
SELECT
    JOB,
    AVG(SAL) AS AVERAGE_SALARY
FROM EMPLOYEE
GROUP BY JOB;


-- 16. Count the distinct department numbers.
SELECT COUNT(DISTINCT DEPTNO) AS UNIQUE_DEPARTMENTS
FROM EMPLOYEE;


-- 17. Count the distinct job roles.
SELECT COUNT(DISTINCT JOB) AS UNIQUE_JOB_ROLES
FROM EMPLOYEE;


-- 18. Count all rows and compare with non-NULL salary values.
SELECT
    COUNT(*) AS TOTAL_ROWS,
    COUNT(SAL) AS NON_NULL_SALARY_COUNT
FROM EMPLOYEE;


-- 19. Calculate the standard deviation of employee salaries.
SELECT STDEV(SAL) AS SALARY_STANDARD_DEVIATION
FROM EMPLOYEE;


-- 20. Calculate the variance of employee salaries.
SELECT VAR(SAL) AS SALARY_VARIANCE
FROM EMPLOYEE;


-- 21. Count the total number of employees using COUNT_BIG().
SELECT COUNT_BIG(*) AS TOTAL_EMPLOYEES
FROM EMPLOYEE;


-- =============================================
-- PRACTICE QUESTIONS
-- =============================================

-- 22. Count the total number of departments in the DEPT table.
SELECT COUNT(DEPTNO) AS NO_OF_DEPARTMENTS
FROM DEPT;

-- 23. Count the total number of students in the STUDENT_DETAILS table.
SELECT COUNT(*) AS TOTAL_STUDENTS
FROM STUDENT_DETAILS;

-- 24. Find the total salary of all employees.
SELECT SUM(SAL) AS TOTAL_SALARY
FROM EMP;

-- 25. Find the average salary of all employees.
SELECT AVG(SAL) AS AVERAGE_SALARRY
FROM EMP;

-- 26. Find the highest salary among all employees.
SELECT MAX(SAL) AS HIGHEST_SALARY
FROM EMP;

-- 27. Find the lowest salary among all employees.
SELECT MIN(SAL) AS MINIMUM_SALARY
FROM EMP;

-- 28. Count the number of employees in each department.
SELECT DISTINCT DEPTNO, COUNT(DEPTNO) AS NO_OF_EMPLOYEES
FROM EMP
GROUP BY(DEPTNO);

-- 29. Find the total salary paid in each department.
SELECT DISTINCT DEPTNO, SUM(SAL) AS TOTAL_SALARY
FROM EMP
GROUP BY (DEPTNO);

-- 30. Find the average salary for each department.
SELECT DISTINCT DEPTNO, AVG(SAL) AS AVERAGE_SALARY
FROM EMP
GROUP BY (DEPTNO);

-- 31. Find the highest salary in each job role.
SELECT DISTINCT JOB, MAX(SAL) AS MAX_SALARY
FROM EMP
GROUP BY (JOB);

-- 32. Find the lowest salary in each job role.
SELECT DISTINCT JOB, MIN(SAL) AS MIN_SALARY
FROM EMP
GROUP BY (JOB);

-- 33. Count the number of employees in each job role.
SELECT DISTINCT JOB, COUNT(JOB) AS NO_OF_EMPLOYEE
FROM EMP
GROUP BY (JOB);

-- 34. Find the total salary for each job role.
SELECT DISTINCT JOB, SUM(SAL) AS TOTAL_SALARY
FROM EMP
GROUP BY (JOB);

-- 35. Count the distinct job roles in the EMP table.
SELECT COUNT(DISTINCT JOB) AS DICTINCT_JOBS
FROM EMP;

-- 36. Count the distinct department numbers in the EMP table.
SELECT COUNT(DISTINCT DEPTNO) AS DICTINCT_DEPARTMENT_NO
FROM EMP;

-- 37. Calculate the standard deviation of salaries in the EMP table.
SELECT STDEV(SAL) AS STANDARD_DEVIATION
FROM EMP;

-- 38. Calculate the variance of salaries in the EMP table.
SELECT VAR(SAL) AS VARIANCE_SALARY
FROM EMP;

-- 39. Display the total number of employees and the number of employees
--     whose COMMISION is NULL.
SELECT COUNT(*) AS TOTAL_EMPLOYEES,
        COUNT(COMM) AS TOTAL_EMPLOYEES_WITHOUT_COMMISION
FROM EMP;

-- 40. Calculate the average salary for each department and job role.
SELECT DEPTNO, JOB,
       AVG(SAL) AS AVERAGE_SALARY
FROM EMP
GROUP BY DEPTNO, JOB;