# 05. Database Objects

## Introduction

Database objects are components used to store, organize, manage, and access data in a database.

In Microsoft SQL Server, common database objects include:

1. Databases
2. Tables
3. Views
4. Indexes

This section covers the creation, modification, management, and basic usage of these objects.

---

## 1. Databases

A database is an organized collection of data stored and managed by a Database Management System (DBMS).

In SQL Server, databases contain objects such as tables, views, indexes, stored procedures, and functions.

### 1.1 CREATE DATABASE

`CREATE DATABASE` is used to create a new database.

**Syntax:**

```sql
CREATE DATABASE database_name;
```

**Example:**

```sql
CREATE DATABASE company_db;
```

### 1.2 ALTER DATABASE

`ALTER DATABASE` is used to modify database properties and settings.

**Syntax:**

```sql
ALTER DATABASE database_name
MODIFY NAME = new_database_name;
```

**Example:**

```sql
ALTER DATABASE company_db
MODIFY NAME = organization_db;
```

### 1.3 DROP DATABASE

`DROP DATABASE` is used to delete a database permanently.

**Syntax:**

```sql
DROP DATABASE database_name;
```

**Example:**

```sql
DROP DATABASE organization_db;
```

### 1.4 View Databases

Display all databases available on the SQL Server instance.

```sql
SELECT name
FROM sys.databases;
```

**Important Points:**

- `CREATE DATABASE` creates a database.
- `ALTER DATABASE` modifies database properties.
- `DROP DATABASE` deletes a database.
- `USE` selects a database for subsequent statements.

---

## 2. Tables

A table is a database object used to store data in rows and columns.

- Rows represent records.
- Columns represent attributes.
- Each column has a name and datatype.

### 2.1 CREATE TABLE

`CREATE TABLE` is used to create a new table.

**Syntax:**

```sql
CREATE TABLE table_name
(
    column1 datatype,
    column2 datatype,
    column3 datatype
);
```

**Example:**

```sql
CREATE TABLE employees
(
    emp_id INT,
    emp_name VARCHAR(100),
    salary MONEY,
    department_id INT
);
```

### 2.2 ALTER TABLE

`ALTER TABLE` is used to modify an existing table structure.

**Add a Column:**

```sql
ALTER TABLE employees
ADD email VARCHAR(100);
```

**Modify a Column:**

```sql
ALTER TABLE employees
ALTER COLUMN emp_name VARCHAR(150);
```

**Drop a Column:**

```sql
ALTER TABLE employees
DROP COLUMN email;
```

### 2.3 DROP TABLE

`DROP TABLE` deletes a table and its structure.

**Syntax:**

```sql
DROP TABLE table_name;
```

**Example:**

```sql
DROP TABLE employees;
```

### 2.4 View Table Information

Display table structure and column information.

```sql
EXEC sp_help 'employees';
```

Display records:

```sql
SELECT * FROM employees;
```

**Important Points:**

- Tables store actual data.
- Every column has a datatype.
- `ALTER TABLE` modifies the table structure.
- `DROP TABLE` removes the table completely.

---

## 3. Views

A view is a virtual table based on the result of a SQL query.

It does not normally store the underlying result data separately. Instead, it retrieves data from its underlying tables when queried.

### 3.1 CREATE VIEW

`CREATE VIEW` is used to create a view based on a SELECT statement.

**Syntax:**

```sql
CREATE VIEW view_name
AS
SELECT column1, column2
FROM table_name;
```

**Example:**

```sql
CREATE VIEW employee_view
AS
SELECT emp_id, emp_name, salary
FROM employees;
```

### 3.2 SELECT FROM VIEW

A view can be queried like a table.

**Syntax:**

```sql
SELECT * FROM view_name;
```

**Example:**

```sql
SELECT * FROM employee_view;
```

### 3.3 ALTER VIEW

`ALTER VIEW` is used to modify an existing view definition.

**Syntax:**

```sql
ALTER VIEW view_name
AS
SELECT column1, column2
FROM table_name;
```

**Example:**

```sql
ALTER VIEW employee_view
AS
SELECT emp_id, emp_name
FROM employees;
```

### 3.4 DROP VIEW

`DROP VIEW` is used to delete a view.

**Syntax:**

```sql
DROP VIEW view_name;
```

**Example:**

```sql
DROP VIEW employee_view;
```

### 3.5 Advantages of Views

- Simplifies complex queries.
- Provides controlled access to selected data.
- Helps organize frequently used queries.
- Can hide unnecessary columns from users.

**Important Points:**

- A view is based on a SELECT query.
- Views can be queried using SELECT.
- Changes to underlying tables can affect views.
- A regular view does not store its query result as a separate data copy.

---

## 4. Indexes

An index is a database object that helps SQL Server find records more efficiently.

Indexes can improve data retrieval performance by reducing the amount of data SQL Server needs to examine.

However, indexes also require storage and can increase the cost of INSERT, UPDATE, and DELETE operations.

### 4.1 CREATE INDEX

`CREATE INDEX` is used to create a nonclustered index by default.

**Syntax:**

```sql
CREATE INDEX index_name
ON table_name (column_name);
```

**Example:**

```sql
CREATE INDEX idx_employee_name
ON employees (emp_name);
```

### 4.2 UNIQUE INDEX

A unique index ensures that duplicate index key values are not allowed.

**Syntax:**

```sql
CREATE UNIQUE INDEX index_name
ON table_name (column_name);
```

**Example:**

```sql
CREATE UNIQUE INDEX idx_employee_email
ON employees (email);
```

### 4.3 CLUSTERED INDEX

A clustered index determines the logical order of data rows in a table based on its index key.

A table can have only one clustered index.

**Syntax:**

```sql
CREATE CLUSTERED INDEX index_name
ON table_name (column_name);
```

**Example:**

```sql
CREATE CLUSTERED INDEX idx_employee_id
ON employees (emp_id);
```

### 4.4 NONCLUSTERED INDEX

A nonclustered index is a separate index structure that stores index keys and references to the corresponding data rows.

A table can have multiple nonclustered indexes.

**Syntax:**

```sql
CREATE NONCLUSTERED INDEX index_name
ON table_name (column_name);
```

**Example:**

```sql
CREATE NONCLUSTERED INDEX idx_employee_salary
ON employees (salary);
```

### 4.5 DROP INDEX

`DROP INDEX` is used to remove an index from a table.

**Syntax:**

```sql
DROP INDEX index_name
ON table_name;
```

**Example:**

```sql
DROP INDEX idx_employee_name
ON employees;
```

### 4.6 View Index Information

SQL Server provides system catalog views to inspect indexes.

**Example:**

```sql
SELECT *
FROM sys.indexes
WHERE object_id = OBJECT_ID('employees');
```

### 4.7 Clustered vs Nonclustered Index

| Clustered Index | Nonclustered Index |
|---|---|
| Determines the logical order of data rows | Maintains a separate index structure |
| Only one per table | Multiple per table |
| Stores the table data at the leaf level | Stores index keys and row references |
| Useful for suitable access patterns | Useful for frequently searched columns |

**Important Points:**

- Indexes improve data retrieval performance in suitable queries.
- A table can have only one clustered index.
- A table can have multiple nonclustered indexes.
- Too many indexes can negatively affect data modification performance.
- SQL Server automatically creates indexes for primary key constraints in many cases, depending on the existing index structure.

---

## 5. Difference Between Tables and Views

| Tables | Views |
|---|---|
| Store actual data | Present data through a query |
| Contain rows and columns | Display query results as rows and columns |
| Created using CREATE TABLE | Created using CREATE VIEW |
| Store data directly | Usually do not store a separate result copy |

---

## 6. Summary of Database Object Commands

| Database Object | Create | Modify | Delete |
|---|---|---|---|
| Database | CREATE DATABASE | ALTER DATABASE | DROP DATABASE |
| Table | CREATE TABLE | ALTER TABLE | DROP TABLE |
| View | CREATE VIEW | ALTER VIEW | DROP VIEW |
| Index | CREATE INDEX | ALTER INDEX | DROP INDEX |

---

## 7. References

- [Microsoft Learn – Databases](https://learn.microsoft.com/en-us/sql/relational-databases/databases/databases)
- [Microsoft Learn – CREATE DATABASE](https://learn.microsoft.com/en-us/sql/t-sql/statements/create-database-transact-sql)
- [Microsoft Learn – CREATE TABLE](https://learn.microsoft.com/en-us/sql/t-sql/statements/create-table-transact-sql)
- [Microsoft Learn – ALTER TABLE](https://learn.microsoft.com/en-us/sql/t-sql/statements/alter-table-transact-sql)
- [Microsoft Learn – Views](https://learn.microsoft.com/en-us/sql/relational-databases/views/views)
- [Microsoft Learn – CREATE VIEW](https://learn.microsoft.com/en-us/sql/t-sql/statements/create-view-transact-sql)
- [Microsoft Learn – Indexes](https://learn.microsoft.com/en-us/sql/relational-databases/indexes/indexes)
- [Microsoft Learn – CREATE INDEX](https://learn.microsoft.com/en-us/sql/t-sql/statements/create-index-transact-sql)

---
