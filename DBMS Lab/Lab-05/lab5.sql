-- Write a query to find the total sales amount for each product category from the "Sales" table.
select product_id,  sum(Sale_amount) from sales group by product_id;
-- Calculate the average salary of employees in each department from the "Employees" table
select department_id, avg(salary) from employee group by department_id;
-- Extract the year from the order date and find the total sales amount for each year from the "Sales" table.
select year(sale_date), sum(sale_amount) from sales group by year(sale_date);
-- Calculate the number of orders placed by each customer from the "Orders" table.
select customer_id, count(*) from orderss group by customer_id;
-- Find the average salary of employees in each department for the year 2024 from the "Employees" table.
select department_id, avg(salary) from employee group by department_id;
-- 1.Find the top 5 highest-selling products along with their categories for each year from the "Sales" table.
select product_id, sum(quantity_sold) as total from sales group by product_id  order by total desc limit 5;
-- Group the sales data by product category and month-year combination
-- and calculate the total sales amount for each category-month pair from the "Sales" table.


