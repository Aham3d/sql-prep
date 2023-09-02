-- to retrive rows which match a specific string patterns

SELECT *
FROM customers
WHERE last_name LIKE 'b%' 

-- % any number of characters
-- _ single character(can increase by the preference)

