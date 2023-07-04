--using the where clause for specification
SELECT employee_id, last_name, job_id, department_id FROM employees WHERE department_id = 90 ;
--using character strings and dates
SELECT last_name, job_id, department_id FROM employees WHERE last_name = 'Whalen' ;
SELECT last_name FROM employees WHERE hire_date = '17-FEB-96' ;
--using comparison operators
SELECT last_name, salary FROM employees WHERE salary <= 3000 ;
--using between operator for range conditions (_ between _)
SELECT last_name, salary FROM employees WHERE salary BETWEEN 2500 AND 3500 ;
--using the in operator for membership conditions
SELECT employee_id, last_name, salary, manager_id FROM employees WHERE manager_id IN (100, 101, 201) ;
--using the like operator for pattern matching
SELECT first_name FROM employees WHERE first_name LIKE 'S%' ;
--combining wildcard characters
SELECT last_name FROM employees WHERE last_name LIKE '_o%' ;
--using null condition
SELECT last_name, manager_id FROM employees WHERE manager_id IS NULL ;
--using the and operator
SELECT employee_id, last_name, job_id, salary FROM employees WHERE salary >= 10000 AND job_id LIKE '%MAN%' ;
--using the or operator
SELECT employee_id, last_name, job_id, salary FROM employees WHERE salary >= 10000 OR job_id LIKE '%MAN%' ;
--using the not operator
SELECT last_name, job_id FROM employees WHERE job_id NOT IN ('IT_PROG', 'ST_CLERK', 'SA_REP') ;
--using the rules of precedence
SELECT last_name, job_id, salary FROM employees WHERE job_id = 'SA_REP' OR job_id = 'AD_PRES' AND salary > 15000;
SELECT last_name, job_id, salary FROM employees WHERE (job_id = 'SA_REP' OR job_id = 'AD_PRES') AND salary > 15000;
--using the order by clause
SELECT last_name, job_id, department_id, hire_date FROM employees ORDER BY hire_date ;
--using the order by clause in sorting (descending)
SELECT last_name, job_id, department_id, hire_date FROM employees ORDER BY hire_date DESC ; 
--using the order by clause in sorting (column alias)
SELECT employee_id, last_name, salary*12 annsal FROM employees ORDER BY annsal ;
--using the order by clause in sorting (column's numeric position)
SELECT last_name, job_id, department_id, hire_date FROM employees ORDER BY 3;
--using the order by clause in sorting (multiple columns)
SELECT last_name, department_id, salary FROM employees ORDER BY department_id, salary DESC;
--using a variable prefixed with an (&) to ask the user for a value
SELECT employee_id, last_name, salary, department_id FROM employees WHERE employee_id = &employee_num ;
--using single quotation marks for date and character values
SELECT last_name, department_id, salary*12 FROM employees WHERE job_id = '&job_title' ;
--using (&&) if you want to reuse the variable value without asking the user each time
SELECT employee_id, last_name, job_id, &&column_name FROM employees ORDER BY &column_name ;
--using the DEFINE command to create and assign a value to a variable, and using the UNDEFINE command to remove it
DEFINE employee_num = 200 SELECT employee_id, last_name, salary, department_id FROM employees WHERE employee_id = &employee_num ; UNDEFINE employee_num
--using the VERIFY command to toggle the display of the substitution variable
SET VERIFY ON SELECT employee_id, last_name, salary FROM employees WHERE employee_id = &employee_num;


