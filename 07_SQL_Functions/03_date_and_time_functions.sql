-- =============================================
-- 07_SQL_Functions
-- 03_Date_and_Time_Functions
-- File: date_and_time_functions.sql
-- Database: sql_server_practice
-- =============================================

USE sql_server_practice;
GO

-- =============================================
-- DATE AND TIME FUNCTIONS
-- =============================================

-- 1. Display the current system date and time.
SELECT GETDATE() AS CURRENT_DATE_TIME;


-- 2. Display the current system date and time with higher precision.
SELECT SYSDATETIME() AS CURRENT_DATE_TIME;


-- 3. Display the current UTC date and time.
SELECT GETUTCDATE() AS UTC_DATE_TIME;


-- 4. Display the current year.
SELECT YEAR(GETDATE()) AS CURRENT_YEAR;


-- 5. Display the current month number.
SELECT MONTH(GETDATE()) AS CURRENT_MONTH;


-- 6. Display the current day of the month.
SELECT DAY(GETDATE()) AS CURRENT_DAY;


-- 7. Display employee names and their joining years.
SELECT
    ENAME,
    YEAR(JOINING_DATE) AS JOINING_YEAR
FROM EMPLOYEE;


-- 8. Display employee names and their joining month numbers.
SELECT
    ENAME,
    MONTH(JOINING_DATE) AS JOINING_MONTH
FROM EMPLOYEE;


-- 9. Display employee names and their joining days.
SELECT
    ENAME,
    DAY(JOINING_DATE) AS JOINING_DAY
FROM EMPLOYEE;


-- 10. Extract the year from the joining date using DATEPART.
SELECT
    ENAME,
    DATEPART(YEAR, JOINING_DATE) AS JOINING_YEAR
FROM EMPLOYEE;


-- 11. Extract the month from the joining date using DATEPART.
SELECT
    ENAME,
    DATEPART(MONTH, JOINING_DATE) AS JOINING_MONTH
FROM EMPLOYEE;


-- 12. Extract the day from the joining date using DATEPART.
SELECT
    ENAME,
    DATEPART(DAY, JOINING_DATE) AS JOINING_DAY
FROM EMPLOYEE;


-- 13. Display the full month name using DATENAME.
SELECT
    ENAME,
    DATENAME(MONTH, JOINING_DATE) AS JOINING_MONTH_NAME
FROM EMPLOYEE;


-- 14. Display the weekday name using DATENAME.
SELECT
    ENAME,
    DATENAME(WEEKDAY, JOINING_DATE) AS JOINING_WEEKDAY
FROM EMPLOYEE;


-- 15. Add 1 year to the current date.
SELECT DATEADD(YEAR, 1, GETDATE()) AS DATE_AFTER_ONE_YEAR;


-- 16. Subtract 1 year from the current date.
SELECT DATEADD(YEAR, -1, GETDATE()) AS DATE_BEFORE_ONE_YEAR;


-- 17. Add 3 months to the current date.
SELECT DATEADD(MONTH, 3, GETDATE()) AS DATE_AFTER_THREE_MONTHS;


-- 18. Subtract 10 days from the current date.
SELECT DATEADD(DAY, -10, GETDATE()) AS DATE_BEFORE_TEN_DAYS;


-- 19. Add 30 days to each employee's joining date.
SELECT
    ENAME,
    JOINING_DATE,
    DATEADD(DAY, 30, JOINING_DATE) AS DATE_AFTER_30_DAYS
FROM EMPLOYEE;


-- 20. Display the difference between two dates in years.
SELECT DATEDIFF(YEAR, '20200101', GETDATE()) AS YEAR_DIFFERENCE;


-- 21. Display the difference between two dates in months.
SELECT DATEDIFF(MONTH, '20200101', GETDATE()) AS MONTH_DIFFERENCE;


-- 22. Display the difference between two dates in days.
SELECT DATEDIFF(DAY, '20200101', GETDATE()) AS DAY_DIFFERENCE;


-- 23. Calculate the number of years between employee joining dates and today.
SELECT
    ENAME,
    JOINING_DATE,
    DATEDIFF(YEAR, JOINING_DATE, GETDATE()) AS YEARS_SINCE_JOINING
FROM EMPLOYEE;


-- 24. Calculate the number of days between employee joining dates and today.
SELECT
    ENAME,
    JOINING_DATE,
    DATEDIFF(DAY, JOINING_DATE, GETDATE()) AS DAYS_SINCE_JOINING
FROM EMPLOYEE;


-- 25. Display the last day of the current month.
SELECT EOMONTH(GETDATE()) AS LAST_DAY_OF_CURRENT_MONTH;


-- 26. Display the last day of the next month.
SELECT EOMONTH(GETDATE(), 1) AS LAST_DAY_OF_NEXT_MONTH;


-- 27. Display the last day of the previous month.
SELECT EOMONTH(GETDATE(), -1) AS LAST_DAY_OF_PREVIOUS_MONTH;


-- 28. Display the last day of the month for each employee's joining date.
SELECT
    ENAME,
    JOINING_DATE,
    EOMONTH(JOINING_DATE) AS JOINING_MONTH_END
FROM EMPLOYEE;


-- 29. Display the current date in DD-MM-YYYY format.
SELECT FORMAT(GETDATE(), 'dd-MM-yyyy') AS FORMATTED_DATE;


-- 30. Display the current date in YYYY-MM-DD format.
SELECT FORMAT(GETDATE(), 'yyyy-MM-dd') AS FORMATTED_DATE;


-- 31. Display the current date with the full month name.
SELECT FORMAT(GETDATE(), 'dd MMMM yyyy') AS FORMATTED_DATE;


-- 32. Display employee joining dates in DD-MMM-YYYY format.
SELECT
    ENAME,
    FORMAT(JOINING_DATE, 'dd-MMM-yyyy') AS FORMATTED_JOINING_DATE
FROM EMPLOYEE;


-- =============================================
-- PRACTICE QUESTIONS
-- =============================================

-- 33. Display the current date and time using GETDATE().
SELECT GETDATE() AS [Current date time];

-- 34. Display the current system date and time using SYSDATETIME().
SELECT SYSDATETIME();

-- 35. Display the current UTC date and time using GETUTCDATE().
SELECT GETUTCDATE();

-- 36. Display employee names and their joining years.
SELECT ENAME,
       YEAR(HIREDATE) AS JOINING_YEAR
FROM EMP;

-- 37. Display employees who joined in a particular year using YEAR().
SELECT *
FROM EMP
WHERE YEAR(HIREDATE) = 1981;

-- 38. Display employee names and their joining month names using DATENAME().
SELECT ENAME,
        DATENAME(MONTH, HIREDATE) AS JOINING_MONTH
FROM EMP;

-- 39. Display employee names and the weekday on which they joined.
SELECT ENAME,
        DATENAME(WEEKDAY, HIREDATE) AS JOINING_WEEKDAY
FROM EMP;

-- 40. Add 5 years to every employee's joining date.
SELECT HIREDATE,
        DATEADD(YEAR, 5, HIREDATE) AS AFTER_5_YEARS
FROM EMP;

-- 41. Subtract 2 months from every employee's joining date.
SELECT ENAME, HIREDATE,
        DATEADD(MONTH, -2, HIREDATE) AS [-2 Months]
FROM EMP;

-- 42. Calculate the number of months each employee has worked since joining.
SELECT ENAME,
        DATEDIFF(MONTH, HIREDATE, GETDATE()) AS MONTHS_SINCE_JOINING
FROM EMP;

-- 43. Calculate the number of days between two dates of your choice.
SELECT DATEDIFF(DAY, '2005-04-14', GETDATE());

-- 44. Display the last day of the month for a date of your choice.
SELECT EOMONTH('2005-05-14', -1) AS [LAST DAY OF LAST MONTH];

-- 45. Display the last day of the next month for each employee's joining date.
SELECT ENAME, EOMONTH(HIREDATE, 1) [Last day of next month]
FROM EMP;

-- 46. Format employee joining dates as DD-MM-YYYY.
SELECT ENAME, HIREDATE,
        FORMAT(HIREDATE, 'dd-MM-yyyy') AS DDMMYYYY_Format
FROM EMP;

-- 47. Display employee joining dates with the full month name.
SELECT ENAME, HIREDATE,
        FORMAT(HIREDATE, 'dd-MMMM-yyyy') AS Full_Month_Name
FROM EMP;

-- 48. Display the current date in DD/MM/YYYY format.
SELECT ENAME, HIREDATE,
        FORMAT(HIREDATE, 'dd/MM/yyyy') AS ANOTHER_FORMAT
FROM EMP;

-- 49. Display the year, month, and day of each employee's joining date
--     using DATEPART().
SELECT ENAME, HIREDATE,
        DATEPART(YEAR, HIREDATE) AS [YEAR],
        DATEPART(MONTH, HIREDATE) AS [MONTH],
        DATEPART(DAY, HIREDATE) AS [DAY]
FROM EMP;

-- 50. Calculate the number of years and months since each employee joined.
SELECT ENAME, HIREDATE,
       DATEDIFF(MONTH, HIREDATE, GETDATE()) / 12 AS YEARS,
       DATEDIFF(MONTH, HIREDATE, GETDATE()) % 12 AS MONTHS
FROM EMP;