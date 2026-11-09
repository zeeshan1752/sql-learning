-- DCL: Data Control Language
-- Platform: Microsoft SQL Server
-- Database: sql_server_practice
-- Table: EMP

USE sql_server_practice;


-- ==========================================
-- 1. CREATE A PRACTICE USER
-- ==========================================

-- Q1. Create a database user for permission practice.

CREATE USER emp_practice_user WITHOUT LOGIN;


-- ==========================================
-- 2. GRANT COMMAND
-- ==========================================

-- Q2. Grant SELECT permission on EMP.

GRANT SELECT
ON OBJECT::dbo.EMP
TO emp_practice_user;


-- Q3. Grant INSERT permission on EMP.

GRANT INSERT
ON OBJECT::dbo.EMP
TO emp_practice_user;


-- Q4. Grant UPDATE permission on EMP.

GRANT UPDATE
ON OBJECT::dbo.EMP
TO emp_practice_user;


-- Q5. Grant DELETE permission on EMP.

GRANT DELETE
ON OBJECT::dbo.EMP
TO emp_practice_user;


-- Q6. Grant multiple permissions together.

GRANT SELECT, INSERT, UPDATE
ON OBJECT::dbo.EMP
TO emp_practice_user;


-- ==========================================
-- 3. REVOKE COMMAND
-- ==========================================

-- Q7. Revoke SELECT permission from the user.

REVOKE SELECT
ON OBJECT::dbo.EMP
FROM emp_practice_user;


-- Q8. Revoke INSERT permission from the user.

REVOKE INSERT
ON OBJECT::dbo.EMP
FROM emp_practice_user;


-- Q9. Revoke UPDATE permission from the user.

REVOKE UPDATE
ON OBJECT::dbo.EMP
FROM emp_practice_user;


-- ==========================================
-- 4. DENY COMMAND
-- ==========================================

-- Q10. Explicitly deny DELETE permission.

DENY DELETE
ON OBJECT::dbo.EMP
TO emp_practice_user;


-- Q11. Explicitly deny UPDATE permission.

DENY UPDATE
ON OBJECT::dbo.EMP
TO emp_practice_user;


-- Q12. Deny multiple permissions.

DENY INSERT, DELETE
ON OBJECT::dbo.EMP
TO emp_practice_user;


-- ==========================================
-- 5. REVOKE DENIED PERMISSIONS
-- ==========================================

-- Q13. Remove the DELETE denial.

REVOKE DELETE
ON OBJECT::dbo.EMP
FROM emp_practice_user;


-- Q14. Remove the UPDATE denial.

REVOKE UPDATE
ON OBJECT::dbo.EMP
FROM emp_practice_user;


-- ==========================================
-- 6. REMOVE PRACTICE USER
-- ==========================================

-- Q15. Delete the practice user.

DROP USER emp_practice_user;