-- Solution: Always explicitly check your data types and use parameterized queries. 

-- Corrected query with explicit type checking (assuming salary is a numeric type and department is a string type):
SELECT * FROM employees WHERE CAST(department AS VARCHAR(255)) = 'Sales' AND CAST(salary AS DECIMAL(10,2)) > 100000;

-- Using parameterized queries to prevent SQL injection (example using Python with a database library like psycopg2):
import psycopg2

conn = psycopg2.connect("dbname=mydatabase user=myuser password=mypassword")
cur = conn.cursor()

department = 'Sales'
salary_threshold = 100000

cur.execute("SELECT * FROM employees WHERE department = %s AND salary > %s", (department, salary_threshold))

results = cur.fetchall()

cur.close()
conn.close()

-- This parameterized approach prevents SQL injection and handles data type conversions securely within the database library.