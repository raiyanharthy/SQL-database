--using case conversion function
SELECT employee_id, last_name, department_id FROM employees WHERE last_name = 'higgins';
SELECT employee_id, last_name, department_id FROM employees WHERE LOWER(last_name) = 'higgins';
--using character manipulation functions
SELECT employee_id, CONCAT(first_name, last_name) NAME, job_id, LENGTH (last_name), INSTR(last_name, 'a') "Contains 'a'?" FROM employees WHERE SUBSTR(job_id, 4) = 'REP';
--using the round function (to a higher/lower number)
SELECT ROUND(45.923,2), ROUND(45.923,0), ROUND(45.923,-1) FROM DUAL;
--using the trunc function
SELECT TRUNC(45.923,2), TRUNC(45.923), TRUNC(45.923,-1) FROM DUAL;
--using the mod function
SELECT last_name, salary, MOD(salary, 5000) FROM employees WHERE job_id = 'SA_REP';
--using the date function by specifying only the last two digits of the year
SELECT last_name, hire_date FROM employees WHERE hire_date < '01-FEB-88 ';
--using sysdate that returns the date and time
SELECT sysdate FROM dual;
--using sysdate with arithematic operators
SELECT last_name, (SYSDATE-hire_date)/7 AS WEEKS FROM employees WHERE department_id = 90;
