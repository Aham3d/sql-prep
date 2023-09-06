SELECT *
FROM customers
-- WHERE last_name LIKE '%field%' -- can also be done with REGEX
-- WHERE last_name REGEXP 'field' -- does the same  
-- WHERE last_name REGEXP '^field' -- should start with field
-- WHERE last_name	REGEXP 'field$' -- should end with field
-- WHERE last_name regexp 'field|mac' -- which contains anyone of it(OR)
WHERE last_name regexp '[gim]e' -- contains OR or ie OR me and viceversa 
								-- to match any single characters listed in the brackets





