-- Banking Database: Customer Transactions
-- You are analysing a banking database to understand customer transactions.
-- Question 4: Write a SQL query to find the total amount of deposits made by each customer in the
-- last six months.
select * from banks;
select customer_id, sum(transaction_amount) as total from banks
where transaction_type = "deposit" 
AND TIMESTAMPDIFF(MONTH, transaction_date, CURDATE()) <= 6
AND TIMESTAMPDIFF(MONTH, transaction_date, CURDATE()) >= 0 
group by customer_id;
-- Question 5: Calculate the average transaction amount for withdrawals in the current month.
select avg(transaction_amount) from banks
 where transaction_type = "withdrawal" and month(transaction_date) = month(curdate());
-- Question 6: Determine the customer with the highest total transaction amount in the last year.
select customer_id, sum(transaction_amount) as total from banks
 group by customer_id order by total desc limit 1;

// 