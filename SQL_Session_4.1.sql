--------------------------------------------- DATE FUNCTIONS HANDS ON SESSION---------------------------------------------------
-- -- 1. Show the year each employee joined
-- SELECT EMPLOYEE_ID, FIRST_NAME, HIRE_DATE,
-- TO_CHAR(HIRE_DATE, 'YYYY') AS JOINING_YEAR
-- FROM HR.EMPLOYEES;

-- 2. Show the month number each employee joined
-- SELECT EMPLOYEE_ID, FIRST_NAME, HIRE_DATE,
-- TO_CHAR(HIRE_DATE, 'MM') AS HIRE_MONTH
-- FROM HR.EMPLOYEES;

-- 3. Show the name of the joining month
-- SELECT EMPLOYEE_ID, FIRST_NAME, HIRE_DATE,
-- TO_CHAR(HIRE_DATE, 'FMMONTH') AS JOINING_MONTH_NAME
-- FROM HR.EMPLOYEES;

-- 4. Show the day of the month each employee joined
-- SELECT FIRST_NAME, EMPLOYEE_ID, HIRE_DATE,
-- TO_CHAR(HIRE_DATE, 'DD') AS JOINING_DAY
-- FROM HR.EMPLOYEES;

-- 5. Show the weekday on which each employee joined
-- SELECT FIRST_NAME, EMPLOYEE_ID, HIRE_DATE,
-- TO_CHAR(HIRE_DATE, 'FMDAY') AS JOINING_WEEKDAY
-- FROM HR.EMPLOYEES;

-- 6. Find employees who joined in 2005
-- SELECT HIRE_DATE, FIRST_NAME, EMPLOYEE_ID
-- FROM HR.EMPLOYEES
-- WHERE TO_CHAR(HIRE_DATE, 'YYYY') = '2005';

-- 7. Find employees who joined in January
-- SELECT EMPLOYEE_ID, FIRST_NAME, HIRE_DATE
-- FROM HR.EMPLOYEES 
-- WHERE TO_CHAR(HIRE_DATE, 'FMMONTH') = 'JANUARY';   
-- OR
-- SELECT EMPLOYEE_ID, FIRST_NAME, HIRE_DATE
-- FROM HR.EMPLOYEES 
-- WHERE TO_CHAR(HIRE_DATE, 'MM') = '01';

-- 8. Find employees who joined on the first day of a month
-- SELECT EMPLOYEE_ID, FIRST_NAME, HIRE_DATE
-- FROM HR.EMPLOYEES 
-- WHERE TO_CHAR(HIRE_DATE, 'DD') = '01';

-- 9. Show employees hired in the current year
-- SELECT EMPLOYEE_ID, FIRST_NAME, HIRE_DATE
-- FROM HR.EMPLOYEES
-- WHERE TO_CHAR(HIRE_DATE, 'YYYY') = TO_CHAR(SYSDATE, 'YYYY');

-- 10. Show employees hired in the current month
-- SELECT EMPLOYEE_ID, FIRST_NAME, HIRE_DATE
-- FROM HR.EMPLOYEES
-- WHERE TO_CHAR(HIRE_DATE, 'MM') = TO_CHAR(SYSDATE, 'MM');

-- 11. Show each employee's first work anniversary
-- SELECT EMPLOYEE_ID, HIRE_DATE, FIRST_NAME,
-- ADD_MONTHS(HIRE_DATE, 12) AS FIRST_ANNIVERSARY
-- FROM HR.EMPLOYEES;

-- 12. Show each employee's fifth work anniversary
-- SELECT EMPLOYEE_ID, HIRE_DATE, FIRST_NAME,
-- ADD_MONTHS(HIRE_DATE, 60) AS FIFTH_ANNIVERSARY
-- FROM HR.EMPLOYEES;

-- 13. Show each employee's 3-month review date
-- SELECT EMPLOYEE_ID, HIRE_DATE, FIRST_NAME,
-- ADD_MONTHS(HIRE_DATE, 3 ) AS THIRD_MONTH_REVIEW_DATE
-- FROM HR.EMPLOYEES;

-- 14. Show each employee's 6-month probation completion date
-- SELECT EMPLOYEE_ID, HIRE_DATE, FIRST_NAME,
-- ADD_MONTHS(HIRE_DATE, 6) AS PROBATION_COMPLETION
-- FROM HR.EMPLOYEES;

-- 15. Show each employee's 30-day onboarding deadline
-- SELECT EMPLOYEE_ID, HIRE_DATE, FIRST_NAME,
-- HIRE_DATE + 30 AS ONBOARDING_DEADLINE
-- FROM HR.EMPLOYEES;

-- 16. Show each employee's 90-day review date
-- SELECT EMPLOYEE_ID, HIRE_DATE, FIRST_NAME,
-- HIRE_DATE + 90 AS NINTY_DAY_REVIEW
-- FROM HR.EMPLOYEES;

-- 17. Show the number of days since each employee joined
-- SELECT employee_id, first_name, hire_date,
--        SYSDATE - hire_date AS days_since_joining
-- FROM hr.employees;

-- 18. Show the number of months since each employee joined
-- SELECT employee_id, first_name, hire_date,
--        MONTHS_BETWEEN(SYSDATE, hire_date) AS months_since_joining
-- FROM hr.employees;

-- 19. Show the last day of each employee's joining month
-- SELECT employee_id, first_name, hire_date,
--        LAST_DAY(hire_date) AS joining_month_end
-- FROM hr.employees;

-- 20. Show the first Monday after each employee joined
-- SELECT employee_id, first_name, hire_date,
--        NEXT_DAY(hire_date, 'MONDAY') AS first_monday_after_joining
-- FROM hr.employees;