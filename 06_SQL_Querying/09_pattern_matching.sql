-- =============================================
-- 09_Pattern_Matching
-- File: pattern_matching.sql
-- Database: sql_server_practice
-- =============================================

USE sql_server_practice;
GO

-- =============================================
-- 1. LIKE Operator
-- =============================================

-- Q1. Display employees whose names start with A.
SELECT *
FROM EMPLOYEE
WHERE ENAME LIKE 'A%';

-- Q2. Display employees whose names end with N.
SELECT *
FROM EMPLOYEE
WHERE ENAME LIKE '%N';

-- Q3. Display employees whose names contain A.
SELECT *
FROM EMPLOYEE
WHERE ENAME LIKE '%A%';

-- Q4. Display employees whose names contain LL.
SELECT *
FROM EMPLOYEE
WHERE ENAME LIKE '%LL%';


-- =============================================
-- 2. Percentage (%) Wildcard
-- =============================================

-- Q5. Display employees whose names start with S.
SELECT *
FROM EMPLOYEE
WHERE ENAME LIKE 'S%';

-- Q6. Display employees whose names end with R.
SELECT *
FROM EMPLOYEE
WHERE ENAME LIKE '%R';

-- Q7. Display employees whose names have M anywhere.
SELECT *
FROM EMPLOYEE
WHERE ENAME LIKE '%M%';

-- Q8. Display employees whose jobs start with SALE.
SELECT *
FROM EMPLOYEE
WHERE JOB LIKE 'SALE%';


-- =============================================
-- 3. Underscore (_) Wildcard
-- =============================================

-- Q9. Display employees whose names have exactly 5 characters.
SELECT *
FROM EMPLOYEE
WHERE ENAME LIKE '_____';

-- Q10. Display employees whose names have A as the second character.
SELECT *
FROM EMPLOYEE
WHERE ENAME LIKE '_A%';

-- Q11. Display employees whose names have S as the first
--     character and H as the third character.
SELECT *
FROM EMPLOYEE
WHERE ENAME LIKE 'S_H%';

-- Q12. Display employees whose names have exactly 4 characters
--     and start with A.
SELECT *
FROM EMPLOYEE
WHERE ENAME LIKE 'A___';


-- =============================================
-- 4. Square Brackets [] Wildcard
-- =============================================

-- Q13. Display employees whose names start with A or S.
SELECT *
FROM EMPLOYEE
WHERE ENAME LIKE '[AS]%';

-- Q14. Display employees whose names start with A, B, or C.
SELECT *
FROM EMPLOYEE
WHERE ENAME LIKE '[ABC]%';

-- Q15. Display employees whose names start with a letter
--     between A and M.
SELECT *
FROM EMPLOYEE
WHERE ENAME LIKE '[A-M]%';


-- =============================================
-- 5. Negated Character List [^]
-- =============================================

-- Q16. Display employees whose names do not start with A.
SELECT *
FROM EMPLOYEE
WHERE ENAME LIKE '[^A]%';

-- Q17. Display employees whose names do not start with A or S.
SELECT *
FROM EMPLOYEE
WHERE ENAME LIKE '[^AS]%';

-- Q18. Display employees whose names do not start
--     with a letter between A and M.
SELECT *
FROM EMPLOYEE
WHERE ENAME LIKE '[^A-M]%';


-- =============================================
-- 6. LIKE with NOT
-- =============================================

-- Q19. Display employees whose names do not start with A.
SELECT *
FROM EMPLOYEE
WHERE ENAME NOT LIKE 'A%';

-- Q20. Display employees whose jobs do not end with MAN.
SELECT *
FROM EMPLOYEE
WHERE JOB NOT LIKE '%MAN';


-- =============================================
-- 7. Practice Questions - Using EMP table
-- =============================================

-- Q21. Display employees whose names start with M.
SELECT *
FROM EMP
WHERE ENAME LIKE 'M%';

-- Q22. Display employees whose names end with S.
SELECT *
FROM EMP
WHERE ENAME LIKE '%S';

-- Q23. Display employees whose names contain E.
SELECT *
FROM EMP
WHERE ENAME LIKE '%E%';

-- Q24. Display employees whose names have exactly 4 characters.
SELECT *
FROM EMP
WHERE ENAME LIKE '____';

-- Q25. Display employees whose second character is A.
SELECT *
FROM EMP
WHERE ENAME LIKE '_A%';

-- Q26. Display employees whose names start with A, J, or S.
SELECT *
FROM EMP
WHERE ENAME LIKE '[AJS]%';

-- Q27. Display employees whose names do not start with S.
SELECT *
FROM EMP
WHERE ENAME LIKE '[^S]%';

-- Q28. Display employees whose job titles contain the letter A.
SELECT *
FROM EMP
WHERE JOB LIKE '%A%';

-- Q29. Display employees whose names start with a letter between A and G.
SELECT *
FROM EMP
WHERE ENAME LIKE '[A-G]%'

-- Q30. Display employees whose names have exactly 5 characters and end with H.
SELECT *
FROM EMP
WHERE ENAME LIKE '____H'