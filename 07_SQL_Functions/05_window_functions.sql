-- =============================================
-- 07_SQL_Functions
-- 05_Window_Functions
-- File: window_functions.sql
-- Database: sql_server_practice
-- =============================================

USE sql_server_practice;
GO

-- =============================================
-- BASIC WINDOW FUNCTIONS
-- =============================================

-- 1. Display employee names and salaries with the overall average salary.
SELECT
    ENAME,
    SAL,
    AVG(SAL) OVER() AS OVERALL_AVERAGE_SALARY
FROM EMPLOYEE;


-- 2. Display employee names and salaries with the total salary.
SELECT
    ENAME,
    SAL,
    SUM(SAL) OVER() AS TOTAL_SALARY
FROM EMPLOYEE;


-- 3. Display employee names and salaries with the employee count.
SELECT
    ENAME,
    SAL,
    COUNT(*) OVER() AS TOTAL_EMPLOYEES
FROM EMPLOYEE;


-- 4. Calculate the average salary department-wise without grouping rows.
SELECT
    ENAME,
    DEPTNO,
    SAL,
    AVG(SAL) OVER(PARTITION BY DEPTNO) AS DEPARTMENT_AVERAGE_SALARY
FROM EMPLOYEE;


-- 5. Calculate the total salary department-wise.
SELECT
    ENAME,
    DEPTNO,
    SAL,
    SUM(SAL) OVER(PARTITION BY DEPTNO) AS DEPARTMENT_TOTAL_SALARY
FROM EMPLOYEE;


-- 6. Count employees department-wise.
SELECT
    ENAME,
    DEPTNO,
    COUNT(*) OVER(PARTITION BY DEPTNO) AS DEPARTMENT_EMPLOYEE_COUNT
FROM EMPLOYEE;


-- 7. Calculate the highest salary in each department.
SELECT
    ENAME,
    DEPTNO,
    SAL,
    MAX(SAL) OVER(PARTITION BY DEPTNO) AS DEPARTMENT_MAX_SALARY
FROM EMPLOYEE;


-- 8. Calculate the lowest salary in each department.
SELECT
    ENAME,
    DEPTNO,
    SAL,
    MIN(SAL) OVER(PARTITION BY DEPTNO) AS DEPARTMENT_MIN_SALARY
FROM EMPLOYEE;


-- =============================================
-- RANKING WINDOW FUNCTIONS
-- =============================================

-- 9. Assign a unique row number based on salary.
SELECT
    ENAME,
    SAL,
    ROW_NUMBER() OVER(ORDER BY SAL DESC) AS ROW_NUMBER
FROM EMPLOYEE;


-- 10. Assign row numbers separately within each department.
SELECT
    ENAME,
    DEPTNO,
    SAL,
    ROW_NUMBER() OVER(
        PARTITION BY DEPTNO
        ORDER BY SAL DESC
    ) AS DEPARTMENT_ROW_NUMBER
FROM EMPLOYEE;


-- 11. Rank employees based on salary.
SELECT
    ENAME,
    SAL,
    RANK() OVER(ORDER BY SAL DESC) AS SALARY_RANK
FROM EMPLOYEE;


-- 12. Rank employees department-wise based on salary.
SELECT
    ENAME,
    DEPTNO,
    SAL,
    RANK() OVER(
        PARTITION BY DEPTNO
        ORDER BY SAL DESC
    ) AS DEPARTMENT_RANK
FROM EMPLOYEE;


-- 13. Rank employees based on salary without gaps in ranking.
SELECT
    ENAME,
    SAL,
    DENSE_RANK() OVER(ORDER BY SAL DESC) AS SALARY_DENSE_RANK
FROM EMPLOYEE;


-- 14. Divide employees into 3 groups based on salary.
SELECT
    ENAME,
    SAL,
    NTILE(3) OVER(ORDER BY SAL DESC) AS SALARY_GROUP
FROM EMPLOYEE;


-- =============================================
-- OFFSET WINDOW FUNCTIONS
-- =============================================

-- 15. Display the previous employee's salary.
SELECT
    ENAME,
    SAL,
    LAG(SAL) OVER(ORDER BY EMPNO) AS PREVIOUS_SALARY
FROM EMPLOYEE;


-- 16. Display the next employee's salary.
SELECT
    ENAME,
    SAL,
    LEAD(SAL) OVER(ORDER BY EMPNO) AS NEXT_SALARY
FROM EMPLOYEE;


-- 17. Compare each employee's salary with the previous employee's salary.
SELECT
    ENAME,
    SAL,
    LAG(SAL) OVER(ORDER BY EMPNO) AS PREVIOUS_SALARY,
    SAL - LAG(SAL) OVER(ORDER BY EMPNO) AS SALARY_DIFFERENCE
FROM EMPLOYEE;


-- 18. Display the previous employee's salary within the same department.
SELECT
    ENAME,
    DEPTNO,
    SAL,
    LAG(SAL) OVER(
        PARTITION BY DEPTNO
        ORDER BY EMPNO
    ) AS PREVIOUS_DEPARTMENT_SALARY
FROM EMPLOYEE;


-- 19. Display the next employee's salary within the same department.
SELECT
    ENAME,
    DEPTNO,
    SAL,
    LEAD(SAL) OVER(
        PARTITION BY DEPTNO
        ORDER BY EMPNO
    ) AS NEXT_DEPARTMENT_SALARY
FROM EMPLOYEE;


-- =============================================
-- VALUE WINDOW FUNCTIONS
-- =============================================

-- 20. Display the highest salary across all employees in every row.
SELECT
    ENAME,
    SAL,
    FIRST_VALUE(SAL) OVER(
        ORDER BY SAL DESC
    ) AS HIGHEST_SALARY
FROM EMPLOYEE;


-- 21. Display the lowest salary across all employees in every row.
SELECT
    ENAME,
    SAL,
    FIRST_VALUE(SAL) OVER(
        ORDER BY SAL ASC
    ) AS LOWEST_SALARY
FROM EMPLOYEE;


-- 22. Display the highest salary in each department.
SELECT
    ENAME,
    DEPTNO,
    SAL,
    FIRST_VALUE(SAL) OVER(
        PARTITION BY DEPTNO
        ORDER BY SAL DESC
    ) AS DEPARTMENT_HIGHEST_SALARY
FROM EMPLOYEE;


-- 23. Display the last salary in the ordered window.
-- The explicit frame makes the final row of the partition available.
SELECT
    ENAME,
    SAL,
    LAST_VALUE(SAL) OVER(
        ORDER BY SAL
        ROWS BETWEEN UNBOUNDED PRECEDING
        AND UNBOUNDED FOLLOWING
    ) AS LAST_SALARY
FROM EMPLOYEE;


-- =============================================
-- WINDOW FRAME
-- =============================================

-- 24. Calculate a running total of employee salaries.
SELECT
    ENAME,
    SAL,
    SUM(SAL) OVER(
        ORDER BY EMPNO
        ROWS BETWEEN UNBOUNDED PRECEDING
        AND CURRENT ROW
    ) AS RUNNING_TOTAL
FROM EMPLOYEE;


-- 25. Calculate a running average of employee salaries.
SELECT
    ENAME,
    SAL,
    AVG(SAL) OVER(
        ORDER BY EMPNO
        ROWS BETWEEN UNBOUNDED PRECEDING
        AND CURRENT ROW
    ) AS RUNNING_AVERAGE
FROM EMPLOYEE;


-- 26. Calculate a running total separately for each department.
SELECT
    ENAME,
    DEPTNO,
    SAL,
    SUM(SAL) OVER(
        PARTITION BY DEPTNO
        ORDER BY EMPNO
        ROWS BETWEEN UNBOUNDED PRECEDING
        AND CURRENT ROW
    ) AS DEPARTMENT_RUNNING_TOTAL
FROM EMPLOYEE;


-- 27. Calculate the total salary of the current and previous employee.
SELECT
    ENAME,
    SAL,
    SUM(SAL) OVER(
        ORDER BY EMPNO
        ROWS BETWEEN 1 PRECEDING
        AND CURRENT ROW
    ) AS CURRENT_AND_PREVIOUS_TOTAL
FROM EMPLOYEE;


-- 28. Calculate the average salary of the current and next employee.
SELECT
    ENAME,
    SAL,
    AVG(SAL) OVER(
        ORDER BY EMPNO
        ROWS BETWEEN CURRENT ROW
        AND 1 FOLLOWING
    ) AS CURRENT_AND_NEXT_AVERAGE
FROM EMPLOYEE;


-- =============================================
-- PRACTICE QUESTIONS
-- =============================================

-- 29. Display each employee's salary along with the overall average salary
--     using AVG() OVER().
SELECT ENAME, SAL,
        AVG(SAL) OVER() AS AVERAGE_SALARY
FROM EMP;

-- 30. Display each employee's salary along with the overall total salary
--     using SUM() OVER().
SELECT ENAME, SAL,
        SUM(SAL) OVER() AS TOTAL_SALARY
FROM EMP;

-- 31. Count the total employees using COUNT() OVER().
SELECT ENAME,
        COUNT(*) OVER() AS TOTAL_EMPLOYEES
FROM EMP;

-- 32. Calculate the average salary department-wise using PARTITION BY.
SELECT ENAME, SAL, DEPTNO,
        AVG(SAL) OVER(PARTITION BY DEPTNO) AS AVERAGE_SALARY
FROM EMP;

-- 33. Calculate the total salary department-wise using PARTITION BY.
SELECT ENAME, SAL, DEPTNO,
        SUM(SAL) OVER(PARTITION BY DEPTNO) AS TOTAL_SALARY
FROM EMP;

-- 34. Find the highest and lowest salary in each department using window functions.
SELECT ENAME, SAL, DEPTNO,
        MAX(SAL) OVER(PARTITION BY DEPTNO) AS HIGHEST_SALARY,
        MIN(SAL) OVER(PARTITION BY DEPTNO) AS LOWEST_SALARY
FROM EMP;

-- 35. Assign row numbers to employees based on salary in descending order.
SELECT ENAME, SAL,
        ROW_NUMBER() OVER(ORDER BY SAL DESC) AS [ROW_NUMBER]
FROM EMP;

-- 36. Assign row numbers separately within each department.
SELECT ENAME, SAL, DEPTNO,
        ROW_NUMBER() OVER(PARTITION BY DEPTNO ORDER BY SAL) AS [ROW_NUMBER]
FROM EMP;

-- 37. Rank employees based on salary using RANK().
SELECT ENAME, SAL,
        RANK() OVER(ORDER BY SAL ASC) AS RANK
FROM EMP;

-- 38. Rank employees based on salary using DENSE_RANK().
SELECT ENAME, SAL,
        DENSE_RANK() OVER(ORDER BY SAL ASC) AS DENSE_RANK
FROM EMP;

-- 39. Compare the results of RANK() and DENSE_RANK().
SELECT ENAME, SAL,
        RANK() OVER(ORDER BY SAL ASC) AS RANK,
        DENSE_RANK() OVER(ORDER BY SAL ASC) DENSE_RANK
FROM EMP;

-- 40. Divide employees into 4 groups based on salary using NTILE().
SELECT ENAME, SAL,
        NTILE(4) OVER(ORDER BY SAL ASC) AS GROUPS
FROM EMP;

-- 41. Display the previous employee's salary using LAG().
SELECT ENAME, SAL,
        LAG(SAL) OVER(ORDER BY SAL DESC) AS PREVIOUS_EMP_SALARY
FROM EMP;

-- 42. Display the next employee's salary using LEAD().
SELECT ENAME, SAL,
        LEAD(SAL) OVER(ORDER BY SAL DESC) AS NEXT_EMP_SALARY
FROM EMP;

-- 43. Calculate the difference between each employee's salary and
--     the previous employee's salary.
SELECT ENAME, SAL,
        LAG(SAL) OVER(ORDER BY SAL ASC) AS PREVIOUS_EMP_SALARY,
        SAL - LAG(SAL) OVER(ORDER BY SAL ASC) AS DIFFERENCE
FROM EMP;

-- 44. Display the highest salary in each department using FIRST_VALUE().
SELECT ENAME, SAL, DEPTNO,
        FIRST_VALUE(SAL) OVER(PARTITION BY DEPTNO ORDER BY SAL DESC) AS HIGHEST_SALARY
FROM EMP;

-- 45. Display the lowest salary in each department using FIRST_VALUE().
SELECT ENAME, SAL, DEPTNO,
        FIRST_VALUE(SAL) OVER(PARTITION BY DEPTNO ORDER BY SAL ASC) AS LOWEST_SALARY
FROM EMP;

-- 46. Display the last salary in the ordered result using LAST_VALUE()
--     with an appropriate window frame.
SELECT ENAME, SAL, DEPTNO,
        LAST_VALUE(SAL) OVER(ORDER BY SAL ASC
        ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS LAST_VALUE
FROM EMP;

-- 47. Calculate the running total of salaries ordered by EMPNO.
SELECT ENAME, SAL,
        SUM(SAL) OVER(ORDER BY EMPNO ASC
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS RUNNING_TOTAL
FROM EMP;

-- 48. Calculate the running average of salaries ordered by EMPNO.
SELECT ENAME, SAL,
        AVG(SAL) OVER(ORDER BY EMPNO ASC
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS RUNNING_AVERAGE
FROM EMP;

-- 49. Calculate the running total of salaries separately for each department.
SELECT ENAME, SAL, DEPTNO,
        SUM(SAL) OVER(PARTITION BY DEPTNO
        ORDER BY SAL ASC
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS RUNNING_TOTAL
FROM EMP;

-- 50. Calculate the total salary of the current and previous employee
--     using a window frame.
SELECT ENAME, SAL,
       LAG(SAL) OVER(ORDER BY SAL ASC) AS PREVIOUS_EMP_SALARY,
       SAL + LAG(SAL) OVER(ORDER BY SAL ASC) AS TOTAL_SALARY
FROM EMP;