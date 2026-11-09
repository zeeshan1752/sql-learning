-- =============================================
-- 07_SQL_Functions
-- 06_Conversion_Functions
-- File: conversion_functions.sql
-- Database: sql_server_practice
-- =============================================

USE sql_server_practice;
GO

-- =============================================
-- CONVERSION FUNCTIONS
-- =============================================

-- 1. Convert an integer into a VARCHAR value using CAST().
SELECT CAST(100 AS VARCHAR(10)) AS CONVERTED_VALUE;


-- 2. Convert a decimal value into an integer using CAST().
SELECT CAST(125.75 AS INT) AS CONVERTED_VALUE;


-- 3. Convert a string into an integer using CAST().
SELECT CAST('250' AS INT) AS CONVERTED_VALUE;


-- 4. Convert an integer into a VARCHAR value using CONVERT().
SELECT CONVERT(VARCHAR(10), 100) AS CONVERTED_VALUE;


-- 5. Convert a string into a DATE using CONVERT().
SELECT CONVERT(DATE, '20261102', 112) AS CONVERTED_DATE;


-- 6. Convert a DATE into VARCHAR using CONVERT().
SELECT CONVERT(VARCHAR(10), GETDATE(), 105) AS FORMATTED_DATE;


-- 7. Convert employee salary into an integer.
SELECT
    ENAME,
    SAL,
    CAST(SAL AS INT) AS SALARY_INTEGER
FROM EMPLOYEE;


-- 8. Convert employee salary into DECIMAL.
SELECT
    ENAME,
    SAL,
    CAST(SAL AS DECIMAL(10, 2)) AS SALARY_DECIMAL
FROM EMPLOYEE;


-- 9. Convert employee number into VARCHAR.
SELECT
    EMPNO,
    CAST(EMPNO AS VARCHAR(10)) AS EMPLOYEE_NUMBER_TEXT
FROM EMPLOYEE;


-- 10. Convert employee joining date into VARCHAR.
SELECT
    ENAME,
    JOINING_DATE,
    CONVERT(VARCHAR(10), JOINING_DATE, 105) AS FORMATTED_JOINING_DATE
FROM EMPLOYEE;


-- 11. Convert a valid numeric string into INT using TRY_CAST().
SELECT TRY_CAST('500' AS INT) AS CONVERTED_VALUE;


-- 12. Try converting an invalid numeric string into INT.
SELECT TRY_CAST('ABC' AS INT) AS CONVERTED_VALUE;


-- 13. Try converting a valid numeric string into DECIMAL.
SELECT TRY_CAST('125.75' AS DECIMAL(10, 2)) AS CONVERTED_VALUE;


-- 14. Try converting an invalid date string into DATE.
SELECT TRY_CAST('INVALID_DATE' AS DATE) AS CONVERTED_DATE;


-- 15. Convert a valid numeric string into INT using TRY_CONVERT().
SELECT TRY_CONVERT(INT, '750') AS CONVERTED_VALUE;


-- 16. Try converting an invalid numeric string into INT.
SELECT TRY_CONVERT(INT, 'HELLO') AS CONVERTED_VALUE;


-- 17. Convert a date string into DATE using TRY_CONVERT().
SELECT TRY_CONVERT(DATE, '20261102', 112) AS CONVERTED_DATE;


-- 18. Try converting an invalid date string using TRY_CONVERT().
SELECT TRY_CONVERT(DATE, 'NOT_A_DATE') AS CONVERTED_DATE;


-- 19. Convert a string containing a number into INT using PARSE().
SELECT PARSE('1000' AS INT) AS CONVERTED_VALUE;


-- 20. Convert a string into DATE using PARSE().
SELECT PARSE('02 November 2026' AS DATE) AS CONVERTED_DATE;


-- 21. Try converting a valid numeric string using TRY_PARSE().
SELECT TRY_PARSE('1500' AS INT) AS CONVERTED_VALUE;


-- 22. Try converting an invalid numeric string using TRY_PARSE().
SELECT TRY_PARSE('ABC' AS INT) AS CONVERTED_VALUE;


-- 23. Try converting an invalid date string using TRY_PARSE().
SELECT TRY_PARSE('NOT_A_DATE' AS DATE) AS CONVERTED_DATE;


-- 24. Compare CAST() and TRY_CAST().
SELECT
    CAST('100' AS INT) AS CAST_RESULT,
    TRY_CAST('ABC' AS INT) AS TRY_CAST_RESULT;


-- 25. Compare CONVERT() and TRY_CONVERT().
SELECT
    CONVERT(INT, '200') AS CONVERT_RESULT,
    TRY_CONVERT(INT, 'ABC') AS TRY_CONVERT_RESULT;


-- 26. Display employee joining dates in DD-MM-YYYY format.
SELECT
    ENAME,
    CONVERT(VARCHAR(10), JOINING_DATE, 105) AS JOINING_DATE_FORMATTED
FROM EMPLOYEE;


-- =============================================
-- PRACTICE QUESTIONS
-- =============================================

-- 27. Convert the integer 500 into VARCHAR using CAST().
SELECT CAST(500 AS VARCHAR(5)) AS CONVERTED;

-- 28. Convert the decimal value 99.99 into INT using CAST().
SELECT CAST(99.99 AS INT) AS CONVERTED_VALUE;

-- 29. Convert the string '1500' into INT using CAST().
SELECT CAST('1500' AS INT) AS CONVERTED_VALUE;

-- 30. Convert the integer 250 into VARCHAR using CONVERT().
SELECT CONVERT(VARCHAR(5), 250) AS CONVERTED_VALUE;

-- 31. Convert the string '20261225' into DATE using CONVERT().
SELECT CONVERT(DATE, '20261225') AS CONVERTED_DATE;

-- 32. Convert the current date into VARCHAR using CONVERT().
SELECT CONVERT(VARCHAR(10), GETDATE(), 101) AS CONVERTED_DATE;

-- 33. Display employee salaries as DECIMAL(10, 2).
SELECT SAL, CONVERT(DECIMAL(10, 2), SAL) AS COVERTED
FROM EMP;

SELECT SAL, CAST(SAL AS DECIMAL(10, 2)) AS CONVERTED
FROM EMP;

-- 34. Display employee numbers as VARCHAR.
SELECT EMPNO, CAST(EMPNO AS VARCHAR(10)) AS CONVERTED
FROM EMP;

-- 35. Display employee joining dates in DD-MM-YYYY format.
SELECT HIREDATE AS JOINING_DATE,
        CONVERT(VARCHAR(10), HIREDATE, 105) AS CONVERTED_DATE
FROM EMP;

-- 36. Convert the string '750' into INT using TRY_CAST().
SELECT TRY_CAST(750 AS INT) AS COVERTED_VALUE;

-- 37. Try converting the string 'XYZ' into INT using TRY_CAST().
SELECT TRY_CAST('XYZ' AS INT) AS CONVERTED;

-- 38. Convert the string '450.75' into DECIMAL using TRY_CAST().
SELECT TRY_CAST('450.75' AS DECIMAL(10, 2)) AS CONVERTED;

-- 39. Try converting an invalid date string into DATE using TRY_CAST().
SELECT TRY_CAST('2026-15-40' AS DATE) AS CONVERTED_DATE;

-- 40. Convert the string '900' into INT using TRY_CONVERT().
SELECT TRY_CONVERT(INT, '900') AS CONVERTED_INT;

-- 41. Try converting the string 'HELLO' into INT using TRY_CONVERT().
SELECT TRY_CONVERT(INT, 'HELLO') AS COVERTED_STRING;

-- 42. Convert the string '20261231' into DATE using TRY_CONVERT().
SELECT TRY_CONVERT(DATE, '20261231') AS COVERTED_DATE;

-- 43. Convert the string '2500' into INT using PARSE().
SELECT PARSE('2500' AS INT) AS CONVERTED;

-- 44. Convert the string '31 December 2026' into DATE using PARSE().
SELECT PARSE('31 December 2026' AS DATE) AS COVERTED_DATE;

-- 45. Try converting the string 'ABC' into INT using TRY_PARSE().
SELECT PARSE('ABC' AS INT) AS CONVERTED; -- ERROR

-- 46. Compare the results of CAST() and TRY_CAST() with valid values.
SELECT
    ENAME,
    CAST(SAL AS INT) AS USING_CAST,
    TRY_CAST(SAL AS INT) AS USING_TRY_CAST
FROM EMP;

-- 47. Compare the results of CAST() and TRY_CAST() with invalid values.
SELECT ENAME,
        CAST(ENAME AS INT) AS USING_CAST
FROM EMP; -- ERROR

SELECT ENAME,
        TRY_CAST(ENAME AS INT) AS USING_TRY_CAST
FROM EMP; -- ONLY NULL VALUES

-- 48. Compare the results of CONVERT() and TRY_CONVERT() with invalid values.
SELECT ENAME,
        CONVERT(INT, ENAME) AS USING_CONVERT
FROM EMP; -- ERROR

SELECT ENAME,
        TRY_CONVERT(INT, ENAME) AS USING_TRY_CONVERT
FROM EMP; -- ONLY NULL VALUES