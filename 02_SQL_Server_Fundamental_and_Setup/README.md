# SQL Server Fundamentals

This section covers the fundamentals of Microsoft SQL Server, from installation and database management to architecture, authentication, connections, and storage.

The purpose is to understand how SQL Server works and how to manage and interact with its databases.

## Table of Contents

1. [Introduction to SQL Server](#1-introduction-to-sql-server)
2. [SQL Server Installation](#2-sql-server-installation)
3. [SQL Server Management Studio (SSMS)](#3-sql-server-management-studio-ssms)
4. [SQL Server Architecture](#4-sql-server-architecture)
5. [SQL Server Authentication](#5-sql-server-authentication)
6. [SQL Server Connections](#6-sql-server-connections)
7. [System Databases](#7-system-databases)
8. [User Databases](#8-user-databases)
9. [SQL Server Data Files](#9-sql-server-data-files)
10. [References](#10-references)

---

# 1. Introduction to SQL Server

## 1.1 What is Microsoft SQL Server?

Microsoft SQL Server is a Relational Database Management System (RDBMS) developed by Microsoft.

It is used to store, manage, retrieve, and process structured data.

SQL Server uses Transact-SQL (T-SQL), Microsoft's extension of SQL, to communicate with databases.

## 1.2 Features of SQL Server

- Data storage and management
- Data security and authentication
- Transaction management
- Backup and recovery
- Query processing and optimization
- High availability and scalability
- Integration with Microsoft technologies
- Business intelligence and analytics support

## 1.3 SQL Server Editions

SQL Server provides different editions for different requirements.

| Edition | Purpose |
|---|---|
| Enterprise | Large-scale enterprise applications |
| Standard | Business applications with moderate requirements |
| Developer | Development and testing |
| Express | Free edition for lightweight applications |

**Note:** Developer Edition provides Enterprise Edition features for development and testing but is not licensed for production use.

## 1.4 SQL Server vs MySQL

| Feature | SQL Server | MySQL |
|---|---|---|
| Developer | Microsoft | Oracle |
| Database Type | RDBMS | RDBMS |
| Query Language | T-SQL | SQL |
| Management Tool | SSMS | MySQL Workbench |
| Common Use | Enterprise applications | Web applications |
| Licensing | Multiple editions | Community and commercial editions |

Both systems support relational database management but differ in syntax, features, administration, and ecosystem.

## 1.5 Uses of SQL Server

- Enterprise applications
- Banking and financial systems
- E-commerce applications
- Healthcare management systems
- Business intelligence
- Data warehousing
- Reporting and analytics

---

# 2. SQL Server Installation

## 2.1 System Requirements

Before installing SQL Server, check:

- Supported Windows operating system
- Processor and memory requirements
- Available disk space
- Administrator permissions
- Network and firewall configuration, if required

Always check the official documentation for the requirements of the SQL Server version being installed.

## 2.2 SQL Server Components

The main components commonly used in a learning environment are:

**1. SQL Server Database Engine**

The core service responsible for storing, processing, and securing data.

**2. SQL Server Management Studio (SSMS)**

A graphical management tool used to connect to SQL Server, execute queries, and manage database objects.

## 2.3 SQL Server Editions for Learning

- Developer Edition: Recommended for learning and development.
- Express Edition: Suitable for lightweight applications and practice.

## 2.4 Installation Steps

1. Visit the official Microsoft SQL Server website.
2. Select the required SQL Server edition.
3. Download the installer.
4. Run the installer.
5. Select the installation type.
6. Configure the Database Engine.
7. Select the authentication mode.
8. Complete the installation.
9. Verify that the SQL Server service is running.

## 2.5 Verify Installation

After installation, open SSMS and connect to your SQL Server instance.

Execute:

```sql
SELECT @@VERSION;
```

This displays the installed SQL Server version and related information.

---

# 3. SQL Server Management Studio (SSMS)

## 3.1 What is SSMS?

SQL Server Management Studio (SSMS) is Microsoft's graphical interface for managing SQL Server infrastructure and databases.

It allows developers and database administrators to interact with SQL Server without relying entirely on command-line operations.

## 3.2 Features of SSMS

- Connect to SQL Server instances
- Create and manage databases
- Write and execute SQL queries
- Manage tables and other database objects
- Configure security and permissions
- View execution plans
- Perform backup and restore operations

## 3.3 Important SSMS Components

**1. Object Explorer**

Displays SQL Server instances and their database objects in a hierarchical structure.

**2. Query Editor**

Used to write and execute SQL queries.

**3. Results Pane**

Displays query execution results.

**4. Messages Pane**

Displays execution messages, warnings, and errors.

**5. Activity Monitor**

Provides information about current SQL Server activity and resource usage.

## 3.4 Common SSMS Keyboard Shortcuts

| Shortcut | Function |
|---|---|
| F5 | Execute query |
| Ctrl + E | Execute query |
| Ctrl + N | New query |
| Ctrl + S | Save query |
| Ctrl + R | Show or hide results pane |
| Ctrl + Shift + R | Refresh IntelliSense cache |

## 3.5 Connecting Through SSMS

To connect to SQL Server:

1. Open SSMS.
2. Select the server type as Database Engine.
3. Enter the server or instance name.
4. Select the authentication method.
5. Enter credentials if required.
6. Click Connect.

---

# 4. SQL Server Architecture

## 4.1 Introduction

SQL Server architecture describes how SQL Server receives queries, processes them, accesses data, and returns results.

The Database Engine is the central component.

It mainly consists of two major engines:

1. Relational Engine
2. Storage Engine

## 4.2 Relational Engine

The Relational Engine is responsible for understanding and processing SQL queries.

Its responsibilities include:

- Parsing SQL statements
- Checking syntax and object references
- Optimizing queries
- Generating execution plans
- Managing query execution

## 4.3 Query Processor

The Query Processor handles the processing and execution of SQL queries.

Its major activities include:

- Parsing
- Binding and compilation
- Query optimization
- Execution plan generation

## 4.4 Storage Engine

The Storage Engine handles data access and storage operations.

Its responsibilities include:

- Reading and writing data
- Managing data pages
- Managing buffers
- Handling transactions
- Working with database files

## 4.5 Buffer Manager

The Buffer Manager manages the data pages loaded into memory.

It helps reduce disk access by keeping frequently accessed pages in memory.

## 4.6 Transaction Log Manager

The Transaction Log Manager handles transaction log records.

It supports transaction durability and database recovery.

## 4.7 Query Execution Flow

A simplified SQL Server query execution flow:

1. User submits a SQL query.
2. Relational Engine parses and validates the query.
3. Query Optimizer selects an execution plan.
4. Execution Engine processes the plan.
5. Storage Engine accesses the required data.
6. Results are returned to the user.

---

# 5. SQL Server Authentication

## 5.1 What is Authentication?

Authentication is the process of verifying the identity of a user or application attempting to connect to SQL Server.

SQL Server supports two primary authentication methods.

## 5.2 Windows Authentication

Windows Authentication uses Windows user accounts or domain credentials to authenticate users.

Features:

- Uses Windows security credentials.
- Does not require a separate SQL Server password.
- Supports Windows security integration.
- Commonly used in Windows-based organizations.

## 5.3 SQL Server Authentication

SQL Server Authentication uses a login name and password managed by SQL Server.

Features:

- Uses SQL Server login credentials.
- Credentials are managed within SQL Server.
- Useful for applications requiring SQL Server-managed authentication.

## 5.4 Mixed Mode Authentication

Mixed Mode allows both:

- Windows Authentication
- SQL Server Authentication

It provides flexibility when different applications and users require different authentication methods.

## 5.5 Login and User Difference

A login provides access to the SQL Server instance.

A database user provides access within a particular database.

| Login | User |
|---|---|
| Server-level security principal | Database-level security principal |
| Used to connect to SQL Server | Used to access a database |
| Exists at instance level | Exists inside a database |

**Important:** Authentication verifies identity, while authorization determines what an authenticated user is allowed to do.

---

# 6. SQL Server Connections

## 6.1 Introduction

A SQL Server connection allows a client application or user to communicate with a SQL Server instance.

Examples of client applications include:

- SQL Server Management Studio
- Visual Studio
- .NET applications
- Python applications
- Java applications

## 6.2 Server Name

A server name identifies the SQL Server instance to which a client wants to connect.

Common examples:

| Connection Type | Example |
|---|---|
| Default local instance | `localhost` |
| Local machine | `.` |
| Local machine | `(local)` |
| Named instance | `localhost\SQLEXPRESS` |
| Local machine IP | `127.0.0.1` |

The actual server name depends on the SQL Server installation and configuration.

## 6.3 Default and Named Instances

**Default Instance**

A SQL Server installation configured as the default instance can be accessed using the machine name or hostname.

**Named Instance**

A named instance is identified using the machine name followed by a backslash and the instance name.

Example:

```text
localhost\SQLEXPRESS
```

## 6.4 Local and Remote Connections

**Local Connection**

A connection established from the same machine where SQL Server is installed.

**Remote Connection**

A connection established from another computer over a network.

Remote connections may require:

- TCP/IP configuration
- Firewall configuration
- Network accessibility
- Appropriate authentication
- SQL Server network settings

## 6.5 Connection String

A connection string contains the information required by an application to connect to a database.

Example:

```text
Server=localhost;
Database=sql_server_practice;
Integrated Security=True;
TrustServerCertificate=True;
```

Connection string properties depend on the application, driver, and security configuration.

---

# 7. System Databases

## 7.1 What are System Databases?

System databases are databases created and maintained by SQL Server to manage its internal operations and provide essential database services.

SQL Server includes the following major system databases.

## 7.2 master Database

The `master` database stores system-level information about the SQL Server instance.

It contains information such as:

- Server-level configuration
- Logins
- Database information
- System metadata

It is essential for SQL Server operation.

## 7.3 model Database

The `model` database acts as a template for newly created databases.

When a new database is created, SQL Server uses the model database as a starting point.

## 7.4 msdb Database

The `msdb` database stores information used by SQL Server Agent and other management features.

It contains information related to:

- Scheduled jobs
- Job history
- Backup and restore history
- Database Mail
- Maintenance plans

## 7.5 tempdb Database

The `tempdb` database is a temporary workspace used by SQL Server.

It is used for:

- Temporary tables
- Temporary stored objects
- Sorting operations
- Intermediate query results
- Internal database operations

The `tempdb` database is recreated whenever the SQL Server Database Engine starts.

## 7.6 Resource Database

The Resource database is a read-only database containing system objects used by SQL Server.

It is hidden from normal database listings in SSMS.

## 7.7 Summary of System Databases

| Database | Main Purpose |
|---|---|
| master | Instance-level information |
| model | Template for new databases |
| msdb | Jobs, schedules, and history |
| tempdb | Temporary workspace |
| Resource | System objects |

---

# 8. User Databases

## 8.1 What are User Databases?

User databases are databases created by users, developers, or database administrators to store application-specific information.

Examples:

- Student management database
- Employee management database
- Banking database
- E-commerce database
- Inventory database

## 8.2 Creating a User Database

A user database can be created using the `CREATE DATABASE` statement.

Example:

```sql
CREATE DATABASE company_db;
```

## 8.3 Viewing Available Databases

The following query displays database names available in the current SQL Server instance.

```sql
SELECT name
FROM sys.databases;
```

## 8.4 Selecting a Database

The `USE` statement changes the current database context.

```sql
USE company_db;
```

## 8.5 Database Properties

Important database properties include:

- Database name
- Database ID
- Compatibility level
- Recovery model
- Collation
- Database state
- Database ownership

## 8.6 Database States

Some common database states include:

| State | Meaning |
|---|---|
| ONLINE | Database is available |
| OFFLINE | Database is unavailable |
| RESTORING | Database is being restored |
| RECOVERING | Database recovery is in progress |
| SUSPECT | Database recovery encountered problems |
| EMERGENCY | Database is in emergency mode |

---

# 9. SQL Server Data Files

## 9.1 Introduction

SQL Server stores database information in physical files on disk.

A database generally uses data files and transaction log files.

## 9.2 Primary Data File (.mdf)

The primary data file is the main data file of a SQL Server database.

Features:

- Contains database startup information.
- Stores database objects and data.
- Every database has one primary data file.

Extension: `.mdf`

## 9.3 Secondary Data File (.ndf)

Secondary data files are optional additional data files.

Features:

- Store additional database data.
- Help organize database storage.
- Can be used to distribute data across multiple storage locations.

Extension: `.ndf`

## 9.4 Transaction Log File (.ldf)

The transaction log file stores transaction log records.

It supports:

- Transaction recovery
- Rollback operations
- Database recovery
- Transaction durability

Extension: `.ldf`

## 9.5 Filegroups

A filegroup is a logical storage structure used to group database data files.

The two common types are:

**PRIMARY Filegroup**

The default filegroup that contains the primary data file and can contain additional data files.

**User-Defined Filegroups**

Additional filegroups created to organize database storage.

## 9.6 MDF, NDF, and LDF Comparison

| File | Purpose | Required |
|---|---|---|
| MDF | Primary data storage | Yes |
| NDF | Additional data storage | No |
| LDF | Transaction log storage | Yes |

## 9.7 Important Points

- MDF is the primary data file.
- NDF is an optional secondary data file.
- LDF stores transaction log information.
- A database can have multiple secondary data files.
- A database can have multiple transaction log files, although multiple log files do not provide parallel log writing.

---

# 10. References

Use official Microsoft documentation as the primary reference for learning SQL Server.

1. [Microsoft SQL Server Official Website](https://www.microsoft.com/en-us/sql-server)
2. [SQL Server Documentation](https://learn.microsoft.com/en-us/sql/sql-server/)
3. [SQL Server Installation Documentation](https://learn.microsoft.com/en-us/sql/database-engine/install-windows/install-sql-server)
4. [SQL Server Management Studio Documentation](https://learn.microsoft.com/en-us/ssms/)
5. [SQL Server Database Engine Documentation](https://learn.microsoft.com/en-us/sql/relational-databases/database-engine/)
6. [SQL Server Security Documentation](https://learn.microsoft.com/en-us/sql/relational-databases/security/)
7. [SQL Server Database Files and Filegroups](https://learn.microsoft.com/en-us/sql/relational-databases/databases/database-files-and-filegroups)

---