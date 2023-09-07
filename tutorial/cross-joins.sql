-- we use cross joins to combine every record from one table to every record from another table 
SELECT 
	c.first_name, 
    p.name AS products
FROM customers c 
CROSS JOIN products p
ORDER BY c.first_name
