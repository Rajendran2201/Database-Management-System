-- Sales Database: Monthly Sales Analysis
-- You are analysing a sales database to understand monthly sales performance.
-- Question 1: Write a SQL query to find the total sales amount for each month in the current year
select MONTH(sale_date),sum(sale_amount) from sales where year(sale_date) = year(curdate()) group by MONTH(sale_date) ;
-- Question 2: Calculate the average sales amount per transaction for the last quarter.
select transaction_id, avg(transaction_amount) from banks where MONTH(curdate()) - MONTH(transaction_date) <= 3 and MONTH(curdate()) - MONTH(transaction_date) >=0  group by transaction_id ;
-- Question 3: Identify the month with the highest sales and the corresponding sales amount.
select month(sale_date), sum(sale_amount) as total_sales from sales group by month(sale_date) order by total_sales desc limit 1;


//