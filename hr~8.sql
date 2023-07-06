--using the union operator
SELECT employee_id, job_id FROM employees
UNION
SELECT employee_id, job_id FROM job_history;

--using the union all operator
SELECT employee_id, job_id, department_id FROM employees
UNION ALL
SELECT employee_id, job_id, department_id FROM job_history ORDER BY employee_id;

--using the intersect operator
SELECT employee_id, job_id FROM employees
INTERSECT
SELECT employee_id, job_id FROM job_history;

--using the minus operator
SELECT employee_id FROM employees
MINUS
SELECT employee_id FROM job_history;

--matching the select statements
SELECT location_id, department_name "Department", TO_CHAR(NULL) "Warehouse location" FROM departments
UNION
SELECT location_id, TO_CHAR(NULL) "Department", state_province FROM locations;

SELECT employee_id, job_id,salary FROM employees
UNION
SELECT employee_id, job_id,0 FROM job_history;

