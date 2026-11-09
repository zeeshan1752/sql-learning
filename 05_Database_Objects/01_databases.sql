-- =============================================
-- Database Objects: Databases
-- Platform: Microsoft SQL Server
-- Main Database: sql_server_practice
-- =============================================


-- =============================================
-- DATABASE INFORMATION
-- =============================================

-- Q1. Display all databases.
SELECT *
FROM sys.databases;


-- Q2. Display only database names.
SELECT
    name
FROM sys.databases;


-- Q3. Display database names and database IDs.
SELECT
    name,
    database_id
FROM sys.databases;


-- Q4. Display all user-created databases.
SELECT
    name,
    database_id
FROM sys.databases
WHERE database_id > 4;


-- Q5. Display the current database name.
SELECT
    DB_NAME() AS CURRENT_DATABASE;


-- =============================================
-- DATABASE SELECTION
-- =============================================

-- Q6. Select your main practice database.
USE sql_server_practice;
GO


-- Q7. Verify the current database.
SELECT
    DB_NAME() AS CURRENT_DATABASE;


-- Q8. Switch to the master database.
USE master;
GO


-- =============================================
-- DATABASE CREATION
-- =============================================

-- Q9. Create a temporary practice database.
CREATE DATABASE TEMP_SQL_PRACTICE_DB;
GO


-- Q10. Verify that the temporary database was created.
SELECT
    name
FROM sys.databases
WHERE name = 'TEMP_SQL_PRACTICE_DB';


-- Q11. Display details of the temporary database.
SELECT
    name,
    database_id,
    state_desc,
    recovery_model_desc
FROM sys.databases
WHERE name = 'TEMP_SQL_PRACTICE_DB';


-- =============================================
-- DATABASE MODIFICATION
-- =============================================

-- Q12. Change the recovery model to SIMPLE.
ALTER DATABASE TEMP_SQL_PRACTICE_DB
SET RECOVERY SIMPLE;
GO


-- Q13. Verify the updated recovery model.
SELECT
    name,
    recovery_model_desc
FROM sys.databases
WHERE name = 'TEMP_SQL_PRACTICE_DB';


-- Q14. Rename the temporary database.
ALTER DATABASE TEMP_SQL_PRACTICE_DB
MODIFY NAME = TEMP_SQL_PRACTICE_DB_RENAMED;
GO


-- Q15. Verify the new database name.
SELECT
    name
FROM sys.databases
WHERE name = 'TEMP_SQL_PRACTICE_DB_RENAMED';


-- =============================================
-- DATABASE DELETION
-- =============================================

-- Q16. Drop the temporary database.
ALTER DATABASE TEMP_SQL_PRACTICE_DB_RENAMED
SET SINGLE_USER
WITH ROLLBACK IMMEDIATE;
GO

DROP DATABASE TEMP_SQL_PRACTICE_DB_RENAMED;
GO


-- Q17. Verify that the temporary database has been deleted.
SELECT
    name
FROM sys.databases
WHERE name = 'TEMP_SQL_PRACTICE_DB_RENAMED';


-- =============================================
-- DATABASE VERIFICATION
-- =============================================

-- Q18. Display all databases after completing the practice.
SELECT
    name,
    database_id,
    state_desc,
    recovery_model_desc
FROM sys.databases;


-- =============================================
-- ADDITIONAL PRACTICE QUESTIONS
-- =============================================

-- Q19. Find the database ID of sql_server_practice.
SELECT
    name,
    database_id
FROM sys.databases
WHERE name = 'sql_server_practice';


-- Q20. Display all databases using the SIMPLE recovery model.
SELECT
    name,
    recovery_model_desc
FROM sys.databases
WHERE recovery_model_desc = 'SIMPLE';


-- Q21. Count the total number of databases.
SELECT
    COUNT(*) AS TOTAL_DATABASES
FROM sys.databases;


-- Q22. Display all databases except system databases.
SELECT
    name,
    database_id
FROM sys.databases
WHERE database_id > 4;


-- Q23. Check whether sql_server_practice is online.
SELECT
    name,
    state_desc,
    CASE
        WHEN state_desc = 'ONLINE' THEN 'ONLINE'
        ELSE 'NOT ONLINE'
    END AS DATABASE_STATUS
FROM sys.databases
WHERE name = 'sql_server_practice';


-- Q24. Display the name and recovery model of sql_server_practice.
SELECT
    name,
    recovery_model_desc
FROM sys.databases
WHERE name = 'sql_server_practice';


-- =============================================
-- FINAL VERIFICATION
-- =============================================

-- Verify the main practice database.
SELECT
    name,
    state_desc,
    recovery_model_desc
FROM sys.databases
WHERE name = 'sql_server_practice';