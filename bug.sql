SELECT * FROM employees WHERE department = 'Sales' AND salary > 100000; -- This query might cause an error if the 'salary' column is not of a numeric data type.  It would also fail if the 'department' column is not a string data type.  Always check your data types when performing comparisons. 

Another issue could be caused by incorrect quoting of strings, like this:
SELECT * FROM employees WHERE department = Sales; -- Missing quotes around Sales will cause an error. 

Also, be cautious of SQL injection vulnerabilities:
SELECT * FROM employees WHERE department = ""+departmentInput+""; -- Avoid directly concatenating user input into SQL queries. Use parameterized queries instead.