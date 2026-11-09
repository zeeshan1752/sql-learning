# SQL Querying

## 1. Introduction

SQL Querying is the process of retrieving and displaying data stored in database tables.

In Microsoft SQL Server, the `SELECT` statement is used to retrieve data. We can use different clauses and operators with `SELECT` to filter, sort, organize, and display records according to our requirements.

For example, an employee table may contain hundreds of records, but we might want to retrieve only:
- Employees earning more than 3000.
- Employees working in a particular department.
- Unique department numbers.
- The five highest-paid employees.
- Employees whose names start with a particular letter.

SQL provides different clauses and operators to perform these operations.

## 2. Topics Covered

| No. | Topic | Purpose |
|---|---|---|
| 01 | SELECT Statement | Retrieve data from tables. |
| 02 | WHERE Clause | Filter records based on conditions. |
| 03 | DISTINCT Clause | Retrieve unique values and remove duplicate result rows. |
| 04 | ORDER BY Clause | Sort query results. |
| 05 | TOP Clause | Limit the number of returned records. |
| 06 | Alias | Assign temporary names to columns and tables. |
| 07 | Logical Operators | Combine multiple conditions. |
| 08 | Comparison Operators | Compare two values. |
| 09 | Pattern Matching | Search for specific text patterns using LIKE. |

---

# 3. SELECT Statement

## Definition

The `SELECT` statement is used to retrieve data from one or more database tables.

It can retrieve all columns or only specific columns from a table.

## Syntax

**Retrieve all columns:**

```sql
SELECT *
FROM table_name;
```

**Retrieve specific columns:**

```sql
SELECT column1, column2
FROM table_name;
```

## Examples

**1. Retrieve all employee records**

```sql
SELECT *
FROM EMPLOYEE;
```

**2. Retrieve employee names**

```sql
SELECT ENAME
FROM EMPLOYEE;
```

**3. Retrieve employee ID, name, and salary**

```sql
SELECT EMPNO, ENAME, SAL
FROM EMPLOYEE;
```

**4. Retrieve department records**

```sql
SELECT *
FROM DEPT;
```

## Important Points

- `SELECT` specifies which columns to retrieve.
- `*` represents all columns.
- Column names are separated by commas.
- `FROM` specifies the table from which data is retrieved.
- `SELECT` does not modify the original table data.

---

# 4. WHERE Clause

## Definition

The `WHERE` clause is used to filter records based on specified conditions.

Only records satisfying the condition are returned in the result.

## Syntax

```sql
SELECT column_name
FROM table_name
WHERE condition;
```

## Examples

**1. Display employees earning more than 3000**

```sql
SELECT *
FROM EMPLOYEE
WHERE SAL > 3000;
```

**2. Display employees working in department 20**

```sql
SELECT *
FROM EMPLOYEE
WHERE DEPTNO = 20;
```

**3. Display employees whose job is MANAGER**

```sql
SELECT *
FROM EMPLOYEE
WHERE JOB = 'MANAGER';
```

**4. Display employees earning exactly 3000**

```sql
SELECT *
FROM EMPLOYEE
WHERE SAL = 3000;
```

## Important Points

- `WHERE` filters rows before they are returned.
- Text values are enclosed in single quotation marks.
- Numeric values do not require quotation marks.
- Date values can be specified using appropriate date literals.
- Multiple conditions can be combined using logical operators.

---

# 5. DISTINCT Clause

## Definition

The `DISTINCT` keyword is used to retrieve unique values from a column or combination of columns.

It eliminates duplicate rows from the query result.

## Syntax

**For a single column:**

```sql
SELECT DISTINCT column_name
FROM table_name;
```

**For multiple columns:**

```sql
SELECT DISTINCT column1, column2
FROM table_name;
```

## Examples

**1. Display unique department numbers**

```sql
SELECT DISTINCT DEPTNO
FROM EMPLOYEE;
```

**2. Display unique job titles**

```sql
SELECT DISTINCT JOB
FROM EMPLOYEE;
```

**3. Display unique combinations of job and department**

```sql
SELECT DISTINCT JOB, DEPTNO
FROM EMPLOYEE;
```

## Important Points

- `DISTINCT` removes duplicate rows from the result.
- It does not delete duplicate records from the original table.
- When multiple columns are specified, uniqueness is determined by the combination of those columns.
- `DISTINCT` can be applied to one or more selected columns.

---

# 6. ORDER BY Clause

## Definition

The `ORDER BY` clause is used to sort the records returned by a query.

SQL Server supports two main sorting directions:

| Keyword | Meaning |
|---|---|
| ASC | Ascending order |
| DESC | Descending order |

If no sorting direction is specified, SQL Server uses `ASC` by default.

## Syntax

```sql
SELECT column_name
FROM table_name
ORDER BY column_name ASC;
```

Or:

```sql
SELECT column_name
FROM table_name
ORDER BY column_name DESC;
```

## Examples

**1. Display employees in ascending order of salary**

```sql
SELECT *
FROM EMPLOYEE
ORDER BY SAL ASC;
```

**2. Display employees in descending order of salary**

```sql
SELECT *
FROM EMPLOYEE
ORDER BY SAL DESC;
```

**3. Sort employees alphabetically by name**

```sql
SELECT *
FROM EMPLOYEE
ORDER BY ENAME ASC;
```

**4. Sort employees by department and salary**

```sql
SELECT *
FROM EMPLOYEE
ORDER BY DEPTNO ASC, SAL DESC;
```

## Important Points

- `ASC` sorts values from smallest to largest or A to Z.
- `DESC` sorts values from largest to smallest or Z to A.
- Multiple columns can be specified in `ORDER BY`.
- When multiple columns are used, the second column sorts records within groups having the same first-column value.
- Without `ORDER BY`, the result order is not guaranteed.

---

# 7. TOP Clause

## Definition

The `TOP` clause is used to limit the number or percentage of rows returned by a query.

It is commonly used when retrieving a limited number of records, such as the highest-paid employees.

## Syntax

**Retrieve a specified number of rows:**

```sql
SELECT TOP (number)
column_name
FROM table_name;
```

**Retrieve a percentage of rows:**

```sql
SELECT TOP (percentage) PERCENT
column_name
FROM table_name;
```

## Examples

**1. Retrieve the first five employees**

```sql
SELECT TOP (5) *
FROM EMPLOYEE;
```

**2. Retrieve the five highest-paid employees**

```sql
SELECT TOP (5) *
FROM EMPLOYEE
ORDER BY SAL DESC;
```

**3. Retrieve the three lowest-paid employees**

```sql
SELECT TOP (3) *
FROM EMPLOYEE
ORDER BY SAL ASC;
```

**4. Retrieve the top 50 percent of employees by salary**

```sql
SELECT TOP (50) PERCENT *
FROM EMPLOYEE
ORDER BY SAL DESC;
```

**5. Retrieve employees earning the highest salary, including ties**

```sql
SELECT TOP (1) WITH TIES *
FROM EMPLOYEE
ORDER BY SAL DESC;
```

## Important Points

- `TOP` limits the number of rows returned.
- `TOP (5)` returns up to five rows.
- `TOP (50) PERCENT` returns approximately half of the qualifying rows.
- `WITH TIES` includes additional rows having the same ordering value as the last selected row.
- Use `ORDER BY` with `TOP` when you need specific records, such as the highest or lowest salaries.
- Without `ORDER BY`, the selected rows are not predictable.

---

# 8. Alias

## Definition

An alias is a temporary alternative name assigned to a column or table in a SQL query.

Aliases make query results easier to understand and improve readability.

There are two common types:

1. Column Alias
2. Table Alias

## 8.1 Column Alias

A column alias assigns a temporary name to a column in the query result.

### Syntax

```sql
SELECT column_name AS alias_name
FROM table_name;
```

The `AS` keyword is optional when assigning a column alias.

### Examples

**1. Rename ENAME as Employee_Name**

```sql
SELECT ENAME AS Employee_Name
FROM EMPLOYEE;
```

**2. Rename SAL as Salary**

```sql
SELECT SAL AS Salary
FROM EMPLOYEE;
```

**3. Assign aliases to multiple columns**

```sql
SELECT
    EMPNO AS Employee_ID,
    ENAME AS Employee_Name,
    SAL AS Employee_Salary
FROM EMPLOYEE;
```

## 8.2 Table Alias

A table alias assigns a temporary name to a table within a query.

### Syntax

```sql
SELECT alias_name.column_name
FROM table_name AS alias_name;
```

### Example

```sql
SELECT E.EMPNO, E.ENAME, E.SAL
FROM EMPLOYEE AS E;
```

Here, `E` is the alias assigned to the `EMPLOYEE` table.

## Important Points

- Aliases are temporary names used within a query.
- They do not change the original table or column names.
- `AS` is optional for aliases.
- Column aliases are useful for displaying readable column headings.
- Table aliases are useful for shortening table references.

---

# 9. Logical Operators

## Definition

Logical operators are used to combine or modify multiple conditions in a SQL query.

They are commonly used with the `WHERE` clause.

SQL Server provides three main logical operators:

| Operator | Meaning |
|---|---|
| AND | All specified conditions must be TRUE. |
| OR | At least one specified condition must be TRUE. |
| NOT | Reverses the result of a condition. |

## 9.1 AND Operator

The `AND` operator returns records only when all specified conditions are TRUE.

### Syntax

```sql
SELECT *
FROM table_name
WHERE condition1 AND condition2;
```

### Example

Display employees earning more than 3000 and working in department 20.

```sql
SELECT *
FROM EMPLOYEE
WHERE SAL > 3000
AND DEPTNO = 20;
```

## 9.2 OR Operator

The `OR` operator returns records when at least one specified condition is TRUE.

### Syntax

```sql
SELECT *
FROM table_name
WHERE condition1 OR condition2;
```

### Example

Display employees working in department 10 or department 20.

```sql
SELECT *
FROM EMPLOYEE
WHERE DEPTNO = 10
OR DEPTNO = 20;
```

## 9.3 NOT Operator

The `NOT` operator reverses the result of a condition.

### Syntax

```sql
SELECT *
FROM table_name
WHERE NOT condition;
```

### Example

Display employees who are not working in department 20.

```sql
SELECT *
FROM EMPLOYEE
WHERE NOT DEPTNO = 20;
```

## Important Points

- `AND` requires all conditions to be TRUE.
- `OR` requires at least one condition to be TRUE.
- `NOT` reverses a condition.
- Parentheses can be used to control the evaluation order of combined conditions.
- In SQL Server, `AND` has higher precedence than `OR`, and `NOT` has higher precedence than `AND`.

---

# 10. Comparison Operators

## Definition

Comparison operators are used to compare two values or expressions.

They are commonly used in the `WHERE` clause to filter records.

## Comparison Operators in SQL Server

| Operator | Meaning | Example |
|---|---|---|
| = | Equal to | `SAL = 3000` |
| <> | Not equal to | `SAL <> 3000` |
| != | Not equal to | `SAL != 3000` |
| > | Greater than | `SAL > 3000` |
| < | Less than | `SAL < 3000` |
| >= | Greater than or equal to | `SAL >= 3000` |
| <= | Less than or equal to | `SAL <= 3000` |

## Examples

**1. Equal to**

```sql
SELECT *
FROM EMPLOYEE
WHERE DEPTNO = 20;
```

**2. Not equal to**

```sql
SELECT *
FROM EMPLOYEE
WHERE DEPTNO <> 20;
```

**3. Greater than**

```sql
SELECT *
FROM EMPLOYEE
WHERE SAL > 3000;
```

**4. Less than**

```sql
SELECT *
FROM EMPLOYEE
WHERE SAL < 3000;
```

**5. Greater than or equal to**

```sql
SELECT *
FROM EMPLOYEE
WHERE SAL >= 3000;
```

**6. Less than or equal to**

```sql
SELECT *
FROM EMPLOYEE
WHERE SAL <= 3000;
```

## Important Points

- `=` checks whether two values are equal.
- `<>` and `!=` both represent not equal to in SQL Server.
- `>` and `<` compare numerical or other comparable values.
- `>=` and `<=` include equality.
- Comparisons involving `NULL` do not return TRUE or FALSE; they return UNKNOWN. Use `IS NULL` or `IS NOT NULL` to check for NULL values.

---

# 11. Pattern Matching

## Definition

Pattern matching is used to search for specific patterns in character-based data.

In SQL Server, the `LIKE` operator is used with wildcard characters to match text patterns.

## Syntax

```sql
SELECT *
FROM table_name
WHERE column_name LIKE 'pattern';
```

## Wildcard Characters

SQL Server supports several wildcard characters with `LIKE`.

| Wildcard | Meaning | Example |
|---|---|---|
| % | Matches zero or more characters | `'A%'` |
| _ | Matches exactly one character | `'A_'` |
| [ ] | Matches any single character within the specified range or set | `'[AB]%'` |
| [^ ] | Matches any single character not in the specified range or set | `'[^AB]%'` |

## Examples

**1. Names starting with A**

```sql
SELECT *
FROM EMPLOYEE
WHERE ENAME LIKE 'A%';
```

**2. Names ending with N**

```sql
SELECT *
FROM EMPLOYEE
WHERE ENAME LIKE '%N';
```

**3. Names containing A**

```sql
SELECT *
FROM EMPLOYEE
WHERE ENAME LIKE '%A%';
```

**4. Names having exactly four characters**

```sql
SELECT *
FROM EMPLOYEE
WHERE ENAME LIKE '____';
```

**5. Names starting with A or B**

```sql
SELECT *
FROM EMPLOYEE
WHERE ENAME LIKE '[AB]%';
```

**6. Names not starting with A or B**

```sql
SELECT *
FROM EMPLOYEE
WHERE ENAME LIKE '[^AB]%';
```

**7. Names starting with A and ending with N**

```sql
SELECT *
FROM EMPLOYEE
WHERE ENAME LIKE 'A%N';
```

## Important Points

- `%` matches zero or more characters.
- `_` matches exactly one character.
- `[AB]` matches one character from the specified set.
- `[^AB]` matches one character outside the specified set.
- `LIKE` is commonly used with the `WHERE` clause.
- Case sensitivity depends on the collation of the column or database.

---

# 12. Difference Between Important Clauses

| Clause | Purpose |
|---|---|
| SELECT | Specifies the columns to retrieve. |
| WHERE | Filters records based on conditions. |
| DISTINCT | Removes duplicate result rows. |
| ORDER BY | Sorts the returned records. |
| TOP | Limits the number of returned records. |

## Example Combining Multiple Clauses

The following query combines `SELECT`, `DISTINCT`, `WHERE`, and `ORDER BY`.

```sql
SELECT DISTINCT DEPTNO
FROM EMPLOYEE
WHERE SAL > 2000
ORDER BY DEPTNO ASC;
```

This query:
1. Retrieves department numbers.
2. Filters employees earning more than 2000.
3. Removes duplicate department numbers.
4. Sorts the result in ascending order.

Another example:

```sql
SELECT TOP (3)
    EMPNO AS Employee_ID,
    ENAME AS Employee_Name,
    SAL AS Salary
FROM EMPLOYEE
WHERE SAL > 2000
ORDER BY SAL DESC;
```

This query retrieves the three highest-paid employees among those earning more than 2000, with readable column headings.

---

# 13. Important Notes

- SQL querying does not modify the original table data when using `SELECT`.
- The `WHERE` clause filters rows, whereas `SELECT` determines which columns are displayed.
- `DISTINCT` removes duplicate result rows, not duplicate records from the table.
- `ORDER BY` should be used whenever a specific result order is required.
- `TOP` should generally be combined with `ORDER BY` when selecting specific records.
- Logical operators can combine multiple filtering conditions.
- Comparison operators are used to compare values.
- `LIKE` is used for text pattern matching.
- Column and table aliases improve query readability.

---

# 14. Practice Database

All examples and exercises in this section use the existing SQL Server practice database.

**Database Name:** `sql_server_practice`

Select the database before practising:

```sql
USE sql_server_practice;
```

Main practice tables:

| Table | Description |
|---|---|
| EMPLOYEE | Contains employee information such as employee ID, name, job, salary, and department number. |
| DEPT | Contains department information such as department number, department name, and location. |
| STUDENT_DETAILS | Contains student information such as student ID, name, and course. |

---

# 15. Learning Objectives

After completing this section, you should be able to:

1. Retrieve all columns or selected columns using `SELECT`.
2. Filter records using the `WHERE` clause.
3. Retrieve unique values using `DISTINCT`.
4. Sort query results using `ORDER BY`.
5. Limit query results using `TOP`.
6. Assign column and table aliases.
7. Combine conditions using logical operators.
8. Compare values using comparison operators.
9. Search for text patterns using `LIKE`.
10. Combine multiple querying clauses in a single SQL statement.

---

# 16. References

- [Microsoft Learn – SELECT (Transact-SQL)](https://learn.microsoft.com/en-us/sql/t-sql/queries/select-transact-sql)
- [Microsoft Learn – WHERE (Transact-SQL)](https://learn.microsoft.com/en-us/sql/t-sql/queries/where-transact-sql)
- [Microsoft Learn – DISTINCT (Transact-SQL)](https://learn.microsoft.com/en-us/sql/t-sql/queries/select-clause-transact-sql)
- [Microsoft Learn – ORDER BY (Transact-SQL)](https://learn.microsoft.com/en-us/sql/t-sql/queries/select-order-by-clause-transact-sql)
- [Microsoft Learn – TOP (Transact-SQL)](https://learn.microsoft.com/en-us/sql/t-sql/queries/top-transact-sql)
- [Microsoft Learn – LIKE (Transact-SQL)](https://learn.microsoft.com/en-us/sql/t-sql/language-elements/like-transact-sql)