--------------------------------NUMBER BASED SQL FUNCTIONS-----------------------
-- 1. CEIL(): ROUNDING OFF THE NUMBER TO THE HIGHER SIDE
-- EXAMPLES :
-- 1) 
-- SELECT CEIL(10.2) FROM DUAL;

-- 2) 
-- SELECT CEIL(10.8) FROM DUAL;

-- 3)
-- SELECT CEIL(5.01) FROM DUAL;

-- 4) 
-- SELECT CEIL(7.0) FROM DUAL;

-- 5)
-- SELECT CEIL(-10.8) FROM DUAL;
-----------------------------------------------------------------------------------------------------

-- 2. FLOOR(): ROUNDING OFF THE NUMBER TO THE LOWER SIDE
-- EXAMPLES :
-- 1)
-- SELECT FLOOR(10.2) FROM DUAL;

-- 2)
-- SELECT FLOOR(10.8) FROM DUAL;

-- 3) 
-- SELECT FLOOR(5.99) FROM DUAL;

-- 4)
-- SELECT FLOOR(7.0) FROM DUAL;

-- 5)
-- SELECT FLOOR(-10.2) FROM DUAL;
------------------------------------------------------------------------------------------------------------

-- 3. ABS() : ALL THE ABSOLUTE VALUES I.E.-> ANY NEGATIVE VALUE IS CONVERTED INTO POSITIVE VALUE
-- EXAMPLES :
-- 1) 
-- SELECT ABS(-500) FROM DUAL;

-- 2)
-- SELECT ABS(500) FROM DUAL;

-- 3)
-- SELECT ABS(-25.75) FROM DUAL;

-- 4)
-- SELECT ABS(0) FROM DUAL;

-- 5)
-- SELECT ABS(-9999) FROM DUAL;
---------------------------------------------------------------------------------------------------------

-- 4. MOD() : RETURNS THE REMINDER OF THE DIVISION OF TWO NUMBERS
-- EXAMPLES:
-- 1)
-- SELECT MOD(10, 3) FROM DUAL;
-- 2)
-- SELECT MOD(20, 4) FROM DUAL;
-- 3)
-- SELECT MOD(25, 6) FROM DUAL;
-- 4)
-- SELECT MOD(100, 30) FROM DUAL;
-- 50
-- SELECT MOD(17, 5) FROM DUAL;
---------------------------------------------------------------------------------------------------------

-- 5. POWER() : 
-- EXAMPLES :
-- 1) 
-- SELECT POWER(2, 3) FROM DUAL;
-- 2)
-- SELECT POWER(5, 2) FROM DUAL;
-- 3)
-- SELECT POWER(10, 3) FROM DUAL;
-- 4)
-- SELECT POWER(3, 4) FROM DUAL;
-- 5)
-- SELECT POWER(9, 0) FROM DUAL;
-- 6)
-- SELECT POWER(2, 1/2) FROM DUAL; -----> SQUARE ROOT
--------------------------------------------------------------------------------------

-- 6. SQRT(): SQUARE ROOT OF THE NUMBER
-- EXAMPLES :
-- 1)
-- SELECT SQRT(25) FROM DUAL;
-- 2)
-- SELECT SQRT(64) FROM DUAL;
-- 3)
-- SELECT SQRT(100) FROM DUAL;
-- 4)
-- SELECT SQRT(144) FROM DUAL;
-- 5)
-- SELECT SQRT(2) FROM DUAL;
----------------------------------------------------------------------------------------

-- 7. LOG() : BASE 10
-- EXAMPLES:
-- 1)
-- SELECT LOG(10, 100) FROM DUAL;
-- 2)
-- SELECT LOG(10, 1000) FROM DUAL;
-- 3)
-- SELECT LOG(2, 8) FROM DUAL;
-- 4)
-- SELECT LOG(2, 16) FROM DUAL;
-- 5) 
-- SELECT LOG(5, 25) FROM DUAL;
---------------------------------------------------------------------------------------------------

-- 8. LN() : E TO THE POWER
-- EXAMPLES :
-- 1)
-- SELECT LN(1) FROM DUAL;
-- 2)
-- SELECT LN(2) FROM DUAL;
-- 3)
-- SELECT LN(10) FROM DUAL;
-- 4)
-- SELECT LN(100) FROM DUAL;











