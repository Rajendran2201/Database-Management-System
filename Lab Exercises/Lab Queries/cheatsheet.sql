-- DISTINCT: returns only the unique values from the specified column
select distinct product_id from sales;

SELECT COUNT(DISTINCT product_id) AS total
FROM sales;

-- ORDER BY: used to sort the output 
select * from sales order by sale_amount desc;

-- WILDCARD CHARACTERS: use d to manipulate the data 
select * from sales where sale_amount like "4%";
select * from sales where sale_date like "2024-__-15";
select * from sales where sale_date like "%03%";
-- return all two and more digit sale amounts 
select * from sales where sale_amount like "__%";
-- return only two digit sale amounts 
select * from sales where sale_amount like "__";

-- Alternative method: Usage of IN
select * from sales where sale_amount in  (40, 20, 30);
-- BETWEEEN clause
select * from sales where sale_amount between 20 and 60;

-- Aliasing
select sale_amount as "Amount sold" from sales;




