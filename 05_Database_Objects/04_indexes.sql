-- =============================================
-- Database Objects: Indexes
-- Platform: Microsoft SQL Server
-- Database: sql_server_practice
-- Table: EMPLOYEE
-- =============================================


-- Select the existing practice database.
USE sql_server_practice;
GO


-- =============================================
-- DISPLAY INDEX INFORMATION
-- =============================================

-- Q1. Display all indexes in the current database.
SELECT *
FROM sys.indexes;


-- Q2. Display indexes of the EMPLOYEE table.
SELECT *
FROM sys.indexes
WHERE object_id = OBJECT_ID('dbo.EMPLOYEE');


-- Q3. Display index names of EMPLOYEE.
SELECT
    name,
    index_id,
    type_desc
FROM sys.indexes
WHERE object_id = OBJECT_ID('dbo.EMPLOYEE');


-- Q4. Display index information using sp_helpindex.
EXEC sp_helpindex 'dbo.EMPLOYEE';


-- =============================================
-- CREATE CLUSTERED INDEX
-- =============================================

-- Q5. Create a clustered index on EMPNO.
CREATE CLUSTERED INDEX IX_EMPLOYEE_EMPNO
ON dbo.EMPLOYEE (EMPNO);


-- Q6. Verify the clustered index.
EXEC sp_helpindex 'dbo.EMPLOYEE';


-- =============================================
-- CREATE NONCLUSTERED INDEXES
-- =============================================

-- Q7. Create a nonclustered index on ENAME.
CREATE NONCLUSTERED INDEX IX_EMPLOYEE_ENAME
ON dbo.EMPLOYEE (ENAME);


-- Q8. Create a nonclustered index on JOB.
CREATE NONCLUSTERED INDEX IX_EMPLOYEE_JOB
ON dbo.EMPLOYEE (JOB);


-- Q9. Create a nonclustered index on SAL.
CREATE NONCLUSTERED INDEX IX_EMPLOYEE_SAL
ON dbo.EMPLOYEE (SAL);


-- Q10. Create a nonclustered index on DEPTNO.
CREATE NONCLUSTERED INDEX IX_EMPLOYEE_DEPTNO
ON dbo.EMPLOYEE (DEPTNO);


-- =============================================
-- CREATE COMPOSITE AND UNIQUE INDEXES
-- =============================================

-- Q11. Create a composite index on JOB and DEPTNO.
CREATE NONCLUSTERED INDEX IX_EMPLOYEE_JOB_DEPTNO
ON dbo.EMPLOYEE (JOB, DEPTNO);


-- Q12. Create a unique index on EMAIL_ADDRESS.
CREATE UNIQUE NONCLUSTERED INDEX IX_EMPLOYEE_EMAIL
ON dbo.EMPLOYEE (EMAIL_ADDRESS);


-- =============================================
-- DISPLAY SPECIFIC INDEX TYPES
-- =============================================

-- Q13. Display all indexes of EMPLOYEE.
SELECT
    name,
    type_desc,
    is_unique,
    is_primary_key
FROM sys.indexes
WHERE object_id = OBJECT_ID('dbo.EMPLOYEE');


-- Q14. Display only clustered indexes.
SELECT
    name,
    type_desc
FROM sys.indexes
WHERE object_id = OBJECT_ID('dbo.EMPLOYEE')
AND type = 1;


-- Q15. Display only nonclustered indexes.
SELECT
    name,
    type_desc
FROM sys.indexes
WHERE object_id = OBJECT_ID('dbo.EMPLOYEE')
AND type = 2;


-- Q16. Display unique indexes.
SELECT
    name,
    is_unique
FROM sys.indexes
WHERE object_id = OBJECT_ID('dbo.EMPLOYEE')
AND is_unique = 1;


-- =============================================
-- INDEX MAINTENANCE
-- =============================================

-- Q17. Rebuild the JOB index.
ALTER INDEX IX_EMPLOYEE_JOB
ON dbo.EMPLOYEE
REBUILD;


-- Q18. Reorganize the SAL index.
ALTER INDEX IX_EMPLOYEE_SAL
ON dbo.EMPLOYEE
REORGANIZE;


-- Q19. Disable the ENAME index.
ALTER INDEX IX_EMPLOYEE_ENAME
ON dbo.EMPLOYEE
DISABLE;


-- Q20. Rebuild the disabled ENAME index.
ALTER INDEX IX_EMPLOYEE_ENAME
ON dbo.EMPLOYEE
REBUILD;


-- Q21. Display all indexes again.
EXEC sp_helpindex 'dbo.EMPLOYEE';


-- =============================================
-- INDEX DETAILS USING SYSTEM CATALOG VIEWS
-- =============================================

-- Q22. Display index details with their types.
SELECT
    i.name AS INDEX_NAME,
    i.type_desc AS INDEX_TYPE,
    i.is_unique AS IS_UNIQUE,
    c.name AS COLUMN_NAME,
    ic.key_ordinal AS KEY_ORDINAL,
    ic.is_included_column AS IS_INCLUDED_COLUMN
FROM sys.indexes AS i
INNER JOIN sys.index_columns AS ic
    ON i.object_id = ic.object_id
    AND i.index_id = ic.index_id
INNER JOIN sys.columns AS c
    ON ic.object_id = c.object_id
    AND ic.column_id = c.column_id
WHERE i.object_id = OBJECT_ID('dbo.EMPLOYEE')
AND i.index_id > 0
ORDER BY
    i.name,
    ic.key_ordinal,
    ic.index_column_id;


-- =============================================
-- DROP INDEXES
-- =============================================

-- Q23. Drop the ENAME index.
DROP INDEX IX_EMPLOYEE_ENAME
ON dbo.EMPLOYEE;


-- Q24. Drop the JOB index.
DROP INDEX IX_EMPLOYEE_JOB
ON dbo.EMPLOYEE;


-- Q25. Drop the SAL index.
DROP INDEX IX_EMPLOYEE_SAL
ON dbo.EMPLOYEE;


-- Q26. Drop the DEPTNO index.
DROP INDEX IX_EMPLOYEE_DEPTNO
ON dbo.EMPLOYEE;


-- Q27. Drop the composite index.
DROP INDEX IX_EMPLOYEE_JOB_DEPTNO
ON dbo.EMPLOYEE;


-- Q28. Drop the unique EMAIL index.
DROP INDEX IX_EMPLOYEE_EMAIL
ON dbo.EMPLOYEE;


-- Q29. Drop the clustered index.
DROP INDEX IX_EMPLOYEE_EMPNO
ON dbo.EMPLOYEE;


-- Q30. Verify that all indexes have been removed.
EXEC sp_helpindex 'dbo.EMPLOYEE';


-- =============================================
-- ADDITIONAL PRACTICE QUESTIONS
-- =============================================

-- Q31. Create a nonclustered index on JOINING_DATE.
CREATE NONCLUSTERED INDEX IX_EMPLOYEE_JOINING_DATE
ON dbo.EMPLOYEE (JOINING_DATE);


-- Q32. Create a nonclustered index on EMAIL_ADDRESS.
CREATE NONCLUSTERED INDEX IX_EMPLOYEE_EMAIL_ADDRESS
ON dbo.EMPLOYEE (EMAIL_ADDRESS);


-- Q33. Create a composite index on DEPTNO and JOB.
CREATE NONCLUSTERED INDEX IX_EMPLOYEE_DEPTNO_JOB
ON dbo.EMPLOYEE (DEPTNO, JOB);


-- Q34. Create a unique index on EMPNO.
CREATE UNIQUE NONCLUSTERED INDEX IX_EMPLOYEE_EMPNO_UNIQUE
ON dbo.EMPLOYEE (EMPNO);


-- Q35. Display all indexes of the DEPT table.
SELECT
    name,
    index_id,
    type_desc,
    is_unique
FROM sys.indexes
WHERE object_id = OBJECT_ID('dbo.DEPT');


-- Q36. Display the names and types of indexes
-- belonging to the EMPLOYEE table.
SELECT
    name AS INDEX_NAME,
    type_desc AS INDEX_TYPE
FROM sys.indexes
WHERE object_id = OBJECT_ID('dbo.EMPLOYEE')
AND index_id > 0;


-- Q37. Rebuild an index of your choice.
ALTER INDEX IX_EMPLOYEE_JOINING_DATE
ON dbo.EMPLOYEE
REBUILD;


-- Q38. Reorganize an index of your choice.
ALTER INDEX IX_EMPLOYEE_DEPTNO_JOB
ON dbo.EMPLOYEE
REORGANIZE;


-- Q39. Drop an index that you created for practice.
DROP INDEX IX_EMPLOYEE_JOINING_DATE
ON dbo.EMPLOYEE;


-- Q40. Count the total number of indexes
-- belonging to the EMPLOYEE table.
SELECT
    COUNT(*) AS TOTAL_INDEXES
FROM sys.indexes
WHERE object_id = OBJECT_ID('dbo.EMPLOYEE')
AND index_id > 0;


-- =============================================
-- FINAL VERIFICATION
-- =============================================

-- Display all remaining indexes of EMPLOYEE.
SELECT
    name AS INDEX_NAME,
    type_desc AS INDEX_TYPE,
    is_unique AS IS_UNIQUE
FROM sys.indexes
WHERE object_id = OBJECT_ID('dbo.EMPLOYEE')
AND index_id > 0;


-- Display index information using sp_helpindex.
EXEC sp_helpindex 'dbo.EMPLOYEE';