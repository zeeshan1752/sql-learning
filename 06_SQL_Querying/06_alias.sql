-- =============================================
-- 06_ALIAS
-- File: alias.sql
-- Database: sql_server_practice
-- =============================================

USE sql_server_practice;
GO

-- =============================================
-- 1. Column Alias Using AS
-- =============================================

-- Q1. Display employee names with the heading Employee_Name.
SELECT ENAME AS Employee_Name
FROM EMPLOYEE;

-- Q2. Display employee salaries with the heading Salary.
SELECT SAL AS Salary
FROM EMPLOYEE;

-- Q3. Display employee IDs with the heading Employee_ID.
SELECT EMPNO AS Employee_ID
FROM EMPLOYEE;

-- Q4. Display job titles with the heading Job_Role.
SELECT JOB AS Job_Role
FROM EMPLOYEE;

-- Q5. Display department numbers with the heading Department_Number.
SELECT DEPTNO AS Department_Number
FROM EMPLOYEE;


-- =============================================
-- 2. Column Alias Without AS
-- =============================================

-- Q6. Display employee names with the heading Employee_Name.
SELECT ENAME Employee_Name
FROM EMPLOYEE;

-- Q7. Display salaries with the heading Monthly_Salary.
SELECT SAL Monthly_Salary
FROM EMPLOYEE;

-- Q8. Display department names with the heading Department_Name.
SELECT DNAME Department_Name
FROM DEPT;


-- =============================================
-- 3. Column Alias with Spaces
-- =============================================

-- Q9. Display employee names with the heading Employee Name.
SELECT ENAME AS [Employee Name]
FROM EMPLOYEE;

-- Q10. Display salaries with the heading Monthly Salary.
SELECT SAL AS [Monthly Salary]
FROM EMPLOYEE;

-- Q11. Display department names with the heading Department Name.
SELECT DNAME AS [Department Name]
FROM DEPT;


-- =============================================
-- 4. Multiple Column Aliases
-- =============================================

-- Q12. Display employee ID, name, job, and salary
--      with meaningful column headings.
SELECT
    EMPNO AS Employee_ID,
    ENAME AS Employee_Name,
    JOB AS Job_Role,
    SAL AS Monthly_Salary
FROM EMPLOYEE;

-- Q13. Display department number and department name
--      with meaningful column headings.
SELECT
    DEPTNO AS Department_Number,
    DNAME AS Department_Name
FROM DEPT;

-- Q14. Display student ID and student name
--      with meaningful column headings.
SELECT
    STUDENT_ID AS Student_ID,
    STUDENT_NAME AS Student_Name
FROM STUDENT_DETAILS;


-- =============================================
-- 5. Table Alias
-- =============================================

-- Q15. Use E as an alias for the EMPLOYEE table.
SELECT E.*
FROM EMPLOYEE AS E;

-- Q16. Display employee names and salaries using
--      the table alias E.
SELECT E.ENAME, E.SAL
FROM EMPLOYEE AS E;

-- Q17. Display employee IDs, names, and job titles
--      using the table alias E.
SELECT E.EMPNO, E.ENAME, E.JOB
FROM EMPLOYEE E;

-- Q18. Use D as an alias for the DEPT table.
SELECT D.*
FROM DEPT AS D;

-- Q19. Display department numbers and names
--      using the table alias D.
SELECT D.DEPTNO, D.DNAME
FROM DEPT AS D;


-- =============================================
-- 6. Practice Questions
-- =============================================

-- Q20. Display employee names with the heading Full_Name.
SELECT ENAME AS FULL_NAME
FROM EMP;

-- Q21. Display salaries with the heading Employee_Salary.
SELECT SAL AS Employee_Salary
FROM EMP;

-- Q22. Display employee IDs and names with meaningful aliases.
SELECT EMPNO AS [Employee ID], ENAME AS [Employee Names]
FROM EMP;

-- Q23. Display job names with the heading Job_Name.
SELECT JOB AS Job_Names
FROM EMP;

-- Q24. Display employee names and jobs using the alias EMP.
SELECT ENAME AS [Names of Employees], JOB AS [Jobs]
FROM EMP;

-- Q25. Display department details using the alias DEPT_ALIAS.
SELECT DEPTNO AS [Department Numbers]
FROM EMP;