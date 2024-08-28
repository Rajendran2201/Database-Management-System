-- Sub Queries
-- Write a query to find all employees whose salary is above the average salary of the company.
select * from employee;
select employee_name, salary from employee 
where salary > (select avg(salary) from employee);
-- Find customers who have placed orders with a total amount greater than the average order amount.
select * from orderss;
select customer_id, order_amount from orderss 
where order_amount > (select avg(order_amount) from orderss);
-- Identify employees who do not manage any departments.
select employee_name from employee 
where employee_name not in (select manager_id from department);
-- List all products that have not been sold yet.
select * from product;
select * from orderss;
select product_name from product 
where product_id not in (select order_id from orderss);
-- Find the department with the highest average employee salary.
SELECT department_id, average 
FROM (
    SELECT department_id, AVG(salary) AS average 
    FROM employee 
    GROUP BY department_id
) AS depavg 
ORDER BY average DESC 
LIMIT 1;

//