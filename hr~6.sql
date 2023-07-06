--retrieving records with natural joins
SELECT department_id, department_name, location_id, city FROM departments NATURAL JOIN locations ;

--retrieving records with the using clause
SELECT employee_id, last_name, location_id, department_id FROM employees JOIN departments USING (department_id) ;

--retrieving records with the on clause
SELECT e.employee_id, e.last_name, e.department_id, d.department_id, d.location_id FROM employees e JOIN departments d
ON (e.department_id = d.department_id);

--creating three-way joins with the on clause
SELECT employee_id, city, department_name FROM employees e
JOIN departments d ON d.department_id = e.department_id JOIN locations l
ON d.location_id = l.location_id;

--applying additional conditions to a join
SELECT e.employee_id, e.last_name, e.department_id, d.department_id, d.location_id FROM employees e JOIN departments d
ON (e.department_id = d.department_id) WHERE e.manager_id = 149 ;

--self-joins using the on clause
SELECT worker.last_name emp, manager.last_name mgr FROM employees worker JOIN employees manager
ON (worker.manager_id = manager.employee_id);

--retrieving records with nonequijoins
SELECT e.last_name, e.salary, j.grade_level FROM employees e JOIN job_grades j
ON e.salary BETWEEN j.lowest_sal AND j.highest_sal;

--using left outer join (brings all the data from the main table)
SELECT e.last_name, e.department_id, d.department_name FROM employees e LEFT OUTER JOIN departments d
ON (e.department_id = d.department_id) ;

--using right outer join (brings all the data from the main table)
SELECT e.last_name, d.department_id, d.department_name FROM employees e RIGHT OUTER JOIN departments d
ON (e.department_id = d.department_id) ;

--using full outer join (brings all the data from both tables)
SELECT e.last_name, d.department_id, d.department_name FROM employees e FULL OUTER JOIN departments d
ON (e.department_id = d.department_id) ;

--creating cross joins ( produces the cross-product of two tables)
SELECT last_name, department_name FROM employees CROSS JOIN departments ;
