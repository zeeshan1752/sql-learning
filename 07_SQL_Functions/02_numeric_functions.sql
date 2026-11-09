-- =============================================
-- 07_SQL_Functions
-- 02_Numeric_Functions
-- File: numeric_functions.sql
-- Database: sql_server_practice
-- =============================================

USE sql_server_practice;
GO

-- =============================================
-- 1. ABS()
-- Returns the absolute (non-negative) value.
-- =============================================

-- Q1. Find the absolute value of -100.
SELECT ABS(-100) AS Absolute_Value;

-- Q2. Display the absolute difference between employee salary and 3000.
SELECT
    ENAME,
    SAL,
    ABS(SAL - 3000) AS Salary_Difference
FROM EMPLOYEE;


-- =============================================
-- 2. CEILING()
-- Rounds a number upward to the next integer.
-- =============================================

-- Q3. Round 12.3 upward.
SELECT CEILING(12.3) AS Ceiling_Value;

-- Q4. Display the ceiling value of employee salaries.
SELECT
    ENAME,
    SAL,
    CEILING(SAL) AS Ceiling_Salary
FROM EMPLOYEE;


-- =============================================
-- 3. FLOOR()
-- Rounds a number downward to the previous integer.
-- =============================================

-- Q5. Round 12.9 downward.
SELECT FLOOR(12.9) AS Floor_Value;

-- Q6. Display the floor value of employee salaries.
SELECT
    ENAME,
    SAL,
    FLOOR(SAL) AS Floor_Salary
FROM EMPLOYEE;


-- =============================================
-- 4. ROUND()
-- Rounds a number to a specified precision.
-- Syntax: ROUND(number, decimal_places)
-- =============================================

-- Q7. Round 123.456 to 2 decimal places.
SELECT ROUND(123.456, 2) AS Rounded_Value;

-- Q8. Round 123.456 to 1 decimal place.
SELECT ROUND(123.456, 1) AS Rounded_Value;

-- Q9. Round 123.456 to the nearest integer.
SELECT ROUND(123.456, 0) AS Rounded_Value;

-- Q10. Display employee salaries rounded to 2 decimal places.
SELECT
    ENAME,
    SAL,
    ROUND(SAL, 2) AS Rounded_Salary
FROM EMPLOYEE;


-- =============================================
-- 5. POWER()
-- Raises a number to a specified power.
-- Syntax: POWER(number, power)
-- =============================================

-- Q11. Calculate 2 raised to the power of 3.
SELECT POWER(2, 3) AS Power_Result;

-- Q12. Calculate 5 raised to the power of 2.
SELECT POWER(5, 2) AS Power_Result;

-- Q13. Calculate the square of each employee salary.
SELECT
    ENAME,
    SAL,
    POWER(SAL, 2) AS Salary_Square
FROM EMPLOYEE;


-- =============================================
-- 6. SQRT()
-- Returns the square root of a number.
-- =============================================

-- Q14. Find the square root of 64.
SELECT SQRT(64) AS Square_Root;

-- Q15. Find the square root of 144.
SELECT SQRT(144) AS Square_Root;


-- =============================================
-- 7. SQUARE()
-- Returns the square of a number.
-- =============================================

-- Q16. Find the square of 8.
SELECT SQUARE(8) AS Square_Result;

-- Q17. Find the square of 12.
SELECT SQUARE(12) AS Square_Result;


-- =============================================
-- 8. SIGN()
-- Returns -1, 0, or 1 depending on the sign.
-- =============================================

-- Q18. Find the sign of -25.
SELECT SIGN(-25) AS Sign_Result;

-- Q19. Find the sign of 0.
SELECT SIGN(0) AS Sign_Result;

-- Q20. Find the sign of 25.
SELECT SIGN(25) AS Sign_Result;


-- =============================================
-- 9. RAND()
-- Returns a pseudo-random float value.
-- =============================================

-- Q21. Generate a random number.
SELECT RAND() AS Random_Number;

-- Q22. Generate a random number using a seed.
SELECT RAND(10) AS Random_Number;

-- Q23. Generate a random number between 1 and 100.
SELECT FLOOR(RAND() * 100) + 1 AS Random_Number;


-- =============================================
-- 10. Practice Questions
-- =============================================

-- Q24. Find the absolute value of -250.
SELECT ABS(-250) AS [Absolute of -250];

-- Q25. Find the absolute difference between 500 and 750.
SELECT ABS(500-700);

-- Q26. Round 456.789 to 2 decimal places.
SELECT ROUND(456.789, 2);

-- Q27. Round 456.789 to the nearest integer.
SELECT ROUND(456.789, 0);

-- Q28. Find the ceiling value of 45.2.
SELECT CEILING(45.2);

-- Q29. Find the floor value of 45.8.
SELECT FLOOR(45.8);

-- Q30. Calculate 3 raised to the power of 4.
SELECT POWER(3, 4);

-- Q31. Find the square root of 225.
SELECT SQRT(225);

-- Q32. Find the square of 15.
SELECT SQUARE(15);

-- Q33. Find the sign of -100, 0, and 100.
SELECT SIGN(-100) AS [Sign of -100],
SIGN(0) AS [Sign of 0],
SIGN(100) AS [Sign of +100]

-- Q34. Generate a random number between 1 and 50.
SELECT FLOOR(RAND()*50 + 1) AS [Random Number between 0 to 50];

-- Q35. Display employee names and their salaries rounded to the nearest integer.
SELECT ENAME, ROUND(SAL, 0) AS [Salary to nearest integer]
FROM EMP