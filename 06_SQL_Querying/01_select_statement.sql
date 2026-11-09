-- =============================================
-- 01_SELECT_Statement
-- File: select_statement.sql
-- Database: sql_server_practice
-- =============================================

USE sql_server_practice;
GO

-- =============================================
-- 1. Display All Columns
-- =============================================

-- Q1. Display all columns from the EMPLOYEE table.
SELECT *
FROM EMPLOYEE;

-- Q2. Display all columns from the DEPT table.
SELECT *
FROM DEPT;

-- Q3. Display all columns from the STUDENT_DETAILS table.
SELECT *
FROM STUDENT_DETAILS;


-- =============================================
-- 2. Display Specific Columns
-- =============================================

-- Q4. Display only employee names.
SELECT ENAME
FROM EMPLOYEE;

-- Q5. Display employee ID and employee name.
SELECT EMPNO, ENAME
FROM EMPLOYEE;

-- Q6. Display employee name and job.
SELECT ENAME, JOB
FROM EMPLOYEE;

-- Q7. Display employee name and salary.
SELECT ENAME, SAL
FROM EMPLOYEE;

-- Q8. Display employee name, job, and department number.
SELECT ENAME, JOB, DEPTNO
FROM EMPLOYEE;

-- Q9. Display department number and department name.
SELECT DEPTNO, DNAME
FROM DEPT;

-- Q10. Display student ID and student name.
SELECT STUDENT_ID, STUDENT_NAME
FROM STUDENT_DETAILS;


-- =============================================
-- 3. Select Columns in Different Orders
-- =============================================

-- Q11. Display employee name first, followed by employee ID.
SELECT ENAME, EMPNO
FROM EMPLOYEE;

-- Q12. Display salary first, followed by employee name and job.
SELECT SAL, ENAME, JOB
FROM EMPLOYEE;

-- Q13. Display department name first, followed by department number.
SELECT DNAME, DEPTNO
FROM DEPT;


-- =============================================
-- 4. Select Data from Different Tables
-- =============================================

-- Q14. Display all columns from the EMPLOYEE table.
SELECT *
FROM EMPLOYEE;

-- Q15. Display all columns from the DEPT table.
SELECT *
FROM DEPT;

-- Q16. Display all columns from the STUDENT_DETAILS table.
SELECT *
FROM STUDENT_DETAILS;


-- =============================================
-- 5. Practice Questions
-- =============================================

-- Q17. Display employee ID, name, and salary.
SELECT EMPNO, ENAME, SAL
FROM EMPLOYEE;

-- Q18. Display employee name, job, and salary.
SELECT ENAME, JOB, SAL
FROM EMPLOYEE;

-- Q19. Display employee name, commission, and department number. (EMP TABLE)
SELECT ENAME, COMM, DEPTNO
FROM EMP;

-- Q20. Display department number and hiredate.
SELECT DEPTNO, HIREDATE
FROM EMP;

-- Q21. Display student name and course.
SELECT STUDENT_NAME, COURSE
FROM STUDENT_DETAILS;

-- Q22. Display student name, course, and STUDENT ID.
SELECT STUDENT_NAME, COURSE, STUDENT_ID
FROM STUDENT_DETAILS;

-- Q23. Display employee ID, name, job, and hire date.
SELECT EMPNO, ENAME, JOB, HIREDATE
FROM EMP;

-- Q24. Display employee name, salary, and commission.
SELECT ENAME, SAL, COMM
FROM EMP;

-- Q25. Display all columns from the EMPLOYEE table.
SELECT * FROM EMPLOYEE;