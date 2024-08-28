-- Retail Database: Product Inventory
select * from retail;
-- You are managing a retail database and need to analyse product inventory.
-- Question 13: Write a SQL query to find the total number of products in each category.
select product_id, count(*) from retail group by product_id;
-- Question 14: Calculate the average price of products in the &quot;Electronics&quot; category.
select avg(price) from retail where category_name = "Electronics" group by category_id;
-- Question 15: Identify the category with the highest total inventory value.
select category_name, SUM(price*quantity_in_stock) as total from retail 
group by category_name order by total desc limit 1;
