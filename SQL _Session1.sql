-- SQL Swssion 1 :
-- 1. Display All employee records
-- SELECT * FROM HR.employees;

-- 2. Display Employee first name
-- SELECT FIRST_NAME
-- FROM HR.EMPLOYEES;

-- 3. Display FIRST_NAME, LAST_NAME
-- SELECT FIRST_NAME, LAST_NAME FROM HR.employees;

-- 5. Display employee earning more than 5000
-- SELECT *
-- FROM HR. employees
-- WHERE SALARY > 5000;

-- 6. Display employees earning less than 10000
-- Select *
-- FROM HR. employees 
-- WHERE SALARY < 10000;

-- 7.Display employees earning exactly 6000
-- SELECT * 
-- FROM HR. employees 
-- WHERE SALARY = 6000;

-- 8.Display employees from department 50
-- SELECT * 
-- FROM HR.EMPLOYEES 
-- WHERE DEPARTMENT_ID = 50;

-- 9. Display employees with job ID SA_REP
-- SELECT * 
-- FROM HR.employees 
-- WHERE JOB_ID = 'SA_REP';

-- 10. Display employees whose first name is Steven
SELECT *
FROM HR.employees 
WHERE FIRST_NAME = 'Steven';
