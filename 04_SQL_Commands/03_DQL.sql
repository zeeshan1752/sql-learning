-- DQL: Data Query Language
-- Platform: Microsoft SQL Server
-- Database: sql_server_practice
-- Table: EMP

USE sql_server_practice;


-- ==========================================
-- 1. BASIC SELECT
-- ==========================================

-- Q1. Display all records from EMP.

SELECT * FROM EMP;


-- Q2. Display employee number and employee name.

SELECT EMPNO, ENAME
FROM EMP;


-- Q3. Display employee name, job and salary.

SELECT ENAME, JOB, SAL
FROM EMP;


-- Q4. Display employee details with column aliases.

SELECT
    EMPNO AS Employee_ID,
    ENAME AS Employee_Name,
    SAL AS Salary
FROM EMP;


-- Q5. Display employee names and their annual salaries.

SELECT
    ENAME,
    SAL * 12 AS Annual_Salary
FROM EMP;


-- ==========================================
-- 2. WHERE CLAUSE
-- ==========================================

-- Q6. Display employees working as CLERK.

SELECT *
FROM EMP
WHERE JOB = 'CLERK';


-- Q7. Display employees earning more than 2000.

SELECT *
FROM EMP
WHERE SAL > 2000;


-- Q8. Display employees earning less than 1500.

SELECT *
FROM EMP
WHERE SAL < 1500;


-- Q9. Display employees working in department 20.

SELECT *
FROM EMP
WHERE DEPTNO = 20;


-- Q10. Display employees who are not working in department 10.

SELECT *
FROM EMP
WHERE DEPTNO <> 10;


-- ==========================================
-- 3. AND, OR AND NOT OPERATORS
-- ==========================================

-- Q11. Display employees working as SALESMAN
-- and earning more than 1500.

SELECT *
FROM EMP
WHERE JOB = 'SALESMAN'
AND SAL > 1500;


-- Q12. Display employees working in department 10 or 20.

SELECT *
FROM EMP
WHERE DEPTNO = 10
OR DEPTNO = 20;


-- Q13. Display employees who are not SALESMAN.

SELECT *
FROM EMP
WHERE NOT JOB = 'SALESMAN';


-- Q14. Display employees working as CLERK
-- or earning more than 3000.

SELECT *
FROM EMP
WHERE JOB = 'CLERK'
OR SAL > 3000;


-- ==========================================
-- 4. BETWEEN OPERATOR
-- ==========================================

-- Q15. Display employees earning between 1000 and 3000.

SELECT *
FROM EMP
WHERE SAL BETWEEN 1000 AND 3000;


-- Q16. Display employees hired between
-- 1 January 1981 and 31 December 1981.

SELECT *
FROM EMP
WHERE HIREDATE BETWEEN '19810101' AND '19811231';


-- Q17. Display employees whose employee numbers
-- are between 7500 and 7900.

SELECT *
FROM EMP
WHERE EMPNO BETWEEN 7500 AND 7900;


-- ==========================================
-- 5. IN AND NOT IN OPERATORS
-- ==========================================

-- Q18. Display employees working in departments 10, 20 and 30.

SELECT *
FROM EMP
WHERE DEPTNO IN (10, 20, 30);


-- Q19. Display employees whose jobs are CLERK or ANALYST.

SELECT *
FROM EMP
WHERE JOB IN ('CLERK', 'ANALYST');


-- Q20. Display employees not working in departments 10 and 20.

SELECT *
FROM EMP
WHERE DEPTNO NOT IN (10, 20);


-- ==========================================
-- 6. LIKE OPERATOR
-- ==========================================

-- Q21. Display employees whose names start with S.

SELECT *
FROM EMP
WHERE ENAME LIKE 'S%';


-- Q22. Display employees whose names end with N.

SELECT *
FROM EMP
WHERE ENAME LIKE '%N';


-- Q23. Display employees whose names contain A.

SELECT *
FROM EMP
WHERE ENAME LIKE '%A%';


-- Q24. Display employees whose names have exactly five characters.

SELECT *
FROM EMP
WHERE ENAME LIKE '_____';


-- Q25. Display employees whose second character is A.

SELECT *
FROM EMP
WHERE ENAME LIKE '_A%';


-- ==========================================
-- 7. IS NULL AND IS NOT NULL
-- ==========================================

-- Q26. Display employees who do not receive commission.

SELECT *
FROM EMP
WHERE COMM IS NULL;


-- Q27. Display employees who receive commission.

SELECT *
FROM EMP
WHERE COMM IS NOT NULL;


-- ==========================================
-- 8. DISTINCT
-- ==========================================

-- Q28. Display all unique job titles.

SELECT DISTINCT JOB
FROM EMP;


-- Q29. Display all unique department numbers.

SELECT DISTINCT DEPTNO
FROM EMP;


-- ==========================================
-- 9. ORDER BY
-- ==========================================

-- Q30. Display employees in ascending order of salary.

SELECT *
FROM EMP
ORDER BY SAL ASC;


-- Q31. Display employees in descending order of salary.

SELECT *
FROM EMP
ORDER BY SAL DESC;


-- Q32. Display employees alphabetically by name.

SELECT *
FROM EMP
ORDER BY ENAME ASC;


-- Q33. Display employees by department number
-- and salary in descending order.

SELECT *
FROM EMP
ORDER BY DEPTNO ASC, SAL DESC;


-- ==========================================
-- 10. TOP
-- ==========================================

-- Q34. Display the first five employee records.

SELECT TOP 5 *
FROM EMP;


-- Q35. Display the three highest-paid employees.

SELECT TOP 3 *
FROM EMP
ORDER BY SAL DESC;


-- Q36. Display the two lowest-paid employees.

SELECT TOP 2 *
FROM EMP
ORDER BY SAL ASC;