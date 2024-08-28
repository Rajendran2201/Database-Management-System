-- Library Database: Book Loans
-- You are working with a library database to analyse book loan records.
-- Question 7: Write a SQL query to find the total number of books loaned out in the last year.
select * from library;
select count(loan_id) as total from library where timestampdiff(year, loan_date, curdate()) <= 1;
-- Question 8: Calculate the average number of books loaned out per member in the last month.
select avg(total) from( select count(book_id) as total from library where timestampdiff(month, loan_date, curdate()) <= 1 group by member_id) as subquery;
-- Question 9: Determine the book with the highest number of loans in the current semester.
select book_id, count(*) as total from library where timestampdiff(month, loan_date, curdate())<=3 group by book_id order by total desc limit 1;