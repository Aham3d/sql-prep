-- outer joins 
SELECT 
	c.customer_id,
    c.first_name,
	o.order_id
FROM customers c
LEFT JOIN orders o -- we only see customers who have orders, so if we want to see all the customers we use left join which displays other customers from the customers table
	ON c.customer_id = o.customer_id
order BY c.customer_id
