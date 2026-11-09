-- =============================================
-- Database Objects: Views
-- Platform: Microsoft SQL Server
-- Database: sql_server_practice
-- Table: EMPLOYEE
-- =============================================


-- Select the existing practice database.
USE sql_server_practice;
GO


-- =============================================
-- CREATE VIEWS
-- =============================================

-- Q1. Create a view displaying all employee columns.
CREATE VIEW VW_EMPLOYEE
AS
SELECT *
FROM dbo.EMPLOYEE;
GO


-- Q2. Create a view displaying employee ID, name and salary.
CREATE VIEW VW_EMPLOYEE_DETAILS
AS
SELECT EMPNO, ENAME, SAL
FROM dbo.EMPLOYEE;
GO


-- Q3. Create a view displaying employee ID, name and job.
CREATE VIEW VW_EMPLOYEE_JOB
AS
SELECT EMPNO, ENAME, JOB
FROM dbo.EMPLOYEE;
GO


-- Q4. Create a view displaying employees earning more than 3000.
CREATE VIEW VW_HIGH_SALARY
AS
SELECT *
FROM dbo.EMPLOYEE
WHERE SAL > 3000;
GO


-- Q5. Create a view displaying employees working in department 20.
CREATE VIEW VW_DEPT_20
AS
SELECT *
FROM dbo.EMPLOYEE
WHERE DEPTNO = 20;
GO


-- Q6. Create a view displaying only managers.
CREATE VIEW VW_MANAGERS
AS
SELECT *
FROM dbo.EMPLOYEE
WHERE JOB = 'MANAGER';
GO


-- =============================================
-- DISPLAY RECORDS USING VIEWS
-- =============================================

-- Q7. Display all records from VW_EMPLOYEE.
SELECT *
FROM VW_EMPLOYEE;


-- Q8. Display employee details using VW_EMPLOYEE_DETAILS.
SELECT *
FROM VW_EMPLOYEE_DETAILS;


-- Q9. Display employees earning more than 3000.
SELECT *
FROM VW_HIGH_SALARY;


-- Q10. Display employees working in department 20.
SELECT *
FROM VW_DEPT_20;


-- Q11. Display all managers.
SELECT *
FROM VW_MANAGERS;


-- Q12. Display only employee names and salaries.
SELECT ENAME, SAL
FROM VW_EMPLOYEE_DETAILS;


-- Q13. Filter employees through a view.
SELECT *
FROM VW_EMPLOYEE
WHERE SAL > 2500;


-- Q14. Sort employee records through a view.
SELECT *
FROM VW_EMPLOYEE
ORDER BY SAL DESC;


-- =============================================
-- MODIFY EXISTING VIEWS
-- =============================================
GO
-- Q15. Modify VW_EMPLOYEE_DETAILS to include JOB.
ALTER VIEW VW_EMPLOYEE_DETAILS
AS
SELECT EMPNO, ENAME, JOB, SAL
FROM dbo.EMPLOYEE;
GO


-- Q16. Verify the modified view.
SELECT *
FROM VW_EMPLOYEE_DETAILS;

GO
-- Q17. Modify VW_HIGH_SALARY to display employees earning more than 4000.
ALTER VIEW VW_HIGH_SALARY
AS
SELECT *
FROM dbo.EMPLOYEE
WHERE SAL > 4000;
GO


-- Q18. Verify the modified view.
SELECT *
FROM VW_HIGH_SALARY;

GO
-- Q19. Modify VW_EMPLOYEE_JOB to include DEPTNO.
ALTER VIEW VW_EMPLOYEE_JOB
AS
SELECT EMPNO, ENAME, JOB, DEPTNO
FROM dbo.EMPLOYEE;
GO


-- Q20. Verify the modified view.
SELECT *
FROM VW_EMPLOYEE_JOB;


-- =============================================
-- VIEW INFORMATION AND METADATA
-- =============================================

-- Q21. Display all views in the current database.
SELECT *
FROM sys.views;


-- Q22. Display only view names.
SELECT
    name
FROM sys.views;


-- Q23. Display view information using sp_help.
EXEC sp_help 'dbo.VW_EMPLOYEE';


-- Q24. Display the SQL definition of a view.
EXEC sp_helptext 'dbo.VW_EMPLOYEE';


-- =============================================
-- DROP VIEWS
-- =============================================

-- Q25. Drop VW_DEPT_20.
DROP VIEW dbo.VW_DEPT_20;


-- Q26. Verify that VW_DEPT_20 has been deleted.
SELECT
    name
FROM sys.views
WHERE name = 'VW_DEPT_20';


-- Q27. Drop VW_MANAGERS.
DROP VIEW dbo.VW_MANAGERS;


-- Q28. Drop VW_EMPLOYEE.
DROP VIEW dbo.VW_EMPLOYEE;


-- Q29. Drop VW_EMPLOYEE_DETAILS.
DROP VIEW dbo.VW_EMPLOYEE_DETAILS;


-- Q30. Drop VW_EMPLOYEE_JOB.
DROP VIEW dbo.VW_EMPLOYEE_JOB;


-- Q31. Drop VW_HIGH_SALARY.
DROP VIEW dbo.VW_HIGH_SALARY;


-- Q32. Display all remaining views.
SELECT
    name
FROM sys.views;


-- =============================================
-- ADDITIONAL PRACTICE QUESTIONS
-- =============================================
GO
-- Q33. Create a view displaying employee ID and employee name.
CREATE VIEW VW_EMPLOYEE_ID_NAME
AS
SELECT EMPNO, ENAME
FROM dbo.EMPLOYEE;
GO


-- Q34. Create a view displaying employees whose salary
-- is greater than 2500.
CREATE VIEW VW_SALARY_ABOVE_2500
AS
SELECT *
FROM dbo.EMPLOYEE
WHERE SAL > 2500;
GO


-- Q35. Create a view displaying employees working in department 10.
CREATE VIEW VW_DEPT_10
AS
SELECT *
FROM dbo.EMPLOYEE
WHERE DEPTNO = 10;
GO


-- Q36. Create a view displaying only employee names and job titles.
CREATE VIEW VW_EMPLOYEE_NAME_JOB
AS
SELECT ENAME, JOB
FROM dbo.EMPLOYEE;
GO


-- Q37. Display the structure of a view using sp_help.
EXEC sp_help 'dbo.VW_EMPLOYEE_ID_NAME';


-- Q38. Display the definition of a view using sp_helptext.
EXEC sp_helptext 'dbo.VW_EMPLOYEE_ID_NAME';

GO
-- Q39. Modify an existing view to include the DEPTNO column.
ALTER VIEW VW_EMPLOYEE_ID_NAME
AS
SELECT EMPNO, ENAME, DEPTNO
FROM dbo.EMPLOYEE;
GO


-- Verify the modified view.
SELECT *
FROM VW_EMPLOYEE_ID_NAME;


-- Q40. Drop a view that you created for practice.
DROP VIEW dbo.VW_EMPLOYEE_NAME_JOB;


-- =============================================
-- FINAL VERIFICATION
-- =============================================

-- Display all remaining views.
SELECT
    s.name AS SCHEMA_NAME,
    v.name AS VIEW_NAME
FROM sys.views AS v
INNER JOIN sys.schemas AS s
    ON v.schema_id = s.schema_id;


-- Verify the modified practice view.
SELECT *
FROM VW_EMPLOYEE_ID_NAME;