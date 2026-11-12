-------------------------------- DATE AND TIME RELATED SQL FUNCTIONS-----------------------------------------------
-- GENERAL DATE FORMAT -> YYYY-MM-DD
-- GENERAL TIME STAMP FORMAT -> HH:MM:SS:MS

-- EXAMPLE: 
-- SELECT SYSDATE FROM DUAL;

-- SELECT EMPLOYEE_ID, FIRST_NAME, HIRE_DATE, SYSDATE
-- FROM HR. EMPLOYEES;

-- TO OBTAIN THE EXACT WORKING EXPERIENCE OF ANY EMPLOYEE DIVIDE THE ABOVE COLUMN WITH FOLLOWING: FOR MONTHS -> DIVIDE BY 12, FOR YEARS -> DIVIDE BY 365
-- TO OBTAIN THE WORK EXPERIENCE IN INTIGER VALUE YOU CAN ALWAYS USE FUNCTIONS LIKE ROUND(), CEIL(), FLOOR() ETC.
-------------------------------------------------------------------------------------------------------------------------------------------------------------
-- TIME :
-- EXAMPLE :
-- SELECT SYSTIMESTAMP
-- FROM DUAL;
-------------------------------------------------------------------------------------------------------------------------------------------------------------
-- DATE FORMAT : YYYY-MM-DD
-- DATE FUNCTIONS:
-- (1) ADD_MONTHS:
-- EX:
-- 1)
-- SELECT ADD_MONTHS(SYSDATE, 3) FROM DUAL;

-- 2)
-- SELECT HIRE_DATE, ADD_MONTHS(HIRE_DATE, 3)
-- FROM HR.EMPLOYEES;

-- SUBSTRACTING THE MONTH:
-- EXAMPLE:
-- 1)
-- SUBSTRACTING THE MONTHS FROM HIRE DATE:
-- SELECT HIRE_DATE, ADD_MONTHS(HIRE_DATE, -4)
-- FROM HR.EMPLOYEES;

-- CALCULATING THE LAST DAY OF PROBATION PERIOD( 6 MONTHS ENDING DATE ) FROM HIRE DATE
-- SELECT FIRST_NAME, HIRE_DATE,
-- ADD_MONTHS(HIRE_DATE, 6) AS AFTER_6_MONTHS
-- FROM HR.EMPLOYEES;
---------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- (2) MONTHS_BETWEEN -> GIVES YOU THE NUMBER OF MONTHS BETWEEN TWO TIMESTAMPS
-- EXAMPLE:
-- 1)
-- SELECT MONTHS_BETWEEN( DATE '2026-09-24', DATE '2026-01-24') FROM DUAL;

-- 2) FIND(EXPERIENCE IN TERMS OF MONTHS) I.E ->THE NUMBER OF DAYS AN EMPLOYEE HAS WORKED FROM HIRE DATE TILL TODAY'S DATE
-- USED CEIL() TO GET ROUND OFF NUMBER FIGURE
-- SELECT FIRST_NAME, HIRE_DATE,
-- CEIL(MONTHS_BETWEEN(SYSDATE,HIRE_DATE)) AS MONTHS_WORKED
-- FROM HR.EMPLOYEES;
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- (3) LAST_DAY --> GIVES YOU LAST DATE OF THE MONTH
-- EXAMPLE:
-- 1)
-- SELECT LAST_DAY(SYSDATE) FROM DUAL;

-- 2) FIND LAST DAY OF EMPLOYEES JOINING MONTH
-- SELECT FIRST_NAME, HIRE_DATE,
-- LAST_DAY(HIRE_DATE) AS MONTH_END
-- FROM HR.EMPLOYEES;
------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- 4) NEXT_DAY --> GIVES YOU THE IMMEDIATE NEXT DATE FROM CURRENT DATE
-- EXAMPLE:
-- 1)
-- FIND NEXT MONDAY:
-- SELECT NEXT_DAY(SYSDATE, 'MONDAY')
-- FROM DUAL;

-- 2)
-- FIND NEXT FRIDAY:
-- SELECT NEXT_DAY(SYSDATE, 'FRIDAY')
-- FROM DUAL;

-- 3) 
-- SELECT FIRST_NAME, HIRE_DATE,
-- NEXT_DAY(HIRE_DATE, 'MONDAY')
-- AS NEXT_MONDAY
-- FROM HR.EMPLOYEES;
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- (5) EXTRACT --> EXTRACT(YEAR/MONTH/DAY/HOURS/MINUITS/SECONDS/MILLISECONDS FROM SYSDATE)
