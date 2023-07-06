--using a subquery
SELECT last_name, salary FROM employees
WHERE salary > (SELECT salary FROM employees WHERE last_name = 'Abel');

--executing single-row subqueries
SELECT last_name, job_id, salary FROM employees WHERE job_id =
(SELECT job_id FROM employees WHERE last_name = ‘Taylor’)
AND salary > (SELECT salary FROM employees WHERE last_name = ‘Taylor’);

--using group functions in a subquery
SELECT last_name, job_id, salary FROM employees WHERE salary =
(SELECT MIN(salary) FROM employees);

--the having clause with subqueries
SELECT department_id, MIN(salary) FROM employees GROUP BY department_id HAVING MIN(salary) >
(SELECT MIN(salary) FROM employees WHERE department_id = 50);

--using the any operator in multiple-row subqueries
SELECT employee_id, last_name, job_id, salary FROM employees WHERE salary < ANY
(SELECT salary FROM employees WHERE job_id = 'IT_PROG') AND job_id <> 'IT_PROG';

--using the all operator in multiple-row subqueries
SELECT employee_id, last_name, job_id, salary FROM employees WHERE salary < ALL
(SELECT salary FROM employees WHERE job_id = 'IT_PROG') AND job_id <> 'IT_PROG';
