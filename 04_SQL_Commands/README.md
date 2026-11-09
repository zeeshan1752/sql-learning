# SQL Commands

SQL commands are instructions used to communicate with a database management system. They allow users to create database objects, manipulate data, retrieve information, manage permissions, and control transactions.

SQL commands are commonly classified into five major categories:

1. DDL – Data Definition Language
2. DML – Data Manipulation Language
3. DQL – Data Query Language
4. DCL – Data Control Language
5. TCL – Transaction Control Language

This section focuses on understanding and practising these command categories using Microsoft SQL Server (T-SQL).

## Table of Contents

1. [DDL – Data Definition Language](#1-ddl--data-definition-language)
2. [DML – Data Manipulation Language](#2-dml--data-manipulation-language)
3. [DQL – Data Query Language](#3-dql--data-query-language)
4. [DCL – Data Control Language](#4-dcl--data-control-language)
5. [TCL – Transaction Control Language](#5-tcl--transaction-control-language)
6. [Comparison of SQL Command Categories](#6-comparison-of-sql-command-categories)
7. [Important Concepts](#7-important-concepts)
8. [References](#8-references)

---

# 1. DDL – Data Definition Language

## 1.1 Introduction

DDL stands for Data Definition Language.

DDL commands are used to define, create, modify, and remove database objects such as databases, tables, schemas, and indexes.

## 1.2 DDL Commands

| Command | Purpose |
|---|---|
| CREATE | Creates database objects |
| ALTER | Modifies existing database objects |
| DROP | Removes database objects |
| TRUNCATE | Removes all rows from a table while retaining its structure |

## 1.3 CREATE

The `CREATE` command is used to create database objects.

**Syntax:**

```sql
CREATE TABLE table_name
(
    column1 data_type,
    column2 data_type
);
```

**Example:**

```sql
CREATE TABLE students
(
    student_id INT,
    student_name VARCHAR(100),
    age INT
);
```

## 1.4 ALTER

The `ALTER` command is used to modify the structure of an existing database object.

**Add a column:**

```sql
ALTER TABLE table_name
ADD column_name data_type;
```

**Modify a column:**

```sql
ALTER TABLE table_name
ALTER COLUMN column_name new_data_type;
```

**Drop a column:**

```sql
ALTER TABLE table_name
DROP COLUMN column_name;
```

## 1.5 DROP

The `DROP` command permanently removes a database object.

**Syntax:**

```sql
DROP TABLE table_name;
```

**Example:**

```sql
DROP TABLE students;
```

## 1.6 TRUNCATE

The `TRUNCATE` command removes all rows from a table while keeping the table structure.

**Syntax:**

```sql
TRUNCATE TABLE table_name;
```

**Example:**

```sql
TRUNCATE TABLE students;
```

## 1.7 Important DDL Characteristics

- DDL changes database structure.
- DDL commands generally operate on database objects.
- In SQL Server, DDL statements can participate in explicit transactions, although some operations have restrictions.
- `TRUNCATE` removes all rows and does not support a `WHERE` clause.
- `DROP` removes the object itself, whereas `TRUNCATE` retains the table.

---

# 2. DML – Data Manipulation Language

## 2.1 Introduction

DML stands for Data Manipulation Language.

DML commands are used to insert, modify, and delete records stored in database tables.

## 2.2 DML Commands

| Command | Purpose |
|---|---|
| INSERT | Adds new records |
| UPDATE | Modifies existing records |
| DELETE | Removes records |

## 2.3 INSERT

The `INSERT` command adds new records to a table.

**Insert a single record:**

```sql
INSERT INTO table_name (column1, column2)
VALUES (value1, value2);
```

**Insert multiple records:**

```sql
INSERT INTO table_name (column1, column2)
VALUES
(value1, value2),
(value3, value4);
```

**Example:**

```sql
INSERT INTO students
(
    student_id,
    student_name,
    age
)
VALUES
(1, 'Rahul', 22),
(2, 'Priya', 23);
```

## 2.4 UPDATE

The `UPDATE` command modifies existing records.

**Syntax:**

```sql
UPDATE table_name
SET column1 = value1,
    column2 = value2
WHERE condition;
```

**Example:**

```sql
UPDATE students
SET age = 23
WHERE student_id = 1;
```

## 2.5 DELETE

The `DELETE` command removes records from a table.

**Syntax:**

```sql
DELETE FROM table_name
WHERE condition;
```

**Example:**

```sql
DELETE FROM students
WHERE student_id = 1;
```

## 2.6 Important DML Characteristics

- DML works with table records.
- `INSERT` adds records.
- `UPDATE` modifies records.
- `DELETE` removes records.
- The `WHERE` clause can be used with `UPDATE` and `DELETE` to target specific records.
- Without a `WHERE` clause, `UPDATE` or `DELETE` can affect all records in the table.

---

# 3. DQL – Data Query Language

## 3.1 Introduction

DQL stands for Data Query Language.

It is used to retrieve data from database tables.

## 3.2 DQL Command

| Command | Purpose |
|---|---|
| SELECT | Retrieves data from database objects |

## 3.3 SELECT

The `SELECT` command retrieves records from a database.

**Select all columns:**

```sql
SELECT *
FROM table_name;
```

**Select specific columns:**

```sql
SELECT column1, column2
FROM table_name;
```

**Select distinct values:**

```sql
SELECT DISTINCT column_name
FROM table_name;
```

**Example:**

```sql
SELECT student_id, student_name
FROM students;
```

## 3.4 Important DQL Concepts

The following clauses and concepts are commonly used with `SELECT`:

- DISTINCT
- WHERE
- ORDER BY
- GROUP BY
- HAVING
- TOP
- JOIN
- Subqueries

These concepts will be studied in their respective sections of the repository.

## 3.5 Important DQL Characteristics

- DQL retrieves data without directly modifying stored records.
- `SELECT` can retrieve specific columns or all columns.
- Query results can be filtered, sorted, grouped, and combined with other tables.

---

# 4. DCL – Data Control Language

## 4.1 Introduction

DCL stands for Data Control Language.

DCL commands are used to manage permissions and access to database objects and resources.

## 4.2 DCL Commands

| Command | Purpose |
|---|---|
| GRANT | Gives permissions to a security principal |
| REVOKE | Removes or reverses granted or denied permissions |
| DENY | Explicitly denies permissions |

## 4.3 GRANT

The `GRANT` command gives permissions to a user or another database principal.

**Syntax:**

```sql
GRANT permission_name
ON OBJECT::schema_name.object_name
TO database_principal;
```

**Example:**

```sql
GRANT SELECT
ON OBJECT::dbo.students
TO student_user;
```

## 4.4 REVOKE

The `REVOKE` command removes a previously granted or denied permission.

**Syntax:**

```sql
REVOKE permission_name
ON OBJECT::schema_name.object_name
FROM database_principal;
```

**Example:**

```sql
REVOKE SELECT
ON OBJECT::dbo.students
FROM student_user;
```

## 4.5 DENY

The `DENY` command explicitly denies a permission.

**Syntax:**

```sql
DENY permission_name
ON OBJECT::schema_name.object_name
TO database_principal;
```

**Example:**

```sql
DENY DELETE
ON OBJECT::dbo.students
TO student_user;
```

## 4.6 Important DCL Characteristics

- DCL manages database security and permissions.
- Permissions can be assigned to users, roles, and other security principals.
- `GRANT` provides permissions.
- `DENY` explicitly blocks permissions.
- `REVOKE` removes a permission assignment.
- In SQL Server, an explicit `DENY` generally takes precedence over a `GRANT`, subject to specific ownership and permission rules.

---

# 5. TCL – Transaction Control Language

## 5.1 Introduction

TCL stands for Transaction Control Language.

TCL commands are used to manage transactions and control changes made to database records.

A transaction is a logical unit of work containing one or more database operations.

## 5.2 TCL Commands

| Command | Purpose |
|---|---|
| BEGIN TRANSACTION | Starts a transaction |
| COMMIT | Permanently saves transaction changes |
| ROLLBACK | Reverses uncommitted transaction changes |
| SAVE TRANSACTION | Creates a savepoint within a transaction |

## 5.3 BEGIN TRANSACTION

The `BEGIN TRANSACTION` statement starts an explicit transaction.

**Syntax:**

```sql
BEGIN TRANSACTION;
```

## 5.4 COMMIT

The `COMMIT` statement makes the transaction changes permanent.

**Syntax:**

```sql
COMMIT TRANSACTION;
```

**Example:**

```sql
BEGIN TRANSACTION;

UPDATE students
SET age = 23
WHERE student_id = 1;

COMMIT TRANSACTION;
```

## 5.5 ROLLBACK

The `ROLLBACK` statement reverses changes made in the current uncommitted transaction.

**Syntax:**

```sql
ROLLBACK TRANSACTION;
```

**Example:**

```sql
BEGIN TRANSACTION;

UPDATE students
SET age = 25
WHERE student_id = 1;

ROLLBACK TRANSACTION;
```

## 5.6 SAVE TRANSACTION

The `SAVE TRANSACTION` statement creates a savepoint inside an existing transaction.

It allows a transaction to roll back to a particular savepoint without rolling back the entire transaction.

**Syntax:**

```sql
SAVE TRANSACTION savepoint_name;
```

**Rollback to savepoint:**

```sql
ROLLBACK TRANSACTION savepoint_name;
```

**Example:**

```sql
BEGIN TRANSACTION;

UPDATE students
SET age = 24
WHERE student_id = 1;

SAVE TRANSACTION student_savepoint;

UPDATE students
SET age = 25
WHERE student_id = 1;

ROLLBACK TRANSACTION student_savepoint;

COMMIT TRANSACTION;
```

## 5.7 Important TCL Characteristics

- TCL controls transaction execution.
- Transactions help maintain data consistency.
- `COMMIT` saves changes.
- `ROLLBACK` reverses uncommitted changes.
- `SAVE TRANSACTION` creates a savepoint.
- SQL Server supports explicit and implicit transaction modes.

---

# 6. Comparison of SQL Command Categories

| Category | Full Form | Main Purpose | Commands |
|---|---|---|---|
| DDL | Data Definition Language | Defines database structure | CREATE, ALTER, DROP, TRUNCATE |
| DML | Data Manipulation Language | Modifies table records | INSERT, UPDATE, DELETE |
| DQL | Data Query Language | Retrieves data | SELECT |
| DCL | Data Control Language | Manages permissions | GRANT, REVOKE, DENY |
| TCL | Transaction Control Language | Controls transactions | BEGIN, COMMIT, ROLLBACK, SAVE |

---

# 7. Important Concepts

## 7.1 DDL vs DML

| DDL | DML |
|---|---|
| Works with database structure | Works with stored records |
| Creates or modifies objects | Inserts, updates, or deletes records |
| Examples: CREATE, ALTER | Examples: INSERT, UPDATE |

## 7.2 DELETE vs TRUNCATE vs DROP

| Feature | DELETE | TRUNCATE | DROP |
|---|---|---|---|
| Removes records | Yes | Yes, all records | Removes the entire object |
| WHERE clause | Supported | Not supported | Not applicable |
| Retains table structure | Yes | Yes | No |
| Identity reset in SQL Server | No | Yes, normally | Object removed |
| Can participate in an explicit SQL Server transaction | Yes | Yes | Yes, subject to operation restrictions |

## 7.3 COMMIT vs ROLLBACK

| COMMIT | ROLLBACK |
|---|---|
| Saves transaction changes | Reverses uncommitted changes |
| Ends the transaction | Ends or partially reverses the transaction |
| Used when changes should be retained | Used when changes should be cancelled |

## 7.4 Auto-Commit in SQL Server

SQL Server normally operates in auto-commit transaction mode.

In auto-commit mode, each individual statement is treated as a transaction and is committed automatically when successful.

Explicit transactions can be started using `BEGIN TRANSACTION`.

DDL statements are not universally auto-committed in SQL Server; many can be rolled back when executed within an explicit transaction.

---

# 8. References

Use official Microsoft documentation for additional details.

1. [SQL Server Documentation](https://learn.microsoft.com/en-us/sql/sql-server/)
2. [Transact-SQL Reference](https://learn.microsoft.com/en-us/sql/t-sql/language-reference)
3. [CREATE TABLE](https://learn.microsoft.com/en-us/sql/t-sql/statements/create-table-transact-sql)
4. [INSERT](https://learn.microsoft.com/en-us/sql/t-sql/statements/insert-transact-sql)
5. [SELECT](https://learn.microsoft.com/en-us/sql/t-sql/queries/select-transact-sql)
6. [GRANT](https://learn.microsoft.com/en-us/sql/t-sql/statements/grant-transact-sql)
7. [Transactions](https://learn.microsoft.com/en-us/sql/t-sql/language-elements/transactions-transact-sql)

---

## Learning Goal

By completing this section, you should understand the five major SQL command categories, their purposes, differences, syntax, and practical applications in Microsoft SQL Server.