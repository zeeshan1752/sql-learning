-- =============================================
-- 07_SQL_Functions
-- 07_NULL_Functions
-- File: null_functions.sql
-- Database: sql_server_practice
-- =============================================

USE sql_server_practice;
GO

-- =============================================
-- NULL FUNCTIONS
-- =============================================

-- 1. Display employee names and commission values.
SELECT
    ENAME,
    COMM
FROM EMP;


-- 2. Replace NULL commission values with 0 using ISNULL().
SELECT
    ENAME,
    COMM,
    ISNULL(COMM, 0) AS COMMISSION
FROM EMP;


-- 3. Replace NULL commission values with 0 using COALESCE().
SELECT
    ENAME,
    COMM,
    COALESCE(COMM, 0) AS COMMISSION
FROM EMP;


-- 4. Replace NULL commission values with a default value.
SELECT
    ENAME,
    ISNULL(COMM, 100) AS COMMISSION
FROM EMP;


-- 5. Replace NULL commission values with a custom value.
SELECT
    ENAME,
    ISNULL(COMM, 500) AS COMMISSION
FROM EMP;


-- 6. Use COALESCE() to replace NULL commission values.
SELECT
    ENAME,
    COALESCE(COMM, 1000) AS COMMISSION
FROM EMP;


-- 7. Use COALESCE() with multiple expressions.
-- Returns the first non-NULL expression.
SELECT
    COALESCE(NULL, NULL, 1000) AS RESULT;


-- 8. Find the first available value from multiple expressions.
SELECT
    ENAME,
    COALESCE(COMM, SAL, 0) AS FIRST_AVAILABLE_VALUE
FROM EMP;


-- 9. Compare ISNULL() and COALESCE().
SELECT
    ENAME,
    ISNULL(COMM, 0) AS ISNULL_RESULT,
    COALESCE(COMM, 0) AS COALESCE_RESULT
FROM EMP;


-- =============================================
-- NULLIF()
-- =============================================

-- 10. Return NULL when both expressions are equal.
SELECT
    NULLIF(100, 100) AS RESULT;


-- 11. Return the first expression when values are different.
SELECT
    NULLIF(100, 200) AS RESULT;


-- 12. Return NULL when commission is zero.
SELECT
    ENAME,
    COMM,
    NULLIF(COMM, 0) AS COMMISSION_RESULT
FROM EMP;


-- 13. Replace zero commission with NULL.
SELECT
    ENAME,
    COMM,
    NULLIF(COMM, 0) AS COMMISSION
FROM EMP;


-- 14. Prevent division by zero using NULLIF().
SELECT
    ENAME,
    SAL,
    COMM,
    SAL / NULLIF(COMM, 0) AS SALARY_TO_COMMISSION_RATIO
FROM EMP;


-- 15. Calculate salary-to-commission ratio using decimal division.
SELECT
    ENAME,
    SAL,
    COMM,
    1.0 * SAL / NULLIF(COMM, 0) AS RATIO
FROM EMP;


-- =============================================
-- PRACTICAL COMPARISONS
-- =============================================

-- 16. Compare COUNT(*) and COUNT(COMM).
SELECT
    COUNT(*) AS TOTAL_EMPLOYEES,
    COUNT(COMM) AS EMPLOYEES_WITH_COMMISSION
FROM EMP;


-- 17. Count employees whose commission is NULL.
SELECT
    COUNT(*) AS EMPLOYEES_WITHOUT_COMMISSION
FROM EMP
WHERE COMM IS NULL;


-- 18. Count employees whose commission is not NULL.
SELECT
    COUNT(*) AS EMPLOYEES_WITH_COMMISSION
FROM EMP
WHERE COMM IS NOT NULL;


-- 19. Display employee names and replace missing commissions with 0.
SELECT
    ENAME,
    COALESCE(COMM, 0) AS COMMISSION
FROM EMP;


-- =============================================
-- PRACTICE QUESTIONS
-- =============================================

-- 20. Replace NULL commission values with 0 using ISNULL().
SELECT
    COMM,
    ISNULL(COMM, 0) AS RESULT
FROM EMP;


-- 21. Replace NULL commission values with 0 using COALESCE().
SELECT
    COMM,
    COALESCE(COMM, 0) AS COALESCE_RESULT
FROM EMP;


-- 22. Use COALESCE() with three expressions and return
-- the first non-NULL commission-related value.
SELECT
    SAL,
    COMM,
    COALESCE(COMM, SAL, 0) AS COALESCE_RESULT
FROM EMP;


-- 23. Compare ISNULL() and COALESCE() using COMM.
SELECT
    SAL,
    COMM,
    ISNULL(COMM, 0) AS ISNULL_RESULT,
    COALESCE(COMM, SAL, 0) AS COALESCE_RESULT
FROM EMP;


-- 24. Use NULLIF() to return NULL when two numbers are equal.
SELECT
    NULLIF(100, 100) AS RESULT;


-- 25. Use NULLIF() to return the first value when two numbers
-- are different.
SELECT
    NULLIF(100, 50) AS RESULT;


-- 26. Prevent division by zero while calculating the
-- salary-to-commission ratio using NULLIF().
SELECT
    SAL,
    COMM,
    ISNULL(1.0 * SAL / NULLIF(COMM, 0), 0) AS RESULT
FROM EMP;


-- 27. Count all employees and employees having a commission.
SELECT
    COUNT(*) AS ALL_EMPLOYEE,
    COUNT(COMM) AS HAVE_COMM
FROM EMP;


-- 28. Count employees whose commission is NULL.
SELECT
    COUNT(*) - COUNT(COMM) AS NULL_COMM
FROM EMP;


-- 29. Count employees whose commission is not NULL.
SELECT
    COUNT(COMM) AS NOT_NULL
FROM EMP;


-- 30. Display employee names and show 0 when the commission
-- is NULL.
SELECT
    ENAME,
    COMM,
    ISNULL(COMM, 0) AS COMMISSION
FROM EMP;


-- 31. Use NULLIF() to replace a zero commission with NULL.
SELECT
    ENAME,
    COMM,
    NULLIF(COMM, 0) AS COMMISSION
FROM EMP;