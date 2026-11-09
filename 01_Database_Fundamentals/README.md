# Database Fundamentals

## 1. Introduction to Databases

### 1.1 What is Data?

Data refers to raw facts, figures, observations, or information that can be processed to generate meaningful results.

**Examples:**
- Student names
- Employee IDs
- Product prices
- Customer addresses
- Transaction amounts

### 1.2 What is a Database?

A database is an organized collection of related data that can be stored, accessed, managed, updated, and retrieved efficiently.

**Example:**

A college database may contain:
- Student information
- Faculty information
- Course details
- Examination records
- Attendance records

### 1.3 What is a Database Management System (DBMS)?

A Database Management System (DBMS) is software that allows users to create, store, manage, retrieve, and manipulate data in databases.

**Examples:**
- Microsoft SQL Server
- MySQL
- Oracle Database
- PostgreSQL
- SQLite
- MongoDB

### 1.4 Why Do We Need Databases?

Databases are required to:
- Store large amounts of data.
- Organize information systematically.
- Retrieve data efficiently.
- Reduce data duplication.
- Maintain data consistency.
- Provide data security.
- Support multiple users.
- Perform backup and recovery.
- Maintain data integrity.

### 1.5 Characteristics of Databases

- Organized Data Storage
- Data Sharing
- Data Security
- Data Integrity
- Data Consistency
- Data Independence
- Reduced Data Redundancy
- Concurrent Access
- Backup and Recovery
- Efficient Data Retrieval

### 1.6 Advantages of Databases

- Centralized data management.
- Reduced data redundancy.
- Improved data consistency.
- Better data security.
- Easy data retrieval.
- Data sharing among multiple users.
- Improved decision-making.
- Reliable backup and recovery.

### 1.7 Disadvantages of Databases

- High initial setup cost.
- Requires skilled database administrators.
- Complex database management.
- Hardware and software requirements.
- Maintenance overhead.
- Potential security risks.
- Database failure can affect dependent applications.

### 1.8 Real-World Applications of Databases

| Industry | Database Applications |
|---|---|
| Banking | Customer accounts and transactions |
| Healthcare | Patient records and appointments |
| Education | Student and examination records |
| E-Commerce | Products, orders and payments |
| Railway | Ticket booking and schedules |
| Telecommunications | Customer and call records |
| Government | Citizen and public records |
| Social Media | User profiles, posts and messages |

---

## 2. Types of Databases

### 2.1 Hierarchical Database

A hierarchical database organizes data in a tree-like structure where records are connected through parent-child relationships.

**Characteristics:**
- Tree-based structure.
- One parent can have multiple children.
- Each child generally has one parent.
- Supports one-to-many relationships.

**Example:** IBM Information Management System (IMS).

### 2.2 Network Database

A network database organizes data using interconnected records. A record can have multiple parent and child relationships.

**Characteristics:**
- Graph-like structure.
- Supports many-to-many relationships.
- Uses links between records.
- More flexible than hierarchical databases.

**Example:** Integrated Data Store (IDS).

### 2.3 Relational Database

A relational database stores data in tables consisting of rows and columns. Relationships between tables are established using keys.

**Characteristics:**
- Data is stored in tables.
- Rows represent records.
- Columns represent attributes.
- Uses primary and foreign keys.
- Supports SQL.
- Maintains referential integrity.

**Examples:**
- Microsoft SQL Server
- MySQL
- PostgreSQL
- Oracle Database

### 2.4 Object-Oriented Database

An object-oriented database stores data in the form of objects, similar to object-oriented programming languages.

**Characteristics:**
- Stores objects directly.
- Supports classes and objects.
- Supports inheritance.
- Supports encapsulation.

**Example:** ObjectDB, db4o.

### 2.5 NoSQL Database

NoSQL databases are non-relational databases designed to handle flexible data models and different types of workloads.

**Characteristics:**
- Flexible data models.
- Suitable for semi-structured and unstructured data.
- Supports horizontal scaling.
- Different storage models.

**Examples:**
- MongoDB
- Apache Cassandra
- Redis
- Amazon DynamoDB

### 2.6 Distributed Database

A distributed database stores data across multiple interconnected locations or computers while providing coordinated database access.

**Characteristics:**
- Data distributed across multiple nodes.
- Supports distributed processing.
- Can improve availability.
- Requires coordination between nodes.

### 2.7 Centralized Database

A centralized database stores and manages data at a single central location.

**Characteristics:**
- Centralized data management.
- Easier administration.
- Centralized security and backup.
- Can become a single point of failure.

### 2.8 Cloud Database

A cloud database is a database hosted on cloud infrastructure and accessed through cloud services.

**Examples:**
- Amazon RDS
- Azure SQL Database
- Google Cloud SQL
- Amazon DynamoDB

### 2.9 In-Memory Database

An in-memory database primarily stores data in main memory (RAM) to provide fast data access and processing.

**Examples:**
- Redis
- SAP HANA
- SingleStore

### 2.10 Graph Database

A graph database represents data using nodes, edges, and properties.

**Characteristics:**
- Nodes represent entities.
- Edges represent relationships.
- Suitable for highly connected data.
- Efficient relationship traversal.

**Examples:** Neo4j, Amazon Neptune.

### 2.11 Document Database

A document database stores data in document-oriented formats such as JSON or BSON.

**Examples:** MongoDB, Couchbase.

### 2.12 Key-Value Database

A key-value database stores information as pairs of unique keys and associated values.

**Examples:** Redis, Amazon DynamoDB.

### 2.13 Column-Family Database

A column-family database organizes data into rows and column families rather than traditional relational tables.

**Examples:** Apache Cassandra, HBase.

### 2.14 Comparison of Database Types

| Database Type | Data Organization | Example |
|---|---|---|
| Hierarchical | Tree | IBM IMS |
| Network | Network of records | IDS |
| Relational | Tables | SQL Server |
| Object-Oriented | Objects | ObjectDB |
| NoSQL | Flexible models | MongoDB |
| Distributed | Multiple locations | CockroachDB |
| Centralized | Single location | Centralized RDBMS |
| Cloud | Cloud infrastructure | Amazon RDS |
| In-Memory | Main memory | Redis |
| Graph | Nodes and edges | Neo4j |
| Document | Documents | MongoDB |
| Key-Value | Key-value pairs | Redis |
| Column-Family | Column families | Cassandra |

---

## 3. DBMS, RDBMS and ORDBMS

### 3.1 DBMS (Database Management System)

A DBMS is software used to create, manage, store, retrieve, and manipulate data.

**Characteristics:**
- Manages database operations.
- Provides data access.
- Supports data security.
- Controls data storage.
- Provides backup and recovery facilities.

**Examples:** Microsoft Access, SQLite, IBM IMS.

### 3.2 RDBMS (Relational Database Management System)

An RDBMS is a type of DBMS that stores data in related tables consisting of rows and columns.

**Characteristics:**
- Stores data in tables.
- Uses primary keys.
- Uses foreign keys.
- Supports relationships.
- Supports SQL.
- Maintains referential integrity.
- Commonly supports ACID transactions.

**Examples:**
- Microsoft SQL Server
- MySQL
- PostgreSQL
- Oracle Database

### 3.3 ORDBMS (Object-Relational Database Management System)

An ORDBMS combines relational database features with object-oriented concepts.

**Characteristics:**
- Supports relational tables.
- Supports user-defined types.
- Supports complex data types.
- Provides object-oriented capabilities.
- Extends relational database functionality.

**Examples:** PostgreSQL, Oracle Database.

### 3.4 DBMS vs RDBMS vs ORDBMS

| Feature | DBMS | RDBMS | ORDBMS |
|---|---|---|---|
| Full Form | Database Management System | Relational Database Management System | Object-Relational Database Management System |
| Data Storage | Varies | Tables | Relational tables with object features |
| Relationships | Depends on model | Keys | Keys and object features |
| Primary Key | Not universally required | Supported | Supported |
| Foreign Key | Not universally required | Supported | Supported |
| SQL | Depends on system | Commonly supported | Commonly supported |
| Object Features | Not essential | Limited or extensions | Integrated |
| Example | MS Access | SQL Server | PostgreSQL |

### 3.5 Examples of DBMS, RDBMS and ORDBMS

- DBMS: Microsoft Access, SQLite.
- RDBMS: Microsoft SQL Server, MySQL.
- ORDBMS: PostgreSQL, Oracle Database.

**Important:** These categories can overlap. A product may support features belonging to more than one category.

---

## 4. SQL vs NoSQL

### 4.1 What is SQL?

SQL stands for Structured Query Language. It is a standard language used to define, retrieve, manipulate, and control data in relational databases.

**Examples:**
- Microsoft SQL Server
- MySQL
- PostgreSQL
- Oracle Database

### 4.2 What is NoSQL?

NoSQL generally refers to non-relational database systems that support flexible data models and different storage approaches.

NoSQL is commonly interpreted as Not Only SQL.

**Examples:**
- MongoDB
- Cassandra
- Redis
- DynamoDB

### 4.3 Characteristics of SQL Databases

- Structured data storage.
- Table-based organization.
- Predefined schemas in traditional relational designs.
- Relationships using keys.
- SQL query language.
- Transaction support.
- Referential integrity.

### 4.4 Characteristics of NoSQL Databases

- Flexible data models.
- Document, key-value, graph and column-family storage.
- Horizontal scalability in many systems.
- Suitable for different data structures.
- Database-specific query interfaces.
- Different consistency and transaction models.

### 4.5 SQL vs NoSQL

| Feature | SQL | NoSQL |
|---|---|---|
| Database Type | Relational | Non-relational |
| Data Storage | Tables | Multiple data models |
| Schema | Generally predefined | Often flexible |
| Query Language | SQL | Database-specific |
| Relationships | Foreign keys and joins | Varies by database |
| Scalability | Vertical and horizontal options | Often designed for horizontal scaling |
| Transactions | ACID support | Depends on database |
| Data Structure | Structured | Structured, semi-structured and unstructured |
| Examples | SQL Server, MySQL | MongoDB, Redis |

### 4.6 Structured, Semi-Structured and Unstructured Data

**Structured Data**

Data organized according to a predefined format, usually rows and columns.

Examples:
- Employee records.
- Banking transactions.
- Student records.

**Semi-Structured Data**

Data that does not follow a rigid tabular structure but contains organizational elements such as tags or key-value pairs.

Examples:
- JSON.
- XML.
- Emails.

**Unstructured Data**

Data without a predefined tabular structure.

Examples:
- Images.
- Videos.
- Audio files.
- Documents.

### 4.7 ACID Properties

ACID represents four important properties of reliable database transactions.

- **Atomicity:** A transaction is completed entirely or not executed at all.
- **Consistency:** A transaction maintains database rules and constraints.
- **Isolation:** Concurrent transactions are controlled to prevent unwanted interference.
- **Durability:** Committed changes remain saved even after system failures.

### 4.8 BASE Properties

BASE is an approach commonly associated with distributed and NoSQL systems.

- **Basically Available:** The system aims to remain available.
- **Soft State:** The system state may change over time because of asynchronous updates.
- **Eventual Consistency:** Replicas are expected to become consistent eventually if updates stop.

### 4.9 CAP Theorem

The CAP theorem describes three properties of distributed data systems:

- **Consistency (C):** Every read receives the latest successful write or an error.
- **Availability (A):** Every request receives a non-error response.
- **Partition Tolerance (P):** The system continues operating despite communication failures between network partitions.

During a network partition, a distributed system must make a trade-off between consistency and availability.

### 4.10 Use Cases of SQL and NoSQL

| SQL Use Cases | NoSQL Use Cases |
|---|---|
| Banking systems | Real-time applications |
| Financial transactions | Social media platforms |
| Enterprise applications | IoT applications |
| Inventory management | Content management |
| ERP systems | Large-scale distributed applications |

---

## 5. OLTP vs OLAP

### 5.1 What is OLTP?

OLTP stands for Online Transaction Processing.

It is a system designed to manage large numbers of day-to-day database transactions.

**Examples:**
- Banking transactions.
- Online shopping orders.
- ATM withdrawals.
- Railway ticket bookings.
- Payment processing.

### 5.2 Characteristics of OLTP

- Handles frequent transactions.
- Supports multiple concurrent users.
- Performs INSERT, UPDATE and DELETE operations.
- Requires transaction accuracy.
- Usually works with current operational data.
- Commonly uses normalized relational schemas.
- Requires low transaction response times.

### 5.3 What is OLAP?

OLAP stands for Online Analytical Processing.

It is a system designed to analyze large volumes of historical and aggregated data to support business intelligence and decision-making.

**Examples:**
- Sales analysis.
- Financial reporting.
- Business forecasting.
- Customer behavior analysis.
- Performance analysis.

### 5.4 Characteristics of OLAP

- Handles complex analytical queries.
- Processes large amounts of data.
- Performs aggregation and analysis.
- Uses historical data.
- Supports business intelligence.
- Commonly uses dimensional models.
- Optimized for read-intensive workloads.

### 5.5 OLTP vs OLAP

| Feature | OLTP | OLAP |
|---|---|---|
| Full Form | Online Transaction Processing | Online Analytical Processing |
| Purpose | Daily transactions | Data analysis |
| Operations | INSERT, UPDATE, DELETE | SELECT and aggregation |
| Data | Current operational data | Historical and analytical data |
| Queries | Simple and frequent | Complex and analytical |
| Users | Operational users | Analysts and decision-makers |
| Database Design | Often normalized | Often dimensional |
| Response Time | Usually milliseconds or seconds | Depends on analytical workload |
| Example | Banking transactions | Sales reporting |

### 5.6 Transactional vs Analytical Workloads

**Transactional Workload:**
- Small and frequent transactions.
- High concurrency.
- Fast data modifications.
- Strong transaction consistency requirements.

**Analytical Workload:**
- Large data scans.
- Complex aggregations.
- Historical data analysis.
- Reporting and decision support.

### 5.7 Examples of OLTP and OLAP Systems

| OLTP Example | OLAP Example |
|---|---|
| Online banking | Banking trend analysis |
| E-commerce checkout | Sales performance analysis |
| Ticket booking | Travel demand analysis |
| Hospital registration | Healthcare analytics |

---

## 6. Database Architecture

### 6.1 Introduction to Database Architecture

Database architecture describes how a database system is structured, how its components interact, and how users and applications access stored data.

### 6.2 1-Tier Architecture

In 1-Tier Architecture, the user, application and database operate within the same system or environment.

**Characteristics:**
- Single-tier structure.
- Direct database access.
- Simple development environment.
- Commonly used for local development.

**Example:** A developer working with a local SQLite database.

### 6.3 2-Tier Architecture

In 2-Tier Architecture, the client application communicates directly with the database server.

**Components:**
1. Client Layer
2. Database Server Layer

**Working:**
- Client sends database requests.
- Database server processes requests.
- Results are returned to the client.

**Example:** A desktop application connected directly to SQL Server.

### 6.4 3-Tier Architecture

In 3-Tier Architecture, the application is divided into three separate layers.

**Components:**

1. Presentation Layer
   - User interface.
   - Displays information.
   - Accepts user input.

2. Application Layer
   - Contains business logic.
   - Processes application requests.
   - Communicates with the database.

3. Database Layer
   - Stores information.
   - Processes database queries.
   - Manages data operations.

**Example:** A web application using a frontend, backend API and SQL Server database.

### 6.5 Client-Server Architecture

Client-server architecture is a computing model in which clients request services and servers provide those services.

**Components:**
- Client.
- Application server (where applicable).
- Database server.
- Network communication.

**Example:** A web application communicating with a database server.

### 6.6 Centralized Database Architecture

A centralized database architecture stores and manages data at a single central location.

**Advantages:**
- Easier administration.
- Centralized security.
- Simplified backup management.

**Disadvantages:**
- Potential single point of failure.
- Network dependency for remote users.
- Central server can become a bottleneck.

### 6.7 Distributed Database Architecture

A distributed database architecture stores data across multiple interconnected systems or locations.

**Advantages:**
- Improved availability potential.
- Geographic data distribution.
- Distributed processing.
- Scalability.

**Challenges:**
- Complex administration.
- Network dependency.
- Data synchronization.
- Distributed transaction management.

### 6.8 Shared-Nothing Architecture

In shared-nothing architecture, each node has its own processor, memory and storage.

**Characteristics:**
- Independent nodes.
- Distributed workload.
- Reduced shared-resource contention.
- Supports horizontal scaling.

### 6.9 Components of Database Architecture

- Database Engine.
- Query Processor.
- Storage Engine.
- Buffer Manager.
- Transaction Manager.
- Concurrency Control Manager.
- Recovery Manager.
- Database Files.
- Transaction Log.
- System Catalog.

---

## 7. Database Relationships

### 7.1 Introduction to Database Relationships

Database relationships define how records in one table are associated with records in another table.

Relationships are commonly implemented using primary keys and foreign keys.

### 7.2 One-to-One Relationship (1:1)

A one-to-one relationship means one record in the first table is associated with at most one record in the second table, and vice versa.

**Example:**

- Person
- Passport

One person has one passport in the modeled relationship.

### 7.3 One-to-Many Relationship (1:N)

A one-to-many relationship means one record in the first table can be associated with multiple records in the second table.

**Example:**

- Department
- Employees

One department can have multiple employees.

### 7.4 Many-to-One Relationship (N:1)

A many-to-one relationship means multiple records in one table can be associated with one record in another table.

**Example:**

- Multiple employees.
- One department.

This is the reverse perspective of a one-to-many relationship.

### 7.5 Many-to-Many Relationship (M:N)

A many-to-many relationship means multiple records in one table can be associated with multiple records in another table.

**Example:**

- Students.
- Courses.

One student can enroll in multiple courses, and one course can have multiple students.

A junction table is generally used to implement this relationship in a relational database.

**Example:** Student_Course.

### 7.6 Primary Key

A primary key is a column or combination of columns that uniquely identifies each row in a table.

**Characteristics:**
- Must contain unique values.
- Cannot contain NULL values.
- A table has one primary key constraint.
- Can consist of multiple columns.

### 7.7 Foreign Key

A foreign key is a column or combination of columns that references a candidate key, commonly a primary key, in another table or the same table.

**Characteristics:**
- Establishes relationships.
- Helps maintain referential integrity.
- Can contain duplicate values.
- Can allow NULL values if the column definition permits.

### 7.8 Composite Key

A composite key consists of two or more columns that together uniquely identify a row.

**Example:**

A Student_Course table may use:
- Student_ID
- Course_ID

Together, these columns identify a particular student-course enrollment.

### 7.9 Referential Integrity

Referential integrity ensures that foreign key values maintain valid references to corresponding candidate key values in the referenced table, subject to the defined constraints.

### 7.10 Relationship Summary

| Relationship | Meaning | Example |
|---|---|---|
| One-to-One | One record relates to one record | Person and Passport |
| One-to-Many | One record relates to multiple records | Department and Employees |
| Many-to-One | Multiple records relate to one record | Employees and Department |
| Many-to-Many | Multiple records relate to multiple records | Students and Courses |

---

## 8. Entity-Relationship (ER) Diagrams

### 8.1 Introduction to ER Diagrams

An Entity-Relationship Diagram (ER Diagram) is a visual representation of entities, their attributes and the relationships between them.

It is used during database design to understand how data should be organized.

### 8.2 Entity

An entity is a real-world object or concept about which information is stored.

**Examples:**
- Student.
- Employee.
- Department.
- Product.
- Customer.

### 8.3 Entity Set

An entity set is a collection of similar entities that share the same type of attributes.

**Example:** All students in a college form a Student entity set.

### 8.4 Attributes

Attributes describe the properties or characteristics of an entity.

**Example:**

Student:
- Student_ID
- Student_Name
- Date_of_Birth
- Email
- Phone_Number

### 8.5 Types of Attributes

**Simple Attribute**

An attribute that cannot be divided into smaller meaningful components.

Example: Age.

**Composite Attribute**

An attribute that can be divided into smaller components.

Example: Address can contain Street, City, State and PIN Code.

**Single-Valued Attribute**

An attribute that contains one value for each entity.

Example: Date_of_Birth.

**Multi-Valued Attribute**

An attribute that can contain multiple values for an entity.

Example: Phone_Numbers.

**Derived Attribute**

An attribute whose value can be calculated from another attribute.

Example: Age calculated from Date_of_Birth.

**Key Attribute**

An attribute that uniquely identifies an entity.

Example: Student_ID.

### 8.6 Relationships

A relationship represents an association between two or more entities.

**Example:**

- Student ENROLLS_IN Course.
- Employee WORKS_FOR Department.
- Customer PLACES Order.

### 8.7 Relationship Sets

A relationship set is a collection of relationships of the same type among entity sets.

### 8.8 Cardinality Constraints

Cardinality defines the number of entities that can participate in a relationship.

Types:
- One-to-One (1:1).
- One-to-Many (1:N).
- Many-to-One (N:1).
- Many-to-Many (M:N).

### 8.9 Participation Constraints

Participation constraints specify whether every entity must participate in a relationship.

**Total Participation:**

Every entity in an entity set must participate in the relationship.

**Partial Participation:**

Participation in the relationship is optional for some entities.

### 8.10 Strong Entity

A strong entity has its own key attribute and can be uniquely identified independently.

**Example:** Student with Student_ID.

### 8.11 Weak Entity

A weak entity cannot be uniquely identified using its own attributes alone and depends on an identifying relationship with an owner entity.

**Example:** Dependent associated with an Employee.

### 8.12 ER Diagram Symbols and Notations

| Symbol | Meaning |
|---|---|
| Rectangle | Strong Entity |
| Double Rectangle | Weak Entity |
| Oval | Attribute |
| Underlined Attribute | Key Attribute |
| Double Oval | Multi-Valued Attribute |
| Dashed Oval | Derived Attribute |
| Diamond | Relationship |
| Double Diamond | Identifying Relationship |
| Single Line | Partial Participation |
| Double Line | Total Participation |

### 8.13 Converting ER Diagrams into Relational Tables

General conversion rules:

1. Convert strong entities into tables.
2. Convert simple attributes into columns.
3. Select primary keys for entity tables.
4. Represent one-to-many relationships using foreign keys.
5. Represent many-to-many relationships using junction tables.
6. Handle multivalued attributes using separate tables.
7. Map weak entities using their owner entity's key and a partial key.

---

## 9. Database Schemas

### 9.1 Introduction to Database Schemas

A database schema is the logical structure or blueprint that defines how data is organized in a database.

It describes:
- Tables.
- Columns.
- Data types.
- Relationships.
- Constraints.
- Views.
- Other database objects.

### 9.2 What is a Database Schema?

A schema defines the structure of database objects and how they relate to one another.

**Example:**

A Student table may contain:

| Column Name | Data Type |
|---|---|
| Student_ID | INT |
| Student_Name | VARCHAR |
| Email | VARCHAR |
| Date_of_Birth | DATE |

### 9.3 Types of Database Schemas

**Conceptual Schema**

Describes the overall logical structure of the database from the organization's perspective.

It focuses on:
- Entities.
- Attributes.
- Relationships.
- Business rules.

**Logical Schema**

Defines the logical organization of data, including tables, columns, keys and constraints, independently of physical storage details.

**Physical Schema**

Describes how database data is physically stored and accessed.

It includes:
- Data files.
- Storage structures.
- Indexes.
- Partitions.
- Physical organization.

### 9.4 Three-Schema Architecture

The three-schema architecture separates a database system into three levels.

**1. External Level**

- Also called the View Level.
- Defines how individual users or applications view the data.
- Different users can have different views.

**2. Conceptual Level**

- Also called the Logical Level.
- Defines the overall logical structure.
- Describes entities, relationships and constraints.

**3. Internal Level**

- Also called the Physical Level.
- Defines how data is physically stored.
- Includes storage structures and access paths.

### 9.5 External Schema

An external schema describes a particular user's or application's view of the database.

**Example:** A student can view marks and attendance but cannot access confidential faculty records.

### 9.6 Conceptual Schema

A conceptual schema describes the complete logical structure of the database without focusing on physical storage.

### 9.7 Internal Schema

An internal schema describes how data is organized and stored within the database system.

### 9.8 Schema vs Instance

| Feature | Schema | Instance |
|---|---|---|
| Meaning | Database structure | Actual data at a particular time |
| Changes | Relatively infrequent | Changes frequently |
| Definition | Blueprint | Current state |
| Example | Student table definition | Records inside Student table |

### 9.9 Database Schema vs Database

| Feature | Database Schema | Database |
|---|---|---|
| Meaning | Structure or blueprint | Organized collection of data |
| Contains | Definitions of objects | Data and database objects |
| Purpose | Defines organization | Stores and manages information |
| Example | Student table definition | Student records |

### 9.10 Schema Design and Implementation

Important steps:

1. Gather business requirements.
2. Identify entities and attributes.
3. Identify relationships.
4. Create an ER diagram.
5. Convert the ER diagram into relational tables.
6. Define primary and foreign keys.
7. Apply normalization.
8. Select suitable data types.
9. Define constraints.
10. Implement and validate the schema.

---

## 10. Important Concepts to Remember

| Concept | Key Point |
|---|---|
| Data | Raw facts and figures |
| Database | Organized collection of data |
| DBMS | Software for managing databases |
| RDBMS | Stores data in related tables |
| ORDBMS | Combines relational and object-oriented features |
| SQL | Language for relational database operations |
| NoSQL | Non-relational database systems |
| OLTP | Handles day-to-day transactions |
| OLAP | Handles analytical processing |
| Primary Key | Uniquely identifies a row |
| Foreign Key | References a key in another table |
| Composite Key | Uses multiple columns as a key |
| ER Diagram | Visual database design representation |
| Schema | Database structure |
| Instance | Database state at a particular time |
| Normalization | Organizes data to reduce redundancy and anomalies |
| ACID | Atomicity, Consistency, Isolation, Durability |
| CAP | Consistency, Availability, Partition Tolerance |

---

## 11. Points to Remember

1. A database stores organized information.
2. A DBMS manages database operations.
3. An RDBMS organizes data using related tables.
4. SQL is commonly used with relational databases.
5. NoSQL databases support multiple non-relational data models.
6. OLTP is designed for transactional workloads.
7. OLAP is designed for analytical workloads.
8. Primary keys uniquely identify records.
9. Foreign keys establish references between tables.
10. Many-to-many relationships are generally implemented using junction tables.
11. ER diagrams help design database structures.
12. A schema defines database structure.
13. An instance represents database contents at a particular time.
14. ACID properties support reliable transaction processing.
15. Database architecture describes how database components interact.

---

## 12. References

### Official Documentation

- [Microsoft Learn - SQL Server Documentation](https://learn.microsoft.com/en-us/sql/sql-server/)
- [MySQL Official Documentation](https://dev.mysql.com/doc/)
- [PostgreSQL Official Documentation](https://www.postgresql.org/docs/)
- [MongoDB Documentation](https://www.mongodb.com/docs/)

### Learning Resources

- [GeeksforGeeks - DBMS](https://www.geeksforgeeks.org/dbms/)
- [GeeksforGeeks - Database Management System](https://www.geeksforgeeks.org/dbms/database-management-system-dbms/)
- [W3Schools - SQL Tutorial](https://www.w3schools.com/sql/)
