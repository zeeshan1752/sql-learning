-- =============================================
-- 04_ORDER_BY_Clause
-- File: order_by_clause.sql
-- Database: sql_server_practice
-- =============================================

USE sql_server_practice;
GO

-- =============================================
-- 1. Basic ORDER BY -- By default ascending
-- =============================================

-- Q1. Display all employees sorted by employee name.
SELECT *
FROM EMPLOYEE
ORDER BY ENAME;

-- Q2. Display all employees sorted by employee ID.
SELECT *
FROM EMPLOYEE
ORDER BY EMPNO;

-- Q3. Display all employees sorted by salary.
SELECT *
FROM EMPLOYEE
ORDER BY SAL;


-- =============================================
-- 2. ORDER BY ASC
-- =============================================

-- Q4. Display employees in ascending order of salary.
SELECT *
FROM EMPLOYEE
ORDER BY SAL ASC;

-- Q5. Display employees in ascending order of employee name.
SELECT *
FROM EMPLOYEE
ORDER BY ENAME ASC;

-- Q6. Display employees in ascending order of employee ID.
SELECT *
FROM EMPLOYEE
ORDER BY EMPNO ASC;


-- =============================================
-- 3. ORDER BY DESC
-- =============================================

-- Q7. Display employees in descending order of salary.
SELECT *
FROM EMPLOYEE
ORDER BY SAL DESC;

-- Q8. Display employees in descending order of employee name.
SELECT *
FROM EMPLOYEE
ORDER BY ENAME DESC;

-- Q9. Display employees in descending order of employee ID.
SELECT *
FROM EMPLOYEE
ORDER BY EMPNO DESC;


-- =============================================
-- 4. ORDER BY with Multiple Columns
-- =============================================

-- Q10. Sort employees by department number and then by salary.
SELECT *
FROM EMPLOYEE
ORDER BY DEPTNO ASC, SAL ASC;

-- Q11. Sort employees by department number in ascending
--      order and salary in descending order.
SELECT *
FROM EMPLOYEE
ORDER BY DEPTNO ASC, SAL DESC;

-- Q12. Sort employees by job and then by employee name.
SELECT *
FROM EMPLOYEE
ORDER BY JOB ASC, ENAME ASC;

-- Q13. Sort employees by job in descending order
--      and salary in ascending order.
SELECT *
FROM EMPLOYEE
ORDER BY JOB DESC, SAL ASC;


-- =============================================
-- 5. ORDER BY with Specific Columns
-- =============================================

-- Q14. Display employee names and salaries in ascending
--      order of salary.
SELECT ENAME, SAL
FROM EMPLOYEE
ORDER BY SAL ASC;

-- Q15. Display employee names and salaries in descending
--      order of salary.
SELECT ENAME, SAL
FROM EMPLOYEE
ORDER BY SAL DESC;

-- Q16. Display department names in alphabetical order.
SELECT DNAME
FROM DEPT
ORDER BY DNAME ASC;


-- =============================================
-- 6. Practice Questions
-- =============================================

-- Q17. Display employees in ascending order of hire date.
SELECT HIREDATE
FROM EMP
ORDER BY HIREDATE ASC;

-- Q18. Display employees in descending order of hire date.
SELECT HIREDATE
FROM EMP
ORDER BY HIREDATE DESC;

-- Q19. Display employees in ascending order of department number.
SELECT DEPTNO
FROM EMP
ORDER BY DEPTNO ASC;

-- Q20. Display employees in descending order of department number.
SELECT *
FROM EMP
ORDER BY DEPTNO DESC;

-- Q21. Display employee names and jobs sorted by job.
SELECT ENAME, JOB
FROM EMP
ORDER BY JOB;

-- Q22. Sort employees by salary descending and employee name ascending.
SELECT *
FROM EMP
ORDER BY SAL DESC, ENAME ASC;

-- Q23. Sort job by job name in descending order.
SELECT JOB
FROM EMP
ORDER BY JOB DESC;

-- Q24. Sort students by student name in ascending order.
SELECT *
FROM STUDENT_DETAILS
ORDER BY STUDENT_NAME;

-- Q25. Sort employees by department number, job, and salary.
SELECT *
FROM EMP
ORDER BY DEPTNO, JOB, SAL;