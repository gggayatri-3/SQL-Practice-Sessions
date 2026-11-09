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
-----------------------------STRING BASED FUNCTIONS--------------------------------------------------------
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
-- 6)INSTR(): FINDS THE POSITION OF A CHARACTER/STRING INSIDE ANOTHER STRING
-- SELECT FIRST_NAME,
-- INSTR(FIRST_NAME, 'a') AS POSITION_OF_A
-- FROM HR.EMPLOYEES;

-- EXAMPLE:
-- Diana -> 3
-- position startsfrom 1
-- if character is not found, Oracle returns 0
-------------------------------------------------------------------------------------------------------
-- 7) CONCAT(): COMBINES TWO STRINGS
-- SELECT FIRST_NAME,
-- CONCAT(FIRST_NAME, LAST_NAME) AS FULL_NAME
-- FROM HR.EMPLOYEES;
--------------------------------------------------------------------------------------------------------
-- 8) || --> PIPELINE SYMBOL --> CONCATINATION OPERATION
-- COMMONLY USED INSTEAD OF CONCAT()
-- CAN COMBINE MULTIPLE STRINGS

-- SELECT FIRST_NAME,
--        LAST_NAME,
--        FIRST_NAME || ' ' || LAST_NAME AS FULL_NAME
--        FROM HR.EMPLOYEES;

-- EXAMPLE:
-- STEVEN KING
---------------------------------------------------------------------------------------------------------
-- 9) TRIM(): REMOVES UNWANTED SPACES/CHARACTERS
-- FROM THE BEGINNING AND THE END OF THE STRING
-- SELECT TRIM('   ORACLE SQL   ') AS RESULT
-- FROM DUAL;

-- RESULT: ORACLE SQL
----------------------------------------------------------------------------------------------------------
-- 10) LTRRIM(): REMOVES SPACES CHARACTERS FROM THE LEFT SIDE
-- SELECT LTRIM('   ORACLE SQL') AS RESULT 
-- FROM DUAL;
-- RESULT: ORACLE SQL
----------------------------------------------------------------------------------------------------------
-- 11) RTRIM() : REMOVES SPACES/HARACTERS FROM RIGHT SIDE
-- SELECT RTRIM('ORACLE SQL   ') 
-- FROM DUAL;
-- RESULT: ORACLE SQL
----------------------------------------------------------------------------------------------------------
-- 12) LPAD(): ADDS CHARACTER TO THE LEFT SIDE, UNTIL THE REQUIRED LENGTH IS REACHED.
-- SELECT FIRST_NAME,
--        LPAD(FIRST_NAME, 15, '*') AS PADDED_NAME
-- FROM HR.EMPLOYEES;
-- EXAMPLE: **********STEVEN
----------------------------------------------------------------------------------------------------------
-- 13) RPAD(): ADDS CHARACTERS TO THE RIGHT SIDE UNTIL THE REQUIRED LENGTH IS REACHED
-- SELECT FIRST_NAME,
--     RPAD(FIRST_NAME, 15, '*') AS PADDED_NAME
-- FROM HR.EMPLOYEES;
-- EXAMPLE : STEVEN**********
----------------------------------------------------------------------------------------------------------
-- 14) REPLACE(): REPLACES ONE STRING WITH ANOTHER STRING
-- SELECT FIRST_NAME,
-- REPLACE(FIRST_NAME, 'A', '@') AS MODIFIED_NAME
-- FROM HR.EMPLOYEES;
-- EXAMPLE : @M@N
----------------------------------------------------------------------------------------------------------
