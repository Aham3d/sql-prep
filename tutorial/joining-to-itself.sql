-- joining table to itself

USE sql_hr; 

-- SELECT *
SELECT e.employee_id, e.first_name, m.first_name AS manager
FROM employees e
JOIN employees m 
	ON e.reports_to = m.employee_id

-- it is same as joining to different table 
-- the only different is we have to use different alias. 
-- and we have to prefix each column with respective alias