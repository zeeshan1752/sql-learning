-- =============================================
-- 07_SQL_Functions
-- 01_String_Functions
-- File: string_functions.sql
-- Database: sql_server_practice
-- =============================================

USE sql_server_practice;
GO

-- =============================================
-- 1. LEN()
-- Returns the number of characters.
-- Trailing spaces are not counted.
-- =============================================

-- Q1. Display employee names and their lengths.
SELECT
    ENAME,
    LEN(ENAME) AS Name_Length
FROM EMPLOYEE;


-- =============================================
-- 2. UPPER()
-- Converts text into uppercase.
-- =============================================

-- Q2. Display employee names in uppercase.
SELECT
    ENAME,
    UPPER(ENAME) AS Upper_Name
FROM EMPLOYEE;


-- =============================================
-- 3. LOWER()
-- Converts text into lowercase.
-- =============================================

-- Q3. Display employee names in lowercase.
SELECT
    ENAME,
    LOWER(ENAME) AS Lower_Name
FROM EMPLOYEE;


-- =============================================
-- 4. LTRIM()
-- Removes leading spaces.
-- =============================================

-- Q4. Remove leading spaces from a string.
SELECT LTRIM('    SQL Server') AS Trimmed_String;


-- =============================================
-- 5. RTRIM()
-- Removes trailing spaces.
-- =============================================

-- Q5. Remove trailing spaces from a string.
SELECT RTRIM('SQL Server    ') AS Trimmed_String;


-- =============================================
-- 6. TRIM()
-- Removes leading and trailing spaces.
-- =============================================

-- Q6. Remove spaces from both sides of a string.
SELECT TRIM('    SQL Server    ') AS Trimmed_String;


-- =============================================
-- 7. SUBSTRING()
-- Extracts a portion of a string.
-- Syntax: SUBSTRING(expression, start, length)
-- =============================================

-- Q7. Extract the first 3 characters of employee names.
SELECT
    ENAME,
    SUBSTRING(ENAME, 1, 3) AS Extracted_Name
FROM EMPLOYEE;

-- Q8. Extract 2 characters starting from position 2.
SELECT SUBSTRING('DATABASE', 2, 2) AS Extracted_Text;


-- =============================================
-- 8. LEFT()
-- Returns characters from the left side.
-- =============================================

-- Q9. Display the first 3 characters of employee names.
SELECT
    ENAME,
    LEFT(ENAME, 3) AS First_Three_Characters
FROM EMPLOYEE;


-- =============================================
-- 9. RIGHT()
-- Returns characters from the right side.
-- =============================================

-- Q10. Display the last 3 characters of employee names.
SELECT
    ENAME,
    RIGHT(ENAME, 3) AS Last_Three_Characters
FROM EMPLOYEE;


-- =============================================
-- 10. CHARINDEX()
-- Finds the position of a substring.
-- Returns 0 if the substring is not found.
-- =============================================

-- Q11. Find the position of A in each employee name.
SELECT
    ENAME,
    CHARINDEX('A', ENAME) AS Character_Position
FROM EMPLOYEE;

-- Q12. Find the position of SQL in a string.
SELECT CHARINDEX('SQL', 'LEARNING SQL SERVER') AS Position;


-- =============================================
-- 11. REPLACE()
-- Replaces occurrences of a substring.
-- =============================================

-- Q13. Replace A with @ in employee names.
SELECT
    ENAME,
    REPLACE(ENAME, 'A', '@') AS Modified_Name
FROM EMPLOYEE;

-- Q14. Replace SQL with T-SQL.
SELECT REPLACE('LEARNING SQL', 'SQL', 'T-SQL') AS Modified_Text;


-- =============================================
-- 12. CONCAT()
-- Combines multiple values into one string.
-- =============================================

-- Q15. Combine employee name and job.
SELECT
    CONCAT(ENAME, ' - ', JOB) AS Employee_Details
FROM EMPLOYEE;

-- Q16. Combine employee ID and employee name.
SELECT
    CONCAT(EMPNO, ' - ', ENAME) AS Employee_Information
FROM EMPLOYEE;


-- =============================================
-- 13. REVERSE()
-- Reverses a string.
-- =============================================

-- Q17. Reverse employee names.
SELECT
    ENAME,
    REVERSE(ENAME) AS Reversed_Name
FROM EMPLOYEE;

-- Q18. Reverse the word DATABASE.
SELECT REVERSE('DATABASE') AS Reversed_Text;


-- =============================================
-- 14. REPLICATE()
-- Repeats a string a specified number of times.
-- =============================================

-- Q19. Repeat the character * five times.
SELECT REPLICATE('*', 5) AS Repeated_Characters;

-- Q20. Display employee names with repeated dashes.
SELECT
    ENAME,
    REPLICATE('-', 5) AS Separator
FROM EMPLOYEE;


-- =============================================
-- 15. STRING_SPLIT()
-- Splits a string into rows using a separator.
-- =============================================

-- Q21. Split a comma-separated string into rows.
SELECT value
FROM STRING_SPLIT('SQL,Python,Java', ',');

-- Q22. Split employee-related words into rows.
SELECT value
FROM STRING_SPLIT('EMPLOYEE,MANAGER,ANALYST,CLERK', ',');


-- =============================================
-- 16. STRING_AGG()
-- Combines values from multiple rows into one string.
-- =============================================

-- Q23. Combine all employee names into one string.
SELECT STRING_AGG(ENAME, ', ') AS Employee_Names
FROM EMPLOYEE;

-- Q24. Combine all employee job titles into one string.
SELECT STRING_AGG(JOB, ', ') AS Job_Titles
FROM EMPLOYEE;


-- =============================================
-- 17. Practice Questions - EMP table
-- =============================================

-- Q25. Display employee names and their lengths.
SELECT ENAME, LEN(ENAME) AS [Length]
FROM EMP;

-- Q26. Display employee names in uppercase and lowercase.
SELECT ENAME, UPPER(ENAME) AS [Uppercase], LOWER(ENAME) AS [Lowercase]
FROM EMP;

-- Q27. Extract the first 2 characters of every employee name.
SELECT ENAME, SUBSTRING(ENAME, 1, 2) AS [First 2 Chars]
FROM EMP;

SELECT ENAME, LEFT(ENAME, 2) AS [First 2 Chars]
FROM EMP;

-- Q28. Extract the last 2 characters of every employee name.
SELECT ENAME, SUBSTRING(ENAME, LEN(ENAME)-1, 2) AS [Last 2 Chars]
FROM EMP;

SELECT ENAME, RIGHT(ENAME, 2) AS [Last 2 Chars]
FROM EMP;

-- Q29. Find the position of the letter E in employee names.
SELECT ENAME, CHARINDEX('E', ENAME) AS [Position of E]
FROM EMP;

-- Q30. Replace the letter A with * in employee names.
SELECT ENAME, REPLACE(ENAME, 'A', '*') AS [Replace A with *]
FROM EMP;

-- Q31. Combine employee names and salaries into one string.
SELECT ENAME, SAL, CONCAT(ENAME, ' ', SAL) AS [NAME AND SALARY]
FROM EMP;

-- Q32. Reverse every employee name.
SELECT ENAME, REVERSE(ENAME) AS [Reversed Name]
FROM EMP;

-- Q33. Repeat the character # ten times.
SELECT REPLICATE('#', 10);

-- Q34. Split the string 'SQL,Python,Java,C++' into rows.
SELECT VALUE
FROM STRING_SPLIT('SQL,Python,Java,C++', ',')

-- Q35. Combine all JOBS into a comma-separated string.
SELECT STRING_AGG(JOB, ', ')
FROM EMP