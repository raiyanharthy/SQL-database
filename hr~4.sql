--using the avg and sum functions
SELECT AVG(salary), MAX(salary), MIN(salary), SUM(salary) FROM employees WHERE job_id LIKE '%REP%';

--using the min and max functions
SELECT MIN(hire_date), MAX(hire_date) FROM employees;

--using the count function
SELECT COUNT(*) FROM employees WHERE department_id = 50;

SELECT COUNT(commission_pct) FROM employees WHERE department_id = 80;

--using the distinct keyword
SELECT COUNT(DISTINCT department_id) FROM employees;

--group functions and null values
SELECT AVG(commission_pct) FROM employees;

SELECT AVG(NVL(commission_pct, 0)) FROM employees;

--using the group by clause
SELECT department_id, AVG(salary) FROM employees GROUP BY department_id ;

SELECT AVG(salary) FROM employees GROUP BY department_id ;

--using the group by clause on multiple columns
SELECT department_id, job_id, SUM(salary) FROM employees WHERE department_id > 40 GROUP BY department_id, job_id
ORDER BY department_id;

--illegal queries using group functions
SELECT department_id, COUNT(last_name) FROM employees;

SELECT department_id, job_id, COUNT(last_name) FROM employees GROUP BY department_id;

--using the having clause
SELECT department_id, MAX(salary) FROM employees
GROUP BY department_id HAVING MAX(salary)>10000 ;

SELECT job_id, SUM(salary) PAYROLL FROM employees
WHERE job_id NOT LIKE '%REP%' GROUP BY job_id HAVING SUM(salary) > 13000
ORDER BY SUM(salary);

--display the maximum average salary by nesting group functions
SELECT MAX(AVG(salary)) FROM employees GROUP BY department_id;

