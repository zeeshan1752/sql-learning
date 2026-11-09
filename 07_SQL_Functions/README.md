# 07. SQL Functions

## Introduction

SQL Server provides built-in functions to perform operations on data and return results.

SQL functions help us manipulate strings, perform mathematical calculations, work with dates, summarize records, handle NULL values, convert data types, and perform advanced calculations across rows.

In Microsoft SQL Server, functions are commonly used with statements such as `SELECT`, `WHERE`, `ORDER BY`, `GROUP BY`, and other SQL clauses.

A function generally accepts one or more arguments, performs an operation, and returns a result.

## Topics Covered

| No. | Topic | Description |
|---|---|---|
| 01 | String Functions | Manipulate and process text values. |
| 02 | Numeric Functions | Perform mathematical calculations. |
| 03 | Date and Time Functions | Work with dates and time values. |
| 04 | Aggregate Functions | Calculate results from multiple rows. |
| 05 | Window Functions | Perform calculations across related rows without collapsing them. |
| 06 | Conversion Functions | Convert values from one data type to another. |
| 07 | NULL Functions | Handle and manipulate NULL values. |

---

# 01. String Functions

String functions are used to manipulate, modify, search, extract, and process text values.

They are useful when working with names, addresses, email addresses, job titles, and other character-based data.

## Common String Functions

| Function | Description | Example |
|---|---|---|
| `LEN()` | Returns the number of characters, excluding trailing spaces. | `LEN('SQL Server')` |
| `UPPER()` | Converts text into uppercase. | `UPPER('hello')` |
| `LOWER()` | Converts text into lowercase. | `LOWER('HELLO')` |
| `LTRIM()` | Removes leading spaces. | `LTRIM(' SQL')` |
| `RTRIM()` | Removes trailing spaces. | `RTRIM('SQL ')` |
| `TRIM()` | Removes leading and trailing spaces. | `TRIM(' SQL ')` |
| `SUBSTRING()` | Extracts a portion of a string. | `SUBSTRING('DATABASE', 1, 4)` |
| `LEFT()` | Returns characters from the left side. | `LEFT('DATABASE', 4)` |
| `RIGHT()` | Returns characters from the right side. | `RIGHT('DATABASE', 4)` |
| `CHARINDEX()` | Finds the position of a substring. | `CHARINDEX('S', 'SQL SERVER')` |
| `PATINDEX()` | Finds the position of a pattern in a string. | `PATINDEX('%SQL%', 'LEARN SQL SERVER')` |
| `REPLACE()` | Replaces occurrences of a substring. | `REPLACE('SQL SERVER', 'SERVER', 'DB')` |
| `CONCAT()` | Combines multiple values into one string. | `CONCAT('SQL', ' SERVER')` |
| `CONCAT_WS()` | Combines values using a specified separator. | `CONCAT_WS('-', 'SQL', 'SERVER')` |
| `REVERSE()` | Reverses a string. | `REVERSE('SQL')` |
| `REPLICATE()` | Repeats a string a specified number of times. | `REPLICATE('SQL ', 3)` |
| `SPACE()` | Returns a string containing a specified number of spaces. | `SPACE(5)` |
| `ASCII()` | Returns the ASCII value of the first character. | `ASCII('A')` |
| `CHAR()` | Returns the character corresponding to an ASCII value. | `CHAR(65)` |
| `UNICODE()` | Returns the Unicode value of the first character. | `UNICODE('A')` |
| `NCHAR()` | Returns the Unicode character for a specified integer code. | `NCHAR(65)` |
| `STRING_SPLIT()` | Splits a string into rows using a separator. | `STRING_SPLIT('SQL,Python,Java', ',')` |
| `STRING_AGG()` | Combines values from multiple rows into one string. | `STRING_AGG(ENAME, ', ')` |

## Important String Function Explanations

### 1. LEN()

Returns the number of characters in a string, excluding trailing spaces.

Syntax:

```sql
LEN(expression)
````

Example:

```
SELECT LEN('SQL SERVER') AS String_Length;
```

### 2. UPPER() and LOWER()

`UPPER()` converts text into uppercase.

`LOWER()` converts text into lowercase.

Example:

```
SELECT
    UPPER('sql server') AS Upper_Case,
    LOWER('SQL SERVER') AS Lower_Case;
```

### 3. LTRIM(), RTRIM(), and TRIM()

- `LTRIM()` removes spaces from the beginning of a string.
- `RTRIM()` removes spaces from the end of a string.
- `TRIM()` removes spaces from both ends.

Example:

```
SELECT
    LTRIM('   SQL') AS Left_Trim,
    RTRIM('SQL   ') AS Right_Trim,
    TRIM('   SQL   ') AS Both_Trim;
```

### 4. SUBSTRING()

Extracts a specific portion of a string.

Syntax:

```
SUBSTRING(expression, start, length)
```

- `expression` – The original string.
- `start` – Starting position.
- `length` – Number of characters to extract.

Example:

```
SELECT SUBSTRING('DATABASE', 1, 4) AS Extracted_Text;
```

Output:

```
DATA
```

SQL Server string positions start from 1.

### 5. LEFT() and RIGHT()

`LEFT()` extracts characters from the beginning.

`RIGHT()` extracts characters from the end.

Example:

```
SELECT
    LEFT('DATABASE', 4) AS Left_Text,
    RIGHT('DATABASE', 4) AS Right_Text;
```

Output:

```
DATA    BASE
```

### 6. CHARINDEX()

Returns the starting position of a substring within another string.

Syntax:

```
CHARINDEX(expression_to_find, expression_to_search)
```

Example:

```
SELECT CHARINDEX('S', 'SQL SERVER') AS Position;
```

Output:

```
1
```

If the searched expression is not found, it returns 0.

### 7. PATINDEX()

Searches for a pattern in a string and returns its starting position.

Syntax:

```
PATINDEX('%pattern%', expression)
```

Example:

```
SELECT PATINDEX('%SQL%', 'LEARN SQL SERVER') AS Position;
```

Output:

```
7
```

Unlike `CHARINDEX()`, `PATINDEX()` supports wildcard patterns.

### 8. REPLACE()

Replaces all occurrences of a specified substring.

Syntax:

```
REPLACE(expression, string_to_replace, replacement_string)
```

Example:

```
SELECT REPLACE('SQL SERVER', 'SERVER', 'DATABASE') AS Result;
```

Output:

```
SQL DATABASE
```

### 9. CONCAT()

Combines two or more values into a single string.

Example:

```
SELECT CONCAT('SQL', ' ', 'SERVER') AS Result;
```

Output:

```
SQL SERVER
```

`CONCAT()` converts NULL values into empty strings.

### 10. CONCAT_WS()

Combines multiple values using a specified separator.

Syntax:

```
CONCAT_WS(separator, value1, value2, ...)
```

Example:

```
SELECT CONCAT_WS('-', '2026', '11', '04') AS Result;
```

Output:

```
2026-11-04
```

Unlike `CONCAT()`, `CONCAT_WS()` skips NULL values after the separator.

### 11. STRING_SPLIT()

Splits a string into multiple rows based on a separator.

Example:

```
SELECT VALUE
FROM STRING_SPLIT('SQL,Python,Java', ',');
```

Possible output:

| VALUE  |
| ------ |
| SQL    |
| Python |
| Java   |

The returned order is not guaranteed unless ordering is explicitly established.

### 12. STRING_AGG()

Combines values from multiple rows into a single string.

Syntax:

```
STRING_AGG(expression, separator)
```

Example:

```
SELECT STRING_AGG(ENAME, ', ') AS Employee_Names
FROM EMP;
```

It combines employee names into one string separated by commas.

## Example

```
SELECT
    ENAME,
    UPPER(ENAME) AS Upper_Name,
    LOWER(ENAME) AS Lower_Name,
    LEN(ENAME) AS Name_Length,
    LEFT(ENAME, 3) AS First_Three_Characters,
    RIGHT(ENAME, 3) AS Last_Three_Characters
FROM EMP;
```

## Important Notes

- `LEN()` does not count trailing spaces.
- `DATALENGTH()` returns the number of bytes used by an expression.
- `CHARINDEX()` returns 0 when the searched expression is not found.
- `SUBSTRING()` uses a starting position and a length.
- SQL Server string positions start from 1.
- `LEFT()` extracts characters from the beginning.
- `RIGHT()` extracts characters from the end.
- `REPLACE()` replaces all occurrences of the specified substring.
- `CONCAT()` converts NULL values into empty strings.
- `STRING_SPLIT()` divides a string into rows.
- `STRING_AGG()` combines values from multiple rows.
- `STRING_AGG()` is an aggregate string function.
- String comparisons and searches may depend on the database collation.

# 02. Numeric Functions

Numeric functions perform mathematical calculations and operations on numeric values.

They are useful when calculating salaries, percentages, discounts, measurements, averages, and other numerical values.

## Common Numeric Functions

| Function    | Description                                                       | Example             |
| ----------- | ----------------------------------------------------------------- | ------------------- |
| `ABS()`     | Returns the absolute value.                                       | `ABS(-25)`          |
| `CEILING()` | Rounds a number upward to the next integer.                       | `CEILING(12.3)`     |
| `FLOOR()`   | Rounds a number downward to the previous integer.                 | `FLOOR(12.9)`       |
| `ROUND()`   | Rounds a number to a specified precision.                         | `ROUND(125.456, 2)` |
| `POWER()`   | Raises a number to a specified power.                             | `POWER(2, 3)`       |
| `SQRT()`    | Returns the square root.                                          | `SQRT(64)`          |
| `SQUARE()`  | Returns the square of a number.                                   | `SQUARE(5)`         |
| `SIGN()`    | Returns the sign of a number.                                     | `SIGN(-10)`         |
| `RAND()`    | Returns a pseudo-random float value.                              | `RAND()`            |
| `PI()`      | Returns the value of PI.                                          | `PI()`              |
| `EXP()`     | Returns e raised to a specified power.                            | `EXP(2)`            |
| `LOG()`     | Returns the natural logarithm.                                    | `LOG(10)`           |
| `LOG10()`   | Returns the base-10 logarithm.                                    | `LOG10(100)`        |
| `FLOOR()`   | Returns the greatest integer less than or equal to the number.    | `FLOOR(5.8)`        |
| `CEILING()` | Returns the smallest integer greater than or equal to the number. | `CEILING(5.2)`      |

## Important Numeric Function Explanations

### 1. ABS()

Returns the absolute value of a number.

The absolute value is the non-negative value of a number.

Example:

```
SELECT
    ABS(25) AS Positive_Value,
    ABS(-25) AS Negative_Value;
```

Output:

```
25    25
```

### 2. CEILING()

Rounds a number upward to the smallest integer greater than or equal to the number.

Example:

```
SELECT
    CEILING(12.3) AS Result1,
    CEILING(12.9) AS Result2,
    CEILING(-12.3) AS Result3;
```

Output:

```
13    13    -12
```

### 3. FLOOR()

Returns the largest integer less than or equal to the given number.

Example:

```
SELECT
    FLOOR(12.3) AS Result1,
    FLOOR(12.9) AS Result2,
    FLOOR(-12.3) AS Result3;
```

Output:

```
12    12    -13
```

### 4. ROUND()

Rounds a number to a specified number of decimal places.

Syntax:

```
ROUND(number, decimal_places)
```

Example:

```
SELECT
    ROUND(123.456, 2) AS Result1,
    ROUND(123.456, 1) AS Result2,
    ROUND(123.456, 0) AS Result3;
```

Output:

```
123.46    123.5    123.000
```

ROUND() also accepts a negative length to round digits to the left of the decimal point.

Example:

```
SELECT ROUND(1234.56, -2) AS Result;
```

Output:

```
1200
```

### 5. POWER()

Raises a number to a specified power.

Syntax:

```
POWER(number, power)
```

Example:

```
SELECT POWER(2, 3) AS Result;
```

Output:

```
8
```

Calculation:

2 × 2 × 2 = 8

### 6. SQRT()

Returns the square root of a number.

Example:

```
SELECT SQRT(64) AS Result;
```

Output:

```
8
```

### 7. SQUARE()

Returns the square of a number.

Example:

```
SELECT SQUARE(5) AS Result;
```

Output:

```
25
```

Calculation:

5 × 5 = 25

### 8. SIGN()

Returns the sign of a number.

- Positive number returns 1.
- Negative number returns -1.
- Zero returns 0.

Example:

```
SELECT
    SIGN(25) AS Positive,
    SIGN(-25) AS Negative,
    SIGN(0) AS Zero_Value;
```

### 9. RAND()

Returns a pseudo-random float value between 0 and 1.

Example:

```
SELECT RAND() AS Random_Number;
```

To generate a random integer between 1 and 50:

```
SELECT FLOOR(RAND() * 50) + 1 AS Random_Number;
```

## Example

```
SELECT
    SAL,
    ABS(SAL - 3000) AS Salary_Difference,
    ROUND(SAL, 0) AS Rounded_Salary,
    CEILING(SAL) AS Ceiling_Salary,
    FLOOR(SAL) AS Floor_Salary
FROM EMP;
```

## Important Notes

- `ABS()` always returns a non-negative value.
- `CEILING()` rounds upward, whereas `FLOOR()` rounds downward.
- For negative numbers, upward and downward rounding can produce results that may seem unexpected.
- `ROUND()` supports a specified number of decimal places.
- A negative length in `ROUND()` rounds digits to the left of the decimal point.
- `POWER()` performs exponentiation.
- `SQRT()` calculates the square root.
- `SQUARE()` calculates the square of a number.
- `SIGN()` identifies whether a number is positive, negative, or zero.
- `RAND()` generates pseudo-random values.
- `RAND()` does not guarantee a different result for every row when used directly in a query.

# 03. Date and Time Functions

Date and time functions are used to retrieve, extract, modify, compare, and format date and time values.

They are useful when working with employee joining dates, attendance, transactions, orders, deadlines, and reports.

## Common Date and Time Functions

| Function           | Description                                                                    | Example                                       |
| ------------------ | ------------------------------------------------------------------------------ | --------------------------------------------- |
| `GETDATE()`        | Returns the current database system date and time as datetime.                 | `GETDATE()`                                   |
| `SYSDATETIME()`    | Returns the current system timestamp with greater fractional-second precision. | `SYSDATETIME()`                               |
| `GETUTCDATE()`     | Returns the current UTC date and time.                                         | `GETUTCDATE()`                                |
| `SYSUTCDATETIME()` | Returns the current UTC timestamp with high precision.                         | `SYSUTCDATETIME()`                            |
| `DATEPART()`       | Returns a specified part of a date as an integer.                              | `DATEPART(YEAR, GETDATE())`                   |
| `DATENAME()`       | Returns a specified part of a date as a character string.                      | `DATENAME(MONTH, GETDATE())`                  |
| `YEAR()`           | Returns the year.                                                              | `YEAR(GETDATE())`                             |
| `MONTH()`          | Returns the month number.                                                      | `MONTH(GETDATE())`                            |
| `DAY()`            | Returns the day of the month.                                                  | `DAY(GETDATE())`                              |
| `DATEADD()`        | Adds an interval to a date.                                                    | `DATEADD(DAY, 7, GETDATE())`                  |
| `DATEDIFF()`       | Returns the number of date-part boundaries crossed.                            | `DATEDIFF(DAY, '20260101', '20260110')`       |
| `DATEDIFF_BIG()`   | Returns the number of date-part boundaries as BIGINT.                          | `DATEDIFF_BIG(SECOND, '20260101', GETDATE())` |
| `EOMONTH()`        | Returns the last day of a month.                                               | `EOMONTH(GETDATE())`                          |
| `FORMAT()`         | Formats a date or number as a string.                                          | `FORMAT(GETDATE(), 'dd-MM-yyyy')`             |
| `ISDATE()`         | Checks whether an expression is a valid date.                                  | `ISDATE('2026-11-04')`                        |
| `DATETRUNC()`      | Truncates a date to a specified date part.                                     | `DATETRUNC(MONTH, GETDATE())`                 |

## Important Date and Time Function Explanations

### 1. GETDATE()

Returns the current system date and time of the SQL Server instance as a DATETIME value.

Example:

```
SELECT GETDATE() AS Current_Date_Time;
```

### 2. SYSDATETIME()

Returns the current system date and time with greater fractional-second precision than GETDATE().

Example:

```
SELECT SYSDATETIME() AS Current_Date_Time;
```

### 3. GETUTCDATE()

Returns the current UTC date and time.

Example:

```
SELECT GETUTCDATE() AS Current_UTC_Date_Time;
```

### 4. DATEPART()

Extracts a specific part of a date and returns it as an integer.

Syntax:

```
DATEPART(datepart, date)
```

Example:

```
SELECT
    DATEPART(YEAR, GETDATE()) AS Current_Year,
    DATEPART(MONTH, GETDATE()) AS Current_Month,
    DATEPART(DAY, GETDATE()) AS Current_Day;
```

### 5. DATENAME()

Returns the name or string representation of a specified date part.

Example:

```
SELECT
    DATENAME(MONTH, GETDATE()) AS Month_Name,
    DATENAME(WEEKDAY, GETDATE()) AS Day_Name;
```

### 6. YEAR(), MONTH(), and DAY()

These functions extract the year, month, and day from a date.

Example:

```
SELECT
    YEAR(GETDATE()) AS Current_Year,
    MONTH(GETDATE()) AS Current_Month,
    DAY(GETDATE()) AS Current_Day;
```

### 7. DATEADD()

Adds a specified interval to a date.

Syntax:

```
DATEADD(datepart, number, date)
```

Example:

```
SELECT
    DATEADD(DAY, 7, GETDATE()) AS After_7_Days,
    DATEADD(MONTH, 2, GETDATE()) AS After_2_Months,
    DATEADD(YEAR, 1, GETDATE()) AS After_1_Year;
```

### 8. DATEDIFF()

Returns the number of specified date-part boundaries crossed between two dates.

Syntax:

```
DATEDIFF(datepart, start_date, end_date)
```

Example:

```
SELECT DATEDIFF(DAY, '2026-01-01', '2026-01-10') AS Difference;
```

Output:

```
9
```

Another example:

```
SELECT
    ENAME,
    HIREDATE,
    DATEDIFF(YEAR, HIREDATE, GETDATE()) AS YEARS_SINCE_JOINED,
    DATEDIFF(MONTH, HIREDATE, GETDATE()) AS MONTHS_SINCE_JOINED
FROM EMP;
```

Important: DATEDIFF() counts date-part boundaries crossed, not necessarily complete elapsed years or months.

### 9. EOMONTH()

Returns the last day of the month for a specified date.

Example:

```
SELECT EOMONTH(GETDATE()) AS Month_End_Date;
```

It can also calculate the end of a future or previous month.

```
SELECT
    EOMONTH(GETDATE(), 1) AS Next_Month_End,
    EOMONTH(GETDATE(), -1) AS Previous_Month_End;
```

### 10. FORMAT()

Formats a date or number into a string using a specified format.

Example:

```
SELECT
    FORMAT(GETDATE(), 'dd-MM-yyyy') AS Formatted_Date,
    FORMAT(GETDATE(), 'MMMM') AS Month_Name,
    FORMAT(GETDATE(), 'dddd') AS Day_Name;
```

### 11. DATETRUNC()

Truncates a date to the specified date part.

Example:

```
SELECT
    DATETRUNC(YEAR, GETDATE()) AS Year_Start,
    DATETRUNC(MONTH, GETDATE()) AS Month_Start;
```

DATETRUNC() is available in SQL Server 2022 and later.

## Example

```
SELECT
    ENAME,
    HIREDATE,
    YEAR(HIREDATE) AS Joining_Year,
    MONTH(HIREDATE) AS Joining_Month,
    DAY(HIREDATE) AS Joining_Day,
    DATENAME(MONTH, HIREDATE) AS Month_Name,
    DATENAME(WEEKDAY, HIREDATE) AS Day_Name
FROM EMP;
```

## Important Notes

- `GETDATE()` returns the current system date and time.
- `SYSDATETIME()` provides greater fractional-second precision than `GETDATE()`.
- `GETUTCDATE()` returns the current UTC date and time.
- `DATEPART()` returns an integer.
- `DATENAME()` returns a character value.
- `YEAR()`, `MONTH()`, and `DAY()` extract date components.
- `DATEADD()` adds or subtracts a specified interval.
- `DATEDIFF()` counts date-part boundaries crossed.
- `DATEDIFF()` does not necessarily calculate complete elapsed years or months.
- `EOMONTH()` returns the last day of a month.
- `FORMAT()` returns a string and can be more expensive than simpler date conversions.
- Use ISO-style date formats such as `YYYYMMDD` or unambiguous date conversions when working with date literals.
- SQL Server stores date and time values using specific date/time data types.

# 04. Aggregate Functions

Aggregate functions perform calculations on a set of rows and return a single result for that set.

They are commonly used for reporting, data analysis, summarizing information, and calculating department-wise or category-wise results.

## Common Aggregate Functions

| Function      | Description                               | Example        |
| ------------- | ----------------------------------------- | -------------- |
| `COUNT()`     | Counts rows or non-NULL values.           | `COUNT(*)`     |
| `SUM()`       | Returns the sum of numeric values.        | `SUM(SAL)`     |
| `AVG()`       | Returns the average of numeric values.    | `AVG(SAL)`     |
| `MIN()`       | Returns the minimum value.                | `MIN(SAL)`     |
| `MAX()`       | Returns the maximum value.                | `MAX(SAL)`     |
| `COUNT_BIG()` | Counts rows and returns BIGINT.           | `COUNT_BIG(*)` |
| `STDEV()`     | Calculates sample standard deviation.     | `STDEV(SAL)`   |
| `STDEVP()`    | Calculates population standard deviation. | `STDEVP(SAL)`  |
| `VAR()`       | Calculates sample variance.               | `VAR(SAL)`     |
| `VARP()`      | Calculates population variance.           | `VARP(SAL)`    |

## Important Aggregate Function Explanations

### 1. COUNT()

Counts the number of rows or non-NULL values.

There are two commonly used forms:

```
COUNT(*)
```

Counts all rows.

```
COUNT(column_name)
```

Counts only non-NULL values in the specified column.

Example:

```
SELECT
    COUNT(*) AS Total_Employees,
    COUNT(COMM) AS Employees_With_Commission
FROM EMP;
```

### 2. SUM()

Returns the total sum of numeric values.

Example:

```
SELECT SUM(SAL) AS Total_Salary
FROM EMP;
```

### 3. AVG()

Returns the average of numeric values.

Example:

```
SELECT AVG(SAL) AS Average_Salary
FROM EMP;
```

NULL values are ignored when calculating the average.

### 4. MIN()

Returns the minimum value from the selected rows.

Example:

```
SELECT MIN(SAL) AS Lowest_Salary
FROM EMP;
```

### 5. MAX()

Returns the maximum value from the selected rows.

Example:

```
SELECT MAX(SAL) AS Highest_Salary
FROM EMP;
```

### 6. STDEV() and STDEVP()

`STDEV()` calculates sample standard deviation.

`STDEVP()` calculates population standard deviation.

Example:

```
SELECT
    STDEV(SAL) AS Sample_Standard_Deviation,
    STDEVP(SAL) AS Population_Standard_Deviation
FROM EMP;
```

### 7. VAR() and VARP()

`VAR()` calculates sample variance.

`VARP()` calculates population variance.

Example:

```
SELECT
    VAR(SAL) AS Sample_Variance,
    VARP(SAL) AS Population_Variance
FROM EMP;
```

## Aggregate Functions with GROUP BY

GROUP BY divides records into groups and performs aggregate calculations for each group.

Example:

```
SELECT
    DEPTNO,
    COUNT(*) AS TOTAL_EMPLOYEES,
    SUM(SAL) AS TOTAL_SALARY,
    AVG(SAL) AS AVERAGE_SALARY,
    MIN(SAL) AS LOWEST_SALARY,
    MAX(SAL) AS HIGHEST_SALARY
FROM EMP
GROUP BY DEPTNO;
```

This returns one row for each department.

## Aggregate Functions with HAVING

HAVING filters groups after aggregate calculations.

Example:

```
SELECT
    DEPTNO,
    AVG(SAL) AS AVERAGE_SALARY
FROM EMP
GROUP BY DEPTNO
HAVING AVG(SAL) > 2000;
```

This displays departments whose average salary is greater than 2000.

## Example

```
SELECT
    COUNT(*) AS Total_Employees,
    SUM(SAL) AS Total_Salary,
    AVG(SAL) AS Average_Salary,
    MIN(SAL) AS Minimum_Salary,
    MAX(SAL) AS Maximum_Salary
FROM EMP;
```

## Important Notes

- `COUNT(*)` counts all rows, including rows containing NULL values.
- `COUNT(column_name)` counts only non-NULL values.
- `SUM()` and `AVG()` ignore NULL values.
- `MIN()` and `MAX()` ignore NULL values.
- `MIN()` and `MAX()` work with numeric, date, and character data types.
- Aggregate functions generally return one result for the selected set of rows.
- `GROUP BY` creates separate groups for aggregate calculations.
- `HAVING` filters grouped results.
- `WHERE` filters individual rows before grouping.
- `STDEV()` and `VAR()` calculate sample statistics.
- `STDEVP()` and `VARP()` calculate population statistics.

# 05. Window Functions / Analytical Functions

Window functions perform calculations across a set of related rows while preserving individual rows in the result.

Unlike ordinary aggregate functions, window functions do not collapse multiple rows into a single result row.

They are useful for ranking, running totals, calculating department-wise salaries, comparing current and previous records, and analytical reporting.

## 1. Understanding Window Functions

Consider the following employee data:

| ENAME  | SAL  | DEPTNO |
| ------ | ---- | ------ |
| SMITH  | 800  | 20     |
| ALLEN  | 1600 | 30     |
| WARD   | 1250 | 30     |
| JONES  | 2975 | 20     |
| MARTIN | 1250 | 30     |

If we use GROUP BY:

```
SELECT
    DEPTNO,
    MAX(SAL) AS HIGHEST_SALARY
FROM EMP
GROUP BY DEPTNO;
```

The result contains one row per department.

However, if we use a window function:

```
SELECT
    ENAME,
    SAL,
    DEPTNO,
    MAX(SAL) OVER(PARTITION BY DEPTNO) AS HIGHEST_SALARY
FROM EMP;
```

The result contains every employee along with the highest salary of their department.

This is the main difference between aggregate functions and aggregate window functions.

## 2. Basic Window Function Concepts

| Concept        | Description                                                                |
| -------------- | -------------------------------------------------------------------------- |
| `OVER()`       | Defines the window of rows used by a function.                             |
| `PARTITION BY` | Divides rows into separate groups or partitions.                           |
| `ORDER BY`     | Defines the logical order of rows inside a window.                         |
| Window Frame   | Defines the range of rows considered by a frame-sensitive window function. |

### A. OVER()

The OVER() clause specifies the window of rows used by a window function.

Example:

```
SELECT
    ENAME,
    SAL,
    SUM(SAL) OVER() AS TOTAL_SALARY
FROM EMP;
```

Explanation:

- `SUM(SAL)` calculates the total salary.
- `OVER()` applies the calculation across the entire result set.
- Every employee displays the same total salary.
- Individual employee rows are preserved.

### B. PARTITION BY

PARTITION BY divides rows into separate groups for window calculations.

Example:

```
SELECT
    ENAME,
    SAL,
    DEPTNO,
    MAX(SAL) OVER(PARTITION BY DEPTNO) AS HIGHEST_SALARY
FROM EMP;
```

Explanation:

- Employees are divided department-wise.
- The highest salary is calculated separately for each department.
- Every employee row is preserved.

Important:

PARTITION BY does not collapse rows like GROUP BY.

### C. ORDER BY

ORDER BY inside OVER() determines the logical order of rows for the window function.

Example:

```
SELECT
    ENAME,
    SAL,
    ROW_NUMBER() OVER(ORDER BY SAL DESC) AS ROW_NUM
FROM EMP;
```

Explanation:

- Employees are logically ordered by salary from highest to lowest.
- ROW_NUMBER() assigns sequential numbers based on that order.

Important:

ORDER BY inside OVER() does not guarantee the final display order of the query.

Use an outer ORDER BY when you want to control the final result order.

## 3. Ranking Functions

Ranking functions assign rankings or group numbers to rows based on a specified order.

### Common Ranking Functions

| Function       | Description                                                         |
| -------------- | ------------------------------------------------------------------- |
| `ROW_NUMBER()` | Assigns a unique sequential number to each row.                     |
| `RANK()`       | Assigns ranks and leaves gaps after ties.                           |
| `DENSE_RANK()` | Assigns ranks without gaps after ties.                              |
| `NTILE()`      | Divides rows into a specified number of approximately equal groups. |

### A. ROW_NUMBER()

Assigns a unique sequential number to each row.

Syntax:

```
ROW_NUMBER() OVER(ORDER BY column_name)
```

Example:

```
SELECT
    ENAME,
    SAL,
    ROW_NUMBER() OVER(ORDER BY SAL DESC) AS ROW_NUM
FROM EMP;
```

Explanation:

- Highest salary receives row number 1.
- The next salary receives row number 2.
- Every row receives a unique number.
- Tied values still receive different row numbers.

ROW_NUMBER() with PARTITION BY:

```
SELECT
    ENAME,
    SAL,
    DEPTNO,
    ROW_NUMBER() OVER(
        PARTITION BY DEPTNO
        ORDER BY SAL
    ) AS ROW_NUM
FROM EMP;
```

Here, numbering restarts from 1 for every department.

### B. RANK()

Assigns the same rank to tied values and leaves gaps after the tied ranks.

Example:

```
SELECT
    ENAME,
    SAL,
    RANK() OVER(ORDER BY SAL DESC) AS SALARY_RANK
FROM EMP;
```

Suppose the salaries are:

| ENAME | SAL  |
| ----- | ---- |
| KING  | 5000 |
| SCOTT | 3000 |
| FORD  | 3000 |
| JONES | 2975 |

Result:

| ENAME | SAL  | RANK |
| ----- | ---- | ---- |
| KING  | 5000 | 1    |
| SCOTT | 3000 | 2    |
| FORD  | 3000 | 2    |
| JONES | 2975 | 4    |

Notice that rank 3 is skipped.

### C. DENSE_RANK()

Assigns the same rank to tied values without leaving gaps.

Example:

```
SELECT
    ENAME,
    SAL,
    DENSE_RANK() OVER(ORDER BY SAL DESC) AS SALARY_RANK
FROM EMP;
```

Result:

| ENAME | SAL  | DENSE_RANK |
| ----- | ---- | ---------- |
| KING  | 5000 | 1          |
| SCOTT | 3000 | 2          |
| FORD  | 3000 | 2          |
| JONES | 2975 | 3          |

Notice that rank 3 is not skipped.

### D. NTILE()

Divides rows into a specified number of approximately equal groups called buckets.

Syntax:

```
NTILE(number_of_groups) OVER(ORDER BY column_name)
```

Example:

```
SELECT
    ENAME,
    SAL,
    NTILE(4) OVER(ORDER BY SAL ASC) AS SALARY_GROUP
FROM EMP;
```

Explanation:

- `NTILE(4)` divides employees into four groups.
- `ORDER BY SAL ASC` sorts salaries from lowest to highest.
- Lower salaries are placed in earlier groups.
- Higher salaries are placed in later groups.

Important:

NTILE() divides rows into approximately equal-sized groups. It does not divide salaries into equal numerical ranges.

If the number of rows cannot be divided equally, earlier groups receive the extra rows.

## 4. Analytic / Value Functions

Analytic functions allow us to access values from other rows or specific positions in a window.

### Common Analytic Functions

| Function        | Description                                |
| --------------- | ------------------------------------------ |
| `LAG()`         | Accesses a value from a preceding row.     |
| `LEAD()`        | Accesses a value from a following row.     |
| `FIRST_VALUE()` | Returns the first value in a window frame. |
| `LAST_VALUE()`  | Returns the last value in a window frame.  |

### A. LAG()

Returns a value from a previous row without using a self-join.

Syntax:

```
LAG(column_name, offset, default_value)
OVER(ORDER BY column_name)
```

- `column_name` – Column whose previous value is required.
- `offset` – Number of rows to move backward. Default is 1.
- `default_value` – Value returned when the requested previous row does not exist. Default is NULL.

Example:

```
SELECT
    ENAME,
    SAL,
    LAG(SAL) OVER(ORDER BY SAL) AS PREVIOUS_SALARY
FROM EMP;
```

Explanation:

- Employees are ordered by salary.
- LAG() retrieves the salary from the previous row.
- The first row returns NULL because no previous row exists.

### B. LEAD()

Returns a value from a following row without using a self-join.

Syntax:

```
LEAD(column_name, offset, default_value)
OVER(ORDER BY column_name)
```

Example:

```
SELECT
    ENAME,
    SAL,
    LEAD(SAL) OVER(ORDER BY SAL) AS NEXT_SALARY
FROM EMP;
```

Explanation:

- Employees are ordered by salary.
- LEAD() retrieves the salary from the next row.
- The last row returns NULL because no following row exists.

### C. FIRST_VALUE()

Returns the first value from the specified window frame.

Syntax:

```
FIRST_VALUE(column_name)
OVER(
    PARTITION BY column_name
    ORDER BY column_name
)
```

Example:

```
SELECT
    ENAME,
    SAL,
    DEPTNO,
    FIRST_VALUE(SAL) OVER(
        PARTITION BY DEPTNO
        ORDER BY SAL DESC
    ) AS HIGHEST_SALARY
FROM EMP;
```

Explanation:

1. PARTITION BY DEPTNO divides employees department-wise.
2. ORDER BY SAL DESC sorts salaries from highest to lowest.
3. FIRST_VALUE(SAL) returns the first salary in the window frame.
4. Therefore, it displays the highest salary of each department.

To find the lowest salary:

```
SELECT
    ENAME,
    SAL,
    DEPTNO,
    FIRST_VALUE(SAL) OVER(
        PARTITION BY DEPTNO
        ORDER BY SAL ASC
    ) AS LOWEST_SALARY
FROM EMP;
```

### D. LAST_VALUE()

Returns the last value from the specified window frame.

Syntax:

```
LAST_VALUE(column_name)
OVER(
    PARTITION BY column_name
    ORDER BY column_name
    ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
)
```

Example:

```
SELECT
    ENAME,
    SAL,
    DEPTNO,
    LAST_VALUE(SAL) OVER(
        ORDER BY SAL ASC
        ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
    ) AS LAST_SALARY
FROM EMP;
```

Explanation:

1. ORDER BY SAL ASC sorts salaries from lowest to highest.
2. The window frame includes all rows.
3. LAST_VALUE(SAL) returns the salary from the last row.
4. Therefore, every employee receives the highest salary in the ordered result.

## 5. Window Frames

A window frame defines the specific range of rows considered by a frame-sensitive window function.

In simple words:

A window frame tells SQL Server which rows it should consider when performing a calculation.

Window frames are specified inside the OVER() clause.

### Window Frame Syntax

```
ROWS BETWEEN frame_start AND frame_end
```

OR

```
RANGE BETWEEN frame_start AND frame_end
```

There are two frame units:

1. ROWS
2. RANGE

### A. ROWS

ROWS defines the frame using physical row positions in the ordered result.

It considers the actual number of rows before or after the current row.

Example:

```
ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING
```

This includes:

- One row before the current row.
- The current row.
- One row after the current row.

### B. RANGE

RANGE defines the frame using logical ordering values and includes peer rows that have the same ORDER BY value.

Peer rows are rows having the same value in the window ORDER BY expression.

Example:

```
RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
```

This includes all rows from the beginning through the current row's ordering value, including its peers.

Important SQL Server limitation:

SQL Server supports only UNBOUNDED PRECEDING, CURRENT ROW, and UNBOUNDED FOLLOWING as RANGE frame boundaries. Numeric offsets such as 1 PRECEDING are supported with ROWS, not RANGE.

### 6. Understanding Window Frame Boundaries

There are five commonly used frame boundary expressions.

| Boundary              | Meaning                                                                       |
| --------------------- | ----------------------------------------------------------------------------- |
| `UNBOUNDED PRECEDING` | Starts from the first row of the partition.                                   |
| `n PRECEDING`         | Starts or ends a specified number of rows before the current row.             |
| `CURRENT ROW`         | Refers to the current row or current row's peers, depending on ROWS or RANGE. |
| `n FOLLOWING`         | Refers to a specified number of rows after the current row.                   |
| `UNBOUNDED FOLLOWING` | Extends to the last row of the partition.                                     |

### A. UNBOUNDED PRECEDING

Means the window frame starts from the very first row of the partition.

Example:

```
ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
```

This means:

- Start from the first row.
- Continue until the current row.

### B. CURRENT ROW

Refers to the current row.

Example:

```
ROWS BETWEEN CURRENT ROW AND CURRENT ROW
```

This includes only the current physical row.

With RANGE, CURRENT ROW includes the current row's peers.

### C. UNBOUNDED FOLLOWING

Means the window frame extends until the very last row of the partition.

Example:

```
ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING
```

This means:

- Start from the current row.
- Continue until the last row.

### D. PRECEDING

Refers to rows before the current row.

Example:

```
ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
```

This includes:

- Two rows before.
- One row before.
- Current row.

### E. FOLLOWING

Refers to rows after the current row.

Example:

```
ROWS BETWEEN CURRENT ROW AND 2 FOLLOWING
```

This includes:

- Current row.
- One row after.
- Two rows after.

## 7. Common Window Frame Examples

### Example 1: Running Total

```
SELECT
    ENAME,
    SAL,
    SUM(SAL) OVER(
        ORDER BY SAL
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS RUNNING_TOTAL
FROM EMP;
```

Explanation:

- Starts from the first row.
- Includes the current row.
- Calculates the cumulative salary.

Each row displays the sum of salaries from the first row up to the current row.

### Example 2: Moving Average

```
SELECT
    ENAME,
    SAL,
    AVG(SAL) OVER(
        ORDER BY SAL
        ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
    ) AS MOVING_AVERAGE
FROM EMP;
```

Explanation:

- Considers the current row.
- Includes the two preceding rows.
- Calculates the average of those rows.

For the first row, only one row is available.

For the second row, only two rows are available.

For the third row onward, three rows are considered.

### Example 3: Sum of Current and Following Two Rows

```
SELECT
    ENAME,
    SAL,
    SUM(SAL) OVER(
        ORDER BY SAL
        ROWS BETWEEN CURRENT ROW AND 2 FOLLOWING
    ) AS FUTURE_TOTAL
FROM EMP;
```

Explanation:

- Starts from the current row.
- Includes the next two rows.
- Calculates their combined salary.

### Example 4: Total Salary Across the Entire Result

```
SELECT
    ENAME,
    SAL,
    SUM(SAL) OVER(
        ORDER BY SAL
        ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
    ) AS TOTAL_SALARY
FROM EMP;
```

Explanation:

- Starts from the first row.
- Includes every row.
- Ends at the last row.
- Displays the same total salary for every employee.

### Example 5: Last Salary in the Entire Ordered Result

```
SELECT
    ENAME,
    SAL,
    LAST_VALUE(SAL) OVER(
        ORDER BY SAL ASC
        ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
    ) AS LAST_SALARY
FROM EMP;
```

Explanation:

- ORDER BY SAL ASC sorts salaries from lowest to highest.
- UNBOUNDED PRECEDING starts from the first row.
- UNBOUNDED FOLLOWING extends the frame to the last row.
- LAST_VALUE() returns the salary from the last row.

Therefore, every employee receives the highest salary in the result.

## 8. Why Is the Window Frame Important in LAST_VALUE()?

Consider:

```
SELECT
    ENAME,
    SAL,
    LAST_VALUE(SAL) OVER(
        ORDER BY SAL ASC
    ) AS LAST_SALARY
FROM EMP;
```

In SQL Server, when an ORDER BY is specified and the function supports a window frame, the default frame is:

```
RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
```

This means:

- Start from the first row.
- Stop at the current row and its peers.
- Do not automatically include all future rows.

As a result, LAST_VALUE() generally returns the current ordering value or the last value among the current row's peers.

For example:

| ENAME | SAL  | LAST_SALARY |
| ----- | ---- | ----------- |
| SMITH | 800  | 800         |
| ALLEN | 1600 | 1600        |
| JONES | 2975 | 2975        |
| SCOTT | 3000 | 3000        |
| KING  | 5000 | 5000        |

To get the last salary from the entire ordered result, use:

```
ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
```

Now the frame includes all rows.

| ENAME | SAL  | LAST_SALARY |
| ----- | ---- | ----------- |
| SMITH | 800  | 5000        |
| ALLEN | 1600 | 5000        |
| JONES | 2975 | 5000        |
| SCOTT | 3000 | 5000        |
| KING  | 5000 | 5000        |

Important:

The explicit frame is not limited to LAST_VALUE(). It can also be used with FIRST_VALUE() and aggregate window functions such as SUM(), AVG(), COUNT(), MIN(), and MAX().

However, not every window function supports a window frame.

## 9. Window Frame vs Ranking and Other Functions

| Function                       | Supports Explicit Window Frame? |
| ------------------------------ | ------------------------------- |
| `ROW_NUMBER()`                 | No                              |
| `RANK()`                       | No                              |
| `DENSE_RANK()`                 | No                              |
| `NTILE()`                      | No                              |
| `LAG()`                        | No                              |
| `LEAD()`                       | No                              |
| `FIRST_VALUE()`                | Yes                             |
| `LAST_VALUE()`                 | Yes                             |
| `SUM()` as a window function   | Yes                             |
| `AVG()` as a window function   | Yes                             |
| `COUNT()` as a window function | Yes                             |
| `MIN()` as a window function   | Yes                             |
| `MAX()` as a window function   | Yes                             |

Important:

- Ranking functions do not accept an explicit window frame.
- LAG() and LEAD() use an offset to access preceding or following rows.
- FIRST_VALUE() and LAST_VALUE() are frame-sensitive.
- Aggregate functions can use window frames when used with OVER().

## 10. Aggregate Functions as Window Functions

Aggregate functions can also be used as window functions with the OVER() clause.

Common examples:

- `SUM() OVER()`
- `AVG() OVER()`
- `COUNT() OVER()`
- `MIN() OVER()`
- `MAX() OVER()`

### Example 1: Total Salary

```
SELECT
    ENAME,
    SAL,
    SUM(SAL) OVER() AS TOTAL_SALARY
FROM EMP;
```

Every employee displays the total salary of all employees.

### Example 2: Department-Wise Average Salary

```
SELECT
    ENAME,
    SAL,
    DEPTNO,
    AVG(SAL) OVER(PARTITION BY DEPTNO) AS AVERAGE_SALARY
FROM EMP;
```

Every employee displays the average salary of their department.

### Example 3: Department-Wise Highest and Lowest Salary

```
SELECT
    ENAME,
    SAL,
    DEPTNO,
    MAX(SAL) OVER(PARTITION BY DEPTNO) AS HIGHEST_SALARY,
    MIN(SAL) OVER(PARTITION BY DEPTNO) AS LOWEST_SALARY
FROM EMP;
```

Every employee displays the highest and lowest salary of their department.

### Example 4: Department-Wise Employee Count

```
SELECT
    ENAME,
    DEPTNO,
    COUNT(*) OVER(PARTITION BY DEPTNO) AS TOTAL_EMPLOYEES
FROM EMP;
```

Every employee displays the total number of employees in their department.

## 11. Important Differences

### ROW_NUMBER() vs RANK() vs DENSE_RANK()

| Feature                    | ROW_NUMBER()         | RANK()            | DENSE_RANK()         |
| -------------------------- | -------------------- | ----------------- | -------------------- |
| Unique number for each row | Yes                  | No                | No                   |
| Same rank for tied values  | No                   | Yes               | Yes                  |
| Skips ranks after ties     | No                   | Yes               | No                   |
| Main purpose               | Sequential numbering | Ranking with gaps | Ranking without gaps |

### LAG() vs LEAD()

| LAG()                       | LEAD()                    |
| --------------------------- | ------------------------- |
| Accesses a preceding row.   | Accesses a following row. |
| Looks backward.             | Looks forward.            |
| Useful for previous values. | Useful for next values.   |

### FIRST_VALUE() vs LAST_VALUE()

| FIRST_VALUE()                                                    | LAST_VALUE()                                                    |
| ---------------------------------------------------------------- | --------------------------------------------------------------- |
| Returns the first value in the window frame.                     | Returns the last value in the window frame.                     |
| Depends on ordering and frame.                                   | Depends on ordering and frame.                                  |
| Commonly used to find the first or highest/lowest ordered value. | Commonly used to find the last or highest/lowest ordered value. |

### GROUP BY vs PARTITION BY

| GROUP BY                               | PARTITION BY                                   |
| -------------------------------------- | ---------------------------------------------- |
| Groups rows into one result per group. | Divides rows into partitions for calculations. |
| Usually reduces the number of rows.    | Preserves individual rows.                     |
| Used with aggregate functions.         | Used inside the OVER() clause.                 |
| Example: `GROUP BY DEPTNO`             | Example: `PARTITION BY DEPTNO`                 |

### ROWS vs RANGE

| ROWS                                      | RANGE                                                          |
| ----------------------------------------- | -------------------------------------------------------------- |
| Uses physical row positions.              | Uses logical ordering values.                                  |
| Considers actual row offsets.             | Includes peer rows with matching ordering values.              |
| Supports `n PRECEDING` and `n FOLLOWING`. | SQL Server supports only unbounded and current-row boundaries. |

## 12. Important Window Function Notes

- Window functions use the OVER() clause.
- PARTITION BY divides rows into separate groups without collapsing them.
- ORDER BY determines the logical order inside the window.
- The final output order is controlled by the outer ORDER BY.
- ROW_NUMBER() assigns a unique sequential number.
- RANK() leaves gaps after tied ranks.
- DENSE_RANK() does not leave gaps after tied ranks.
- NTILE() divides rows into approximately equal-sized groups.
- LAG() accesses preceding rows.
- LEAD() accesses following rows.
- FIRST_VALUE() returns the first value in the window frame.
- LAST_VALUE() returns the last value in the window frame.
- Aggregate functions can also be used as window functions.
- Window frames define which rows participate in frame-sensitive calculations.
- ROWS works with physical row positions.
- RANGE works with logical ordering values and peers.
- UNBOUNDED PRECEDING starts from the first row of the partition.
- CURRENT ROW refers to the current row or its peers, depending on the frame unit.
- UNBOUNDED FOLLOWING extends to the last row of the partition.
- The default frame for frame-sensitive functions with ORDER BY is RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW.
- Explicit window frames are useful for running totals, moving averages, and FIRST_VALUE()/LAST_VALUE() calculations.
- Use a unique tie-breaker in ORDER BY when deterministic row numbering or ordering is required.

# 06. Conversion Functions

Conversion functions change a value from one data type to another.

They are useful when working with different data types, importing data, formatting results, and handling values that need conversion.

## Common Conversion Functions

| Function        | Description                                                             | Example                                         |
| --------------- | ----------------------------------------------------------------------- | ----------------------------------------------- |
| `CAST()`        | Converts an expression to a specified data type.                        | `CAST(100 AS VARCHAR(10))`                      |
| `CONVERT()`     | Converts an expression to a specified data type, with optional style.   | `CONVERT(VARCHAR(10), GETDATE(), 105)`          |
| `TRY_CAST()`    | Attempts conversion and returns NULL if it fails.                       | `TRY_CAST('123' AS INT)`                        |
| `TRY_CONVERT()` | Attempts conversion and returns NULL if it fails.                       | `TRY_CONVERT(INT, '123')`                       |
| `PARSE()`       | Converts a string to a date or numeric value using culture information. | `PARSE('15/04/2026' AS DATE USING 'en-GB')`     |
| `TRY_PARSE()`   | Attempts parsing and returns NULL if parsing fails.                     | `TRY_PARSE('15/04/2026' AS DATE USING 'en-GB')` |

## Important Conversion Function Explanations

### 1. CAST()

Converts a value from one data type to another.

Syntax:

```
CAST(expression AS data_type)
```

Example:

```
SELECT
    CAST(100 AS VARCHAR(10)) AS String_Value,
    CAST('250' AS INT) AS Integer_Value;
```

### 2. CONVERT()

Converts a value into a specified data type.

It also supports style codes, especially for date and time formatting.

Syntax:

```
CONVERT(data_type, expression, style)
```

Example:

```
SELECT
    CONVERT(VARCHAR(10), GETDATE(), 105) AS Formatted_Date;
```

Style 105 represents:

```
dd-MM-yyyy
```

### 3. TRY_CAST()

Attempts to convert a value into a specified data type.

If the conversion fails, it returns NULL instead of raising a conversion error.

Example:

```
SELECT
    TRY_CAST('123' AS INT) AS Valid_Conversion,
    TRY_CAST('ABC' AS INT) AS Invalid_Conversion;
```

Output:

| Valid_Conversion | Invalid_Conversion |
| ---------------- | ------------------ |
| 123              | NULL               |

### 4. TRY_CONVERT()

Works similarly to TRY_CAST() but also supports CONVERT-style formatting options.

Example:

```
SELECT TRY_CONVERT(INT, '123') AS Result;
```

### 5. PARSE()

Converts a string into a date or numeric value using culture information.

Example:

```
SELECT PARSE('15/04/2026' AS DATE USING 'en-GB') AS Converted_Date;
```

### 6. TRY_PARSE()

Attempts culture-aware conversion and returns NULL if parsing fails.

Example:

```
SELECT TRY_PARSE('15/04/2026' AS DATE USING 'en-GB') AS Converted_Date;
```

## Example

```
SELECT
    CAST(100 AS VARCHAR(10)) AS Cast_Result,
    CONVERT(VARCHAR(10), GETDATE(), 105) AS Converted_Date,
    TRY_CAST('500' AS INT) AS Try_Cast_Result;
```

## Important Notes

- CAST() and CONVERT() are commonly used for data type conversion.
- CAST() follows standard SQL syntax.
- CONVERT() is SQL Server-specific syntax and supports style codes.
- TRY_CAST() and TRY_CONVERT() return NULL when a permitted conversion fails.
- PARSE() and TRY_PARSE() support culture-aware parsing.
- Conversion functions should be used carefully to avoid data loss or unexpected results.
- Converting a value into a smaller data type may cause truncation or overflow.
- TRY_CAST() and TRY_CONVERT() do not suppress every possible error, such as conversions that are explicitly disallowed.

# 07. NULL Functions

NULL represents a missing or unknown value in SQL Server.

NULL is different from zero, an empty string, or a blank space.

NULL functions help handle missing values and provide alternative results.

## Common NULL Functions

| Function     | Description                                        | Example             |
| ------------ | -------------------------------------------------- | ------------------- |
| `ISNULL()`   | Replaces NULL with a specified replacement value.  | `ISNULL(COMM, 0)`   |
| `COALESCE()` | Returns the first non-NULL expression from a list. | `COALESCE(COMM, 0)` |
| `NULLIF()`   | Returns NULL if two expressions are equal.         | `NULLIF(SAL, 0)`    |

## Important NULL Function Explanations

### 1. ISNULL()

Replaces NULL with a specified replacement value.

Syntax:

```
ISNULL(expression, replacement_value)
```

Example:

```
SELECT
    ENAME,
    COMM,
    ISNULL(COMM, 0) AS Commission
FROM EMP;
```

Explanation:

- If COMM contains NULL, ISNULL() returns 0.
- Otherwise, it returns the original COMM value.

### 2. COALESCE()

Returns the first non-NULL expression from a list of expressions.

Syntax:

```
COALESCE(expression1, expression2, expression3, ...)
```

Example:

```
SELECT
    ENAME,
    COMM,
    COALESCE(COMM, 0) AS Commission
FROM EMP;
```

Another example:

```
SELECT COALESCE(NULL, NULL, 100, 200) AS Result;
```

Output:

```
100
```

Explanation:

- SQL Server checks expressions from left to right.
- It returns the first expression that is not NULL.
- If all expressions are NULL, it returns NULL.

### 3. NULLIF()

Returns NULL if two expressions are equal.

Otherwise, it returns the first expression.

Syntax:

```
NULLIF(expression1, expression2)
```

Example:

```
SELECT NULLIF(100, 100) AS Result;
```

Output:

```
NULL
```

Another example:

```
SELECT NULLIF(100, 200) AS Result;
```

Output:

```
100
```

### NULLIF() to Avoid Division by Zero

Example:

```
SELECT
    SAL,
    SAL / NULLIF(COMM, 0) AS Salary_Ratio
FROM EMP;
```

Explanation:

- If COMM is zero, NULLIF(COMM, 0) returns NULL.
- SQL Server does not attempt division by zero.
- The result becomes NULL for that row.

## Example

```
SELECT
    ENAME,
    SAL,
    COMM,
    ISNULL(COMM, 0) AS Commission_ISNULL,
    COALESCE(COMM, 0) AS Commission_COALESCE
FROM EMP;
```

## ISNULL() vs COALESCE()

| Feature      | ISNULL()                                    | COALESCE()                               |
| ------------ | ------------------------------------------- | ---------------------------------------- |
| Purpose      | Replaces NULL with a replacement value.     | Returns the first non-NULL expression.   |
| Arguments    | Exactly two arguments.                      | Two or more expressions.                 |
| SQL Standard | SQL Server function.                        | SQL standard expression.                 |
| Return Type  | Generally the type of the first expression. | Determined by data type precedence.      |
| Evaluation   | Evaluates its arguments as a function.      | Can evaluate expressions more than once. |

## ISNULL() vs NULLIF()

| ISNULL()                          | NULLIF()                                     |
| --------------------------------- | -------------------------------------------- |
| Replaces NULL with another value. | Returns NULL when two expressions are equal. |
| Takes two arguments.              | Takes two arguments.                         |
| Example: `ISNULL(COMM, 0)`        | Example: `NULLIF(SAL, 0)`                    |

## COALESCE() vs NULLIF()

| COALESCE()                             | NULLIF()                                    |
| -------------------------------------- | ------------------------------------------- |
| Returns the first non-NULL expression. | Returns NULL if both expressions are equal. |
| Accepts multiple expressions.          | Accepts two expressions.                    |
| Example: `COALESCE(COMM, 0, 100)`      | Example: `NULLIF(SAL, 0)`                   |

## Important Notes

- NULL represents missing or unknown information.
- NULL is different from zero, an empty string, and a blank space.
- Use IS NULL and IS NOT NULL to test for NULL values in conditions.
- Do not use `= NULL` or `<> NULL` to check for NULL.
- ISNULL() replaces NULL with a specified value.
- COALESCE() returns the first non-NULL expression.
- NULLIF() returns NULL when two expressions are equal.
- ISNULL() is specific to SQL Server.
- COALESCE() is part of the SQL standard.
- NULLIF() is useful for avoiding division-by-zero errors when used appropriately.
- Aggregate functions such as SUM(), AVG(), MIN(), and MAX() generally ignore NULL values.
- COUNT(\*) counts all rows, whereas COUNT(column_name) ignores NULL values.

# Important Differences

## 1. Aggregate Functions vs Window Functions

| Aggregate Functions                                          | Window Functions                          |
| ------------------------------------------------------------ | ----------------------------------------- |
| Usually return one result per group when used with GROUP BY. | Preserve individual rows.                 |
| Can be used with GROUP BY.                                   | Use the OVER() clause.                    |
| Summarize data.                                              | Perform calculations across related rows. |
| Example: `SUM(SAL)`                                          | Example: `SUM(SAL) OVER()`                |

## 2. GROUP BY vs PARTITION BY

| GROUP BY                                    | PARTITION BY                           |
| ------------------------------------------- | -------------------------------------- |
| Groups rows into a single result per group. | Divides rows into separate partitions. |
| Usually reduces the number of rows.         | Preserves individual rows.             |
| Used with aggregate functions.              | Used inside OVER().                    |
| Example: `GROUP BY DEPTNO`                  | Example: `PARTITION BY DEPTNO`         |

## 3. CAST() vs CONVERT()

| CAST()                    | CONVERT()                                     |
| ------------------------- | --------------------------------------------- |
| Standard SQL syntax.      | SQL Server-specific syntax.                   |
| Converts data types.      | Converts data types and supports style codes. |
| `CAST(GETDATE() AS DATE)` | `CONVERT(DATE, GETDATE())`                    |

## 4. ISNULL() vs NULLIF()

| ISNULL()                          | NULLIF()                                     |
| --------------------------------- | -------------------------------------------- |
| Replaces NULL with another value. | Returns NULL when two expressions are equal. |
| `ISNULL(COMM, 0)`                 | `NULLIF(SAL, 0)`                             |

## 5. ROW_NUMBER() vs RANK() vs DENSE_RANK()

| ROW_NUMBER()              | RANK()                     | DENSE_RANK()               |
| ------------------------- | -------------------------- | -------------------------- |
| Unique sequential number. | Same rank for tied values. | Same rank for tied values. |
| No gaps.                  | Leaves gaps after ties.    | No gaps after ties.        |

## 6. LAG() vs LEAD()

| LAG()                    | LEAD()                   |
| ------------------------ | ------------------------ |
| Accesses preceding rows. | Accesses following rows. |
| Looks backward.          | Looks forward.           |

## 7. FIRST_VALUE() vs LAST_VALUE()

| FIRST_VALUE()                                | LAST_VALUE()                                |
| -------------------------------------------- | ------------------------------------------- |
| Returns the first value in the window frame. | Returns the last value in the window frame. |
| Depends on ordering and window frame.        | Depends on ordering and window frame.       |

## 8. ROWS vs RANGE

| ROWS                                              | RANGE                                                          |
| ------------------------------------------------- | -------------------------------------------------------------- |
| Uses physical row positions.                      | Uses logical ordering values.                                  |
| Works with physical offsets.                      | Includes peer rows with matching ordering values.              |
| Supports numeric PRECEDING and FOLLOWING offsets. | SQL Server supports only unbounded and current-row boundaries. |

# Function Categories at a Glance

| Category      | Main Purpose            | Example Functions                           |
| ------------- | ----------------------- | ------------------------------------------- |
| String        | Text manipulation       | `LEN`, `UPPER`, `SUBSTRING`, `REPLACE`      |
| Numeric       | Mathematical operations | `ABS`, `ROUND`, `POWER`, `SQRT`             |
| Date and Time | Date calculations       | `GETDATE`, `DATEADD`, `DATEDIFF`, `EOMONTH` |
| Aggregate     | Data summarization      | `COUNT`, `SUM`, `AVG`, `MIN`, `MAX`         |
| Window        | Analytical calculations | `ROW_NUMBER`, `RANK`, `LAG`, `LEAD`         |
| Conversion    | Data type conversion    | `CAST`, `CONVERT`, `TRY_CAST`               |
| NULL          | Missing value handling  | `ISNULL`, `COALESCE`, `NULLIF`              |

# Practice Database

All practical exercises in this section will use the existing database:

USE sql_server_practice;
```

Main tables:

- `EMPLOYEE`
- `DEPT`
- `STUDENT_DETAILS`

The EMP table may also be used for employee-related exercises where it is available in the practice database.

Additional temporary tables may be created when a particular function requires suitable sample data.

# Learning Objectives

After completing this section, you should be able to:

1. Manipulate and process text using string functions.
2. Perform mathematical calculations using numeric functions.
3. Extract and manipulate date and time values.
4. Summarize data using aggregate functions.
5. Understand the difference between GROUP BY and PARTITION BY.
6. Perform ranking and analytical calculations using window functions.
7. Calculate running totals and moving averages using window frames.
8. Understand ROWS, RANGE, PRECEDING, FOLLOWING, and CURRENT ROW.
9. Use FIRST_VALUE() and LAST_VALUE() correctly.
10. Access previous and next row values using LAG() and LEAD().
11. Convert values between different data types.
12. Handle NULL values using appropriate SQL functions.
13. Combine multiple SQL functions in practical queries.
14. Apply SQL functions to real-world data analysis problems.

# Learning Resources

- [Microsoft Learn – Transact-SQL Functions](https://learn.microsoft.com/en-us/sql/t-sql/functions/functions-transact-sql?utm_source=chatgpt.com)
- [Microsoft Learn – String Functions](https://learn.microsoft.com/en-us/sql/t-sql/functions/string-functions-transact-sql?utm_source=chatgpt.com)
- [Microsoft Learn – Mathematical Functions](https://learn.microsoft.com/en-us/sql/t-sql/functions/mathematical-functions-transact-sql?utm_source=chatgpt.com)
- [Microsoft Learn – Date and Time Functions](https://learn.microsoft.com/en-us/sql/t-sql/functions/date-and-time-data-types-and-functions-transact-sql?utm_source=chatgpt.com)
- [Microsoft Learn – Aggregate Functions](https://learn.microsoft.com/en-us/sql/t-sql/functions/aggregate-functions-transact-sql?utm_source=chatgpt.com)
- [Microsoft Learn – Ranking Functions](https://learn.microsoft.com/en-us/sql/t-sql/functions/ranking-functions-transact-sql?utm_source=chatgpt.com)
- [Microsoft Learn – Conversion Functions](https://learn.microsoft.com/en-us/sql/t-sql/functions/conversion-functions-transact-sql?utm_source=chatgpt.com)
- [Microsoft Learn – OVER Clause](https://learn.microsoft.com/en-us/sql/t-sql/queries/select-over-clause-transact-sql?utm_source=chatgpt.com)
- [Microsoft Learn – Analytic Functions](https://learn.microsoft.com/en-us/sql/t-sql/functions/analytic-functions-transact-sql?utm_source=chatgpt.com)
