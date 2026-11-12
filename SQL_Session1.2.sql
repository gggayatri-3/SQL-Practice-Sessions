-- SQL (Aggrietion Functions)

-- 1. Count employees in each department
-- SELECT DEPARTMENT_ID,
-- COUNT(*) AS EMPLOYEE_COUNT
-- FROM HR.employees
-- GROUP BY DEPARTMENT_ID;

-- 2. Find average salary in each department
-- SELECT DEPARTMENT_ID, AVG(SALARY) AS AVG_SALARY
-- FROM HR.employees
-- GROUP BY DEPARTMENT_ID;

-- 3. Find maximum salary in each deparment
-- SELECT DEPARTMENT_ID, MAX(SALARY) AS MAX_SALARY
-- FROM HR.employees
-- GROUP BY DEPARTMENT_ID;

-- 4. find minimum salary in each department
-- SELECT DEPARTMENT_ID, MIN(SALARY) AS MIN_SALARY
-- FROM HR.employees 
-- GROUP BY DEPARTMENT_ID;

-- 5.Find total salary paid by each department
-- SELECT DEPARTMENT_ID, SUM(SALARY) AS TOTAL_SALARY
-- FROM HR.employees
-- GROUP BY DEPARTMENT_ID;

-- 6. Count Employees for each job
-- SELECT JOB_ID, COUNT(*) AS EMPLOYEE_COUNT
-- FROM HR.EMPLOYEES
-- GROUP BY JOB_ID;




--  Aggrigetion at 2 levels

-- 1. count employees by department and job
-- SELECT DEPARTMENT_ID, JOB_ID, COUNT(*) AS EMPLOYEE_COUNT 
-- FROM HR.EMPLOYEES
-- GROUP BY DEPARTMENT_ID, JOB_ID;

-- 2. Average salary by department and job
-- SELECT DEPARTMENT_ID, JOB_ID, AVG(SALARY) AS AVG_SALARY
-- FROM HR.EMPLOYEES
-- GROUP BY DEPARTMENT_ID, JOB_ID;

-- 3.Total salary by department and job
-- SELECT DEPARTMENT_ID, JOB_ID, SUM(SALARY) AS TOTAL_SALARY
-- FROM HR.EMPLOYEES
-- GROUP BY DEPARTMENT_ID, JOB_ID;


-- HAVING: (POST AGGRIGETION FILTERING)

-- SELECT DEPARTMENT_ID, COUNT(*) AS EMPLOYEE_COUNT
-- FROM HR.EMPLOYEES
-- GROUP BY DEPARTMENT_ID
-- HAVING COUNT(*) > 5;

-- SELECT DEPARTMENT_ID, AVG(SALARY) AS AVG_SALARY
-- FROM HR.EMPLOYEES
-- GROUP BY DEPARTMENT_ID
-- HAVING AVG(SALARY) > 8000;

-- SELECT DEPARTMENT_ID, MIN(SALARY) AS MIN_SALARY
-- FROM HR.EMPLOYEES
-- GROUP BY DEPARTMENT_ID
-- HAVING MIN(SALARY) < 5000;


