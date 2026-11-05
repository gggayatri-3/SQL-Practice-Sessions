--SET OPERATORS ---> UDED FOR CREATING DUPLICATES

-- -> 1. UNION - QUERY 1 + QUERY 2 --> REMOVES DUPLICATES, KEEPS ONLY INDIVIDUALS
-- -> 2. UNION ALL - QUERY 1 + QUERY 2 --> KEEPS ALL DUPLICATES AND INDIVIDUALS
-- -> 3. INTERSECT - COMMON IN QUERY 1 AND QUERY 2 --> KEEPS COMMON IN BOTH AND REMOVES DUPLICATES
-- -> 4. MINUS - QUERY 1 - QUERY 2 --> REMOVES DUPLICATES (PRESENT IN A NOT PRESENT IN B / VICE VERSA) 

-----------------------------------------------------

--  INTERSECT:

-- SELECT EMPLOYEE_ID, FIRST_NAME, SALARY
-- FROM HR.EMPLOYEES
-- WHERE DEPARTMENT_ID = 50

-- INTERSECT

-- SELECT EMPLOYEE_ID, FIRST_NAME, SALARY
-- FROM HR.EMPLOYEES
-- WHERE SALARY > 5000;


-- MINUS:

-- SELECT EMPLOYEE_ID, FIRST_NAME, SALARY
-- FROM HR.EMPLOYEES
-- WHERE DEPARTMENT_ID = 50

-- MINUS

-- SELECT EMPLOYEE_ID, FIRST_NAME, SALARY
-- FROM HR.EMPLOYEES
-- WHERE SALARY > 5000;

-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------

-- SDF(SYSTEM DEFINED FUNCTIONS):
--> 1. CHARACTER FUNCTIONS (UPPER, LOWER, TRIM, PAD ETC)
--> 2. NUMERIC FUNCTIONS (MIN, MAX, SUM, AVERAGE, DIVISION, MODULUS ETC)
--> 3. DATE FUNCTIONS (YEAR, MONTH, DAY, SECONDS, MINUITS, HOURS ETC)
--> 4. CONVERSION FUNCTIONS
--> 5. AGGRIGATE FUNCTIONS (UNDER GROUP BY COMES - SUM, MIN, MAX, AVERAGE ETC)
--> 6. ANALYTICAL FUNCTIONS (ROW NUMBER, RANK)
--> 7. NULL VALUE FUNCTIONS ( REPLACING NULL, DROPPING NULL, FILLING NULL VALUES ETC)

--------------------------------------------------------------------------------------------------

-- 1. CHARACTER FUNCTIONS (UPPER, LOWER, TRIM, PAD ETC)
-- 1) UPPER(): CONVERTS TEXT TO UPPERCASE
-- SELECT FIRST_NAME,
-- UPPER(FIRST_NAME) AS UPPER_NAME
-- FROM HR.EMPLOYEES;
-----------------------------------------------------------------------------------------------------
-- 2) LOWER(): CONVERTS TEXT TO LOWERCASE
-- SELECT FIRST_NAME,
-- LOWER(FIRST_NAME) AS LOWER_NAME
-- FROM HR. EMPLOYEES;
-----------------------------------------------------------------------------------------------------
-- 3) INITCAP(): CONVERTS FIRST LETTER OF EACH WORD TO UPPERCASE, REMAINING BECOMES LOWERCASE
-- SELECT FIRST_NAME,
-- INITCAP(FIRST_NAME) AS FORMATTED_NAME
-- FROM HR. EMPLOYEES;
-------------------------------------------------------------------------------------------------------
-- 4) LENGTH(): RETURNS THE NUBER OF CHARACTERS IN A STRING INCLUDING SPACES
-- SELECT FIRST_NAME,
-- LENGTH(FIRST_NAME) AS NAME_LENGTH 
-- FROM HR.EMPLOYEES
-------------------------------------------------------------------------------------------------------
-- 5) SUBSTR(): EXTRACTS A PART OF A STRING
-- SUBSTR(STRING, STARTING POSITION, NUMBER OF CHARACTERS)
-- SELECT FIRST_NAME,
-- SUBSTR(FIRST_NAME, 1, 3) AS FIRST_THREE_CHARACTERS
-- FROM HR.EMPLOYEES;

-- EXAMPLE:
-- STEVEN -> STE
-- NEENA -> NEE
-------------------------------------------------------------------------------------------------------
