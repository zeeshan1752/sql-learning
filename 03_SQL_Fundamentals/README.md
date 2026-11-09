# 02. SQL Fundamentals

## 1. Introduction to SQL

### 1.1 What is SQL?

SQL stands for Structured Query Language. It is a standard language used to communicate with Relational Database Management Systems (RDBMS).

SQL is used to:
- Create databases and tables.
- Insert data into tables.
- Retrieve data from databases.
- Update existing records.
- Delete records.
- Modify database structures.
- Manage database objects.
- Control database access.
- Manage transactions.

### 1.2 Why Do We Use SQL?

- To store and manage structured data.
- To retrieve information efficiently.
- To manipulate database records.
- To maintain data integrity.
- To manage database security.
- To perform data analysis.
- To interact with relational databases.

### 1.3 Features of SQL

- Simple and readable syntax.
- Supports data definition and manipulation.
- Supports data retrieval.
- Supports transaction management.
- Provides security and access control.
- Supports constraints.
- Supports aggregate operations.
- Supports joins and subqueries.
- Supports database objects such as views and indexes.

### 1.4 Applications of SQL

| Industry | Application |
|---|---|
| Banking | Account and transaction management |
| Healthcare | Patient records |
| Education | Student and examination records |
| E-Commerce | Product and order management |
| Finance | Financial reporting |
| Telecommunications | Customer information |
| Retail | Inventory management |
| Data Analytics | Data extraction and analysis |

### 1.5 Popular SQL Database Systems

| Database System | Developer / Organization |
|---|---|
| Microsoft SQL Server | Microsoft |
| MySQL | Oracle |
| PostgreSQL | PostgreSQL Global Development Group |
| Oracle Database | Oracle |
| SQLite | SQLite Consortium |
| MariaDB | MariaDB Foundation and contributors |

---

## 2. SQL Syntax and Standards

### 2.1 What is SQL Syntax?

SQL syntax refers to the rules and structure used to write SQL statements.

A SQL statement generally consists of:
- Keywords.
- Identifiers.
- Operators.
- Expressions.
- Clauses.
- Literals.

### 2.2 Basic SQL Statement Structure

```sql
SELECT column_name
FROM table_name
WHERE condition;
```

**Explanation:**

- SELECT: Specifies the columns to retrieve.
- FROM: Specifies the source table.
- WHERE: Filters records based on a condition.
- Semicolon: Terminates a SQL statement.

### 2.3 SQL Keywords

Keywords are reserved words that have predefined meanings in SQL.

**Examples:**

- SELECT
- FROM
- WHERE
- INSERT
- UPDATE
- DELETE
- CREATE
- ALTER
- DROP
- JOIN
- GROUP BY
- ORDER BY
- HAVING
- DISTINCT

### 2.4 SQL Identifiers

Identifiers are names used to identify database objects.

**Examples:**

- Database names.
- Table names.
- Column names.
- View names.
- Stored procedure names.
- Index names.
- Constraint names.

### 2.5 SQL Literals

Literals are fixed values written directly in SQL statements.

**Examples:**

```sql
-- Numeric literal
SELECT 100;

-- String literal
SELECT 'Zeeshan';

-- Date literal
SELECT '2026-10-31';

-- Decimal literal
SELECT 45000.50;
```

### 2.6 SQL Clauses

Clauses are individual components of SQL statements that perform specific operations.

| Clause | Purpose |
|---|---|
| SELECT | Specifies columns to retrieve |
| FROM | Specifies the source table |
| WHERE | Filters records |
| DISTINCT | Removes duplicate rows |
| GROUP BY | Groups records |
| HAVING | Filters grouped records |
| ORDER BY | Sorts query results |
| TOP | Limits returned rows in SQL Server |
| LIMIT | Limits returned rows in MySQL |

### 2.7 SQL Statement Termination

A semicolon (`;`) is the standard SQL statement terminator.

```sql
SELECT * FROM Employees;

SELECT * FROM Departments;
```

**Note:** SQL Server allows many statements without a semicolon, but using semicolons consistently is recommended. `GO` is an SSMS/sqlcmd batch separator, not a standard SQL statement terminator.

### 2.8 SQL Syntax Rules

- SQL keywords are generally case-insensitive.
- Identifiers follow database-specific naming and case-sensitivity rules.
- String values are generally enclosed in single quotes.
- Numeric values do not require quotation marks.
- Statements can contain multiple clauses.
- Semicolons are used to terminate statements.
- Reserved keywords should generally not be used as identifiers.
- NULL represents a missing or unknown value and is not equivalent to zero or an empty string.

### 2.9 SQL Standards

SQL standards define common rules and syntax for relational database operations.

SQL standards are published by ISO and IEC.

Important SQL standard versions include:

- SQL-86
- SQL-89
- SQL-92
- SQL:1999
- SQL:2003
- SQL:2008
- SQL:2011
- SQL:2016
- SQL:2023

### 2.10 SQL Dialects

A SQL dialect is a database-specific implementation or extension of SQL.

| Database | SQL Dialect / Implementation |
|---|---|
| Microsoft SQL Server | T-SQL |
| MySQL | MySQL SQL |
| PostgreSQL | PostgreSQL SQL |
| Oracle Database | SQL and PL/SQL |
| SQLite | SQLite SQL |

### 2.11 T-SQL (Transact-SQL)

T-SQL is Microsoft's extension of SQL used by Microsoft SQL Server.

**Features:**
- Variables.
- Stored procedures.
- User-defined functions.
- Triggers.
- Error handling.
- Control-of-flow statements.
- Transaction management.
- System stored procedures.

**Example:**

```sql
USE sql_server_practice;
GO

DECLARE @name VARCHAR(50);

SET @name = 'Zeeshan';

PRINT @name;

SELECT GETDATE() AS Current_Date_Time;
GO
```

### 2.12 MySQL SQL

MySQL implements SQL with its own database-specific syntax, functions and extensions.

**Features:**
- Database and table management.
- Data manipulation.
- Stored procedures.
- Functions and triggers.
- Transaction management.
- User and privilege management.

**Example:**

```sql
-- Select a database
USE company_db;

-- Display current date and time
SELECT NOW();

-- Display current database
SELECT DATABASE();

-- Display current user
SELECT CURRENT_USER();
```

### 2.13 SQL Server vs MySQL Syntax

| Operation | SQL Server | MySQL |
|---|---|---|
| Current Date and Time | GETDATE() | NOW() |
| Current Date | CAST(GETDATE() AS DATE) | CURDATE() |
| Row Limiting | TOP | LIMIT |
| Auto Increment | IDENTITY | AUTO_INCREMENT |
| String Concatenation | + or CONCAT() | CONCAT() |
| Current Database | DB_NAME() | DATABASE() |
| Current User | SYSTEM_USER | CURRENT_USER() |
| Variable Declaration | DECLARE @variable | SET @variable or DECLARE in stored programs |
| Temporary Table | #TableName | CREATE TEMPORARY TABLE |
| Batch Separator | GO (SSMS/sqlcmd) | Not applicable |

### 2.14 SQL Portability

SQL portability refers to the ability to use SQL statements across different database systems with minimal modifications.

**Important:**

- Standard SQL syntax is generally more portable.
- Database-specific functions may not work in other systems.
- T-SQL syntax cannot always be directly executed in MySQL.
- MySQL-specific syntax cannot always be directly executed in SQL Server.

---

## 3. SQL Data Types

### 3.1 What are SQL Data Types?

SQL data types define the kind of values that can be stored in database columns or variables.

They determine:
- Type of data.
- Storage requirements.
- Allowed values.
- Data operations.
- Value representation.

### 3.2 Why Are Data Types Important?

- Maintain data accuracy.
- Prevent invalid data entry.
- Optimize storage.
- Improve query performance.
- Support appropriate calculations.
- Enforce data integrity.

### 3.3 Categories of SQL Data Types

1. Numeric Data Types.
2. Character and String Data Types.
3. Date and Time Data Types.
4. Binary Data Types.
5. Boolean and Logical Data Types.
6. Large Object Data Types.
7. Specialized Data Types.

### 3.4 Numeric Data Types

Numeric data types store numerical values.

**SQL Server:**

| Data Type | Description |
|---|---|
| BIT | Stores 0, 1 or NULL |
| TINYINT | Integer from 0 to 255 |
| SMALLINT | Small integer |
| INT | Integer |
| BIGINT | Large integer |
| DECIMAL(p,s) | Exact fixed-precision number |
| NUMERIC(p,s) | Exact numeric value |
| FLOAT | Approximate floating-point number |
| REAL | Approximate floating-point number |
| MONEY | Monetary value |
| SMALLMONEY | Smaller monetary range |

**MySQL:**

| Data Type | Description |
|---|---|
| BIT | Bit values |
| TINYINT | Small integer |
| SMALLINT | Small integer |
| MEDIUMINT | Medium-sized integer |
| INT / INTEGER | Integer |
| BIGINT | Large integer |
| DECIMAL(p,s) | Exact fixed-point number |
| FLOAT | Approximate floating-point number |
| DOUBLE | Double-precision floating-point number |

### 3.5 Character and String Data Types

Used to store text and character values.

**SQL Server:**

| Data Type | Description |
|---|---|
| CHAR(n) | Fixed-length non-Unicode string |
| VARCHAR(n) | Variable-length non-Unicode string |
| VARCHAR(MAX) | Large variable-length non-Unicode string |
| NCHAR(n) | Fixed-length Unicode string |
| NVARCHAR(n) | Variable-length Unicode string |
| NVARCHAR(MAX) | Large variable-length Unicode string |

**MySQL:**

| Data Type | Description |
|---|---|
| CHAR(n) | Fixed-length string |
| VARCHAR(n) | Variable-length string |
| TINYTEXT | Small text |
| TEXT | Text |
| MEDIUMTEXT | Medium-sized text |
| LONGTEXT | Large text |

### 3.6 Date and Time Data Types

Used to store dates, times and timestamps.

**SQL Server:**

| Data Type | Description |
|---|---|
| DATE | Date only |
| TIME | Time only |
| DATETIME | Date and time |
| DATETIME2 | Date and time with greater fractional-second precision |
| SMALLDATETIME | Date and time with lower precision |
| DATETIMEOFFSET | Date and time with time-zone offset |

**MySQL:**

| Data Type | Description |
|---|---|
| DATE | Date only |
| TIME | Time only |
| DATETIME | Date and time |
| TIMESTAMP | Timestamp |
| YEAR | Year value |

### 3.7 Binary Data Types

Used to store binary data.

**SQL Server:**
- BINARY
- VARBINARY
- VARBINARY(MAX)

**MySQL:**
- BINARY
- VARBINARY
- TINYBLOB
- BLOB
- MEDIUMBLOB
- LONGBLOB

### 3.8 Boolean and Logical Data Types

**SQL Server:**
- BIT

**MySQL:**
- BOOLEAN
- BOOL
- BIT

In MySQL, BOOLEAN and BOOL are aliases for TINYINT(1). They are not separate native Boolean storage types.

### 3.9 Specialized Data Types

**SQL Server:**
- UNIQUEIDENTIFIER
- XML
- SQL_VARIANT
- GEOGRAPHY
- GEOMETRY
- HIERARCHYID

**MySQL:**
- JSON
- ENUM
- SET
- Spatial Data Types

### 3.10 SQL Server vs MySQL Data Types

| Purpose | SQL Server | MySQL |
|---|---|---|
| Integer | INT | INT |
| Large Integer | BIGINT | BIGINT |
| Small Integer | SMALLINT | SMALLINT |
| Decimal | DECIMAL | DECIMAL |
| Fixed String | CHAR | CHAR |
| Variable String | VARCHAR | VARCHAR |
| Unicode String | NVARCHAR | VARCHAR with suitable character set |
| Date | DATE | DATE |
| Time | TIME | TIME |
| Date and Time | DATETIME2 | DATETIME |
| Boolean-like | BIT | BOOLEAN / BOOL |
| Binary | VARBINARY | VARBINARY |
| JSON | Commonly stored using NVARCHAR | JSON |
| Unique Identifier | UNIQUEIDENTIFIER | Commonly CHAR(36) or BINARY(16) |

### 3.11 Choosing Appropriate Data Types

| Column | Suggested Data Type |
|---|---|
| Employee_ID | INT |
| Employee_Name | VARCHAR(100) |
| Salary | DECIMAL(10,2) |
| Date_of_Birth | DATE |
| Joining_Date | DATETIME2 / DATETIME |
| Is_Active | BIT / BOOLEAN |
| Profile_Image | VARBINARY(MAX) / BLOB |
| Email | VARCHAR(255) |

**Important:** Choose data types according to expected values, range, precision, character requirements and database system.

---

## 4. SQL Operators

### 4.1 What are SQL Operators?

SQL operators are symbols or keywords used to perform operations on values, expressions and conditions.

They are used in SQL statements to:
- Perform calculations.
- Compare values.
- Combine conditions.
- Assign values.
- Filter records.
- Perform bitwise operations.

### 4.2 Types of SQL Operators

1. Arithmetic Operators.
2. Comparison Operators.
3. Logical Operators.
4. Assignment Operators.
5. Bitwise Operators.
6. Special Operators.

### 4.3 Arithmetic Operators

Arithmetic operators perform mathematical calculations.

| Operator | Description | Example |
|---|---|---|
| + | Addition | 10 + 5 |
| - | Subtraction | 10 - 5 |
| * | Multiplication | 10 * 5 |
| / | Division | 10 / 5 |
| % | Modulus | 10 % 3 |

**Example:**

```sql
-- SQL Server and MySQL

SELECT
    10 + 5 AS Addition,
    10 - 5 AS Subtraction,
    10 * 5 AS Multiplication,
    10 / 5 AS Division,
    10 % 3 AS Modulus;
```

### 4.4 Comparison Operators

Comparison operators compare two values and produce a logical result.

| Operator | Description |
|---|---|
| = | Equal to |
| <> | Not equal to |
| != | Not equal to (supported by both systems) |
| > | Greater than |
| < | Less than |
| >= | Greater than or equal to |
| <= | Less than or equal to |

**Example:**

```sql
USE sql_server_practice;
GO

SELECT *
FROM Employees
WHERE Salary >= 30000;
GO
```

### 4.5 Logical Operators

Logical operators combine or modify conditions.

| Operator | Description |
|---|---|
| AND | All conditions must be TRUE |
| OR | At least one condition must be TRUE |
| NOT | Reverses a logical condition |

**Example:**

```sql
-- AND
SELECT *
FROM Employees
WHERE Salary > 30000
AND Department_ID = 10;

-- OR
SELECT *
FROM Employees
WHERE Department_ID = 10
OR Department_ID = 20;

-- NOT
SELECT *
FROM Employees
WHERE NOT Department_ID = 10;
```

### 4.6 Assignment Operators

Assignment operators assign values to variables.

**SQL Server:**

```sql
DECLARE @salary INT;

SET @salary = 50000;

SELECT @salary AS Salary;
```

SQL Server also supports compound assignment operators such as `+=`, `-=`, `*=`, and `/=`.

**MySQL:**

```sql
SET @salary = 50000;

SELECT @salary AS Salary;
```

### 4.7 Bitwise Operators

Bitwise operators perform operations on the binary representations of integer values.

| Operator | Description |
|---|---|
| & | Bitwise AND |
| \| | Bitwise OR |
| ^ | Bitwise XOR |
| ~ | Bitwise NOT |

**Example:**

```sql
-- SQL Server and MySQL

SELECT
    5 & 3 AS Bitwise_AND,
    5 | 3 AS Bitwise_OR,
    5 ^ 3 AS Bitwise_XOR;
```

### 4.8 Special Operators

Special operators are used for specific comparison, filtering and matching operations.

| Operator | Purpose |
|---|---|
| BETWEEN | Checks a value within a range |
| IN | Checks whether a value matches a list |
| LIKE | Matches a pattern |
| IS NULL | Checks for NULL |
| IS NOT NULL | Checks for non-NULL |
| EXISTS | Checks whether a subquery returns rows |
| ANY | Compares with any value returned by a subquery |
| ALL | Compares with all values returned by a subquery |

**Examples:**

```sql
-- BETWEEN
SELECT *
FROM Employees
WHERE Salary BETWEEN 20000 AND 50000;

-- IN
SELECT *
FROM Employees
WHERE Department_ID IN (10, 20, 30);

-- LIKE
SELECT *
FROM Employees
WHERE Employee_Name LIKE 'A%';

-- IS NULL
SELECT *
FROM Employees
WHERE Manager_ID IS NULL;

-- IS NOT NULL
SELECT *
FROM Employees
WHERE Manager_ID IS NOT NULL;
```

### 4.9 Operator Precedence

Operator precedence determines the order in which SQL evaluates operators in an expression.

General precedence order:

1. Parentheses.
2. Arithmetic operators.
3. Comparison operators.
4. NOT.
5. AND.
6. OR.

Use parentheses to make complex conditions easier to understand.

**Example:**

```sql
SELECT *
FROM Employees
WHERE (Department_ID = 10 OR Department_ID = 20)
AND Salary > 30000;
```

---

## 5. SQL Constraints

### 5.1 What are SQL Constraints?

Constraints are rules applied to database columns or tables to control the type of data that can be stored.

They help maintain data accuracy, consistency and integrity.

### 5.2 Why Do We Use Constraints?

- Prevent invalid data.
- Maintain data integrity.
- Enforce business rules.
- Prevent unwanted duplicate values.
- Establish relationships between tables.
- Ensure valid column values.

### 5.3 Types of SQL Constraints

1. NOT NULL
2. UNIQUE
3. PRIMARY KEY
4. FOREIGN KEY
5. CHECK
6. DEFAULT

### 5.4 NOT NULL Constraint

The NOT NULL constraint ensures that a column cannot store NULL values.

**Example:**

```sql
CREATE TABLE Students
(
    Student_ID INT NOT NULL,
    Student_Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100)
);
```

**Explanation:**
- Student_ID cannot be NULL.
- Student_Name cannot be NULL.
- Email can contain NULL values.

### 5.5 UNIQUE Constraint

The UNIQUE constraint ensures that values in a column or combination of columns are unique.

**Example:**

```sql
CREATE TABLE Students
(
    Student_ID INT,
    Email VARCHAR(100) UNIQUE
);
```

**Explanation:**
- Duplicate non-NULL email values are not allowed.
- NULL handling and the number of allowed NULL values differ between SQL Server and MySQL.

### 5.6 PRIMARY KEY Constraint

The PRIMARY KEY constraint uniquely identifies each record in a table.

**Characteristics:**
- Must contain unique values.
- Cannot contain NULL values.
- A table can have only one PRIMARY KEY constraint.
- Can consist of one or multiple columns.

**Example:**

```sql
CREATE TABLE Students
(
    Student_ID INT PRIMARY KEY,
    Student_Name VARCHAR(100),
    Email VARCHAR(100)
);
```

### 5.7 FOREIGN KEY Constraint

The FOREIGN KEY constraint establishes a relationship between two tables.

It ensures that foreign key values reference valid candidate key values in the referenced table, subject to the constraint rules.

**Example:**

```sql
CREATE TABLE Departments
(
    Department_ID INT PRIMARY KEY,
    Department_Name VARCHAR(100)
);

CREATE TABLE Employees
(
    Employee_ID INT PRIMARY KEY,
    Employee_Name VARCHAR(100),
    Department_ID INT,

    CONSTRAINT FK_Employees_Departments
    FOREIGN KEY (Department_ID)
    REFERENCES Departments(Department_ID)
);
```

**Explanation:**
- Department_ID is the primary key in Departments.
- Department_ID is the foreign key in Employees.
- An employee can reference an existing department.
- The foreign key can contain NULL if the column permits it.

### 5.8 CHECK Constraint

The CHECK constraint ensures that values satisfy a specified condition.

**Example:**

```sql
CREATE TABLE Employees
(
    Employee_ID INT PRIMARY KEY,
    Employee_Name VARCHAR(100),
    Salary DECIMAL(10,2),

    CONSTRAINT CHK_Employee_Salary
    CHECK (Salary >= 0)
);
```

**Explanation:**

Salary cannot be a negative value when the CHECK constraint is enforced.

### 5.9 DEFAULT Constraint

The DEFAULT constraint assigns a predefined value when an INSERT statement does not provide a value for that column.

**Example:**

```sql
CREATE TABLE Employees
(
    Employee_ID INT PRIMARY KEY,
    Employee_Name VARCHAR(100),
    Country VARCHAR(50) DEFAULT 'India'
);
```

**Explanation:**

If Country is omitted during insertion, its default value will be India.

### 5.10 Composite Constraints

A composite constraint uses multiple columns together.

**Composite Primary Key Example:**

```sql
CREATE TABLE Student_Courses
(
    Student_ID INT,
    Course_ID INT,
    Enrollment_Date DATE,

    CONSTRAINT PK_Student_Courses
    PRIMARY KEY (Student_ID, Course_ID)
);
```

**Explanation:**

The combination of Student_ID and Course_ID uniquely identifies each enrollment.

### 5.11 SQL Server vs MySQL Constraint Comparison

| Constraint | SQL Server | MySQL |
|---|---|---|
| NOT NULL | Supported | Supported |
| UNIQUE | Supported | Supported |
| PRIMARY KEY | Supported | Supported |
| FOREIGN KEY | Supported | Supported with supporting storage engine, such as InnoDB |
| CHECK | Enforced in modern versions | Enforced in MySQL 8.0.16 and later |
| DEFAULT | Supported | Supported |
| Composite Primary Key | Supported | Supported |
| Named Constraints | Supported | Supported, subject to database-specific rules |

### 5.12 Adding Constraints Using ALTER TABLE

Constraints can also be added to an existing table using ALTER TABLE.

**SQL Server and MySQL examples:**

```sql
-- Add UNIQUE constraint
ALTER TABLE Employees
ADD CONSTRAINT UQ_Employees_Email
UNIQUE (Email);
```

```sql
-- Add CHECK constraint
ALTER TABLE Employees
ADD CONSTRAINT CHK_Employees_Salary
CHECK (Salary >= 0);
```

```sql
-- Add DEFAULT constraint

-- SQL Server
ALTER TABLE Employees
ADD CONSTRAINT DF_Employees_Country
DEFAULT 'India' FOR Country;
```

```sql
-- MySQL
ALTER TABLE Employees
ALTER COLUMN Country SET DEFAULT 'India';
```

### 5.13 Removing Constraints

Constraints can be removed using database-specific syntax.

**SQL Server:**

```sql
ALTER TABLE Employees
DROP CONSTRAINT UQ_Employees_Email;
```

**MySQL:**

```sql
-- Drop UNIQUE constraint / index
ALTER TABLE Employees
DROP INDEX UQ_Employees_Email;
```

**Important:** Foreign keys in MySQL are removed using `DROP FOREIGN KEY`, while primary keys are removed using `DROP PRIMARY KEY`. SQL Server uses `DROP CONSTRAINT` for these named constraints.

---

## 6. Important Concepts to Remember

| Concept | Description |
|---|---|
| SQL | Structured Query Language |
| SQL Syntax | Rules for writing SQL statements |
| SQL Keywords | Reserved words with predefined meanings |
| SQL Identifiers | Names of database objects |
| SQL Literals | Fixed values in SQL statements |
| SQL Clauses | Components of SQL statements |
| SQL Standards | Common specifications for SQL |
| T-SQL | Microsoft's SQL extension |
| Data Types | Define the type of values stored |
| Operators | Perform calculations and comparisons |
| Constraints | Enforce database rules |
| Primary Key | Uniquely identifies a row |
| Foreign Key | References a key in another table |
| Composite Key | Uses multiple columns as a key |
| Referential Integrity | Maintains valid relationships between tables |

---

## 7. Points to Remember

1. SQL stands for Structured Query Language.
2. SQL is used to communicate with relational databases.
3. SQL Server uses T-SQL.
4. MySQL uses its own SQL implementation.
5. SQL standards provide a common foundation for database operations.
6. SQL syntax defines how statements are written.
7. Data types determine the kind of values stored in columns.
8. SQL Server and MySQL have different data type implementations.
9. Operators perform mathematical, comparison and logical operations.
10. Constraints enforce rules on database data.
11. A PRIMARY KEY uniquely identifies records.
12. A FOREIGN KEY establishes relationships between tables.
13. A UNIQUE constraint prevents duplicate non-NULL values.
14. A CHECK constraint validates values against a condition.
15. A DEFAULT constraint supplies a predefined value when a column is omitted.
16. A composite key consists of multiple columns.
17. Database-specific syntax should be identified clearly in practice scripts.

---

## 8. References

### Official Documentation

**Microsoft SQL Server**

- [SQL Server Documentation](https://learn.microsoft.com/en-us/sql/sql-server/)
- [T-SQL Language Reference](https://learn.microsoft.com/en-us/sql/t-sql/language-reference)
- [SQL Server Data Types](https://learn.microsoft.com/en-us/sql/t-sql/data-types/data-types-transact-sql)
- [SQL Server Operators](https://learn.microsoft.com/en-us/sql/t-sql/language-elements/operators-transact-sql)
- [SQL Server Constraints](https://learn.microsoft.com/en-us/sql/relational-databases/tables/unique-constraints-and-check-constraints)

**MySQL**

- [MySQL Official Documentation](https://dev.mysql.com/doc/)
- [MySQL Reference Manual](https://dev.mysql.com/doc/refman/8.4/en/)
- [MySQL Data Types](https://dev.mysql.com/doc/refman/8.4/en/data-types.html)
- [MySQL Operators](https://dev.mysql.com/doc/refman/8.4/en/non-typed-operators.html)
- [MySQL Constraints](https://dev.mysql.com/doc/refman/8.4/en/create-table.html)

### Learning Resources

- [GeeksforGeeks - SQL Tutorial](https://www.geeksforgeeks.org/sql/sql-tutorial/)
- [W3Schools - SQL Tutorial](https://www.w3schools.com/sql/)
- [SQLBolt - Interactive SQL Lessons](https://sqlbolt.com/)

---
