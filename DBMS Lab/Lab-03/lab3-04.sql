-- Human Resources Database: Employee Salaries
-- You are analysing an HR database to understand employee salaries.
select * from humanresource;
-- Question 10: Write a SQL query to find the total salary paid to employees in each department.
select department_name, sum(Salary) from humanresource group by department_name;
-- Question 11: Calculate the average salary of employees in the &quot;IT&quot; department.
select avg(salary)  as averageSalary from humanresource
 where department_name = "IT" group by department_name;
-- Question 12: Identify the department with the highest average salary.
select department_name, sum(Salary)  as total from humanresource
 group by department_name order by total desc limit 1;
