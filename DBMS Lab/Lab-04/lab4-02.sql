-- Joins
-- Join the "Orders" and "Customers" tables to retrieve the order details along with customer information.
 select
	c.customer_id,
    c.customer_name, 
    o.order_id, 
    o.order_amount, 
    c.email 
FROM customer c
JOIN orderss o
ON c.customer_id = o.customer_id;
 

-- Combine the "Employees" and "Departments" tables to display employee details along with their respective department names.

 select 
	e.employee_id,
    e.employee_name,
    d.department_name,
    e.salary
FROM employee e
JOIN department d
ON e.department_id = d.department_id;
 
-- Join the "Products" and "Sales" tables to get a list of products along with their sales information.
select 
	p.product_id, 
    p.product_name,
    s.quantity_sold, 
    s.sale_amount,
    s.sale_Date
from product p
JOIN sales s
on p.product_id = s.product_id;
-- Retrieve all orders placed by customers with order amount greater
--  than 100 by joining the "Orders" and "Customers" tables.
select 
	c.customer_id,
    c.customer_name,
    o.order_amount
FROM customer c
JOIN orderss o
ON c.customer_id = o.customer_id
WHERE o.order_amount >100;
-- Join the "Employees" and "Managers" tables to find out the managers of each department.
select 
	d.department_id,
    d.department_name,
    e.employee_name
FROM department d
JOIN employee e
ON d.manager_id = e.employee_id;
