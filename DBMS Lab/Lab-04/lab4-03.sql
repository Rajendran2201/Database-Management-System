-- List all departments along with the count of employees in each department.
select
	d.department_name,
    IFNULL(c.total, 0) AS total
FROM department d
LEFT JOIN 
	(select department_id, count(*) as total from employee group by department_id) c
ON d.department_id = c.department_id;

-- Retrieve the details of employees who earn more than the average salary in their respective departments.
select 
	e.employee_id,
    e.employee_name,
    d.department_name
FROM employee e
JOIN department d
ON e.department_id = d.department_id
WHERE 
	e.salary > (select avg(salary) from employee e2 where e2.department_id = e.department_id);
    
    