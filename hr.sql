--view all columns in the table departments
SELECT * FROM departments;
--viewing the selected columns from the table
SELECT department_id, location_id FROM departments;
--viewing the selected columns with a new column using arithematic operators
SELECT last_name, salary, salary + 300 FROM employees;
--viewing the selected columns with a new column using  operator precedence
SELECT last_name, salary, 12*salary+100 FROM employees;
SELECT last_name, salary, 12*(salary+100) FROM employees;
--defining a null value
SELECT last_name, job_id, salary, commission_pct FROM employees;
--defining a null value in arithematic expressions
SELECT last_name, 12*salary*commission_pct FROM employees;
--using column alias
SELECT last_name AS name, commission_pct comm FROM employees;
SELECT last_name "Name" , salary*12 "Annual Salary" FROM employees;
--using concatenation operator
SELECT last_name||job_id AS "Employees" FROM employees;
--using literal character string
SELECT last_name ||' is a '||job_id AS "Employee Details" FROM employees;
--using alternative quote operator
SELECT department_name || q'[ Department's Manager Id: ]' || manager_id AS "Department and Manager" FROM departments;
--duplicated rows
SELECT department_id FROM employees;
SELECT DISTINCT department_id FROM employees;
--describing the table structure
DESCRIBE employees


