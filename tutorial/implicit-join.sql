-- implicit JOIN syntax


-- example of explicit JOIN syntax, as we have been using
-- SELECT *
-- FROM orders o
-- JOIN customers c
-- 	ON o.customer_id = c.customer_id
    
-- this is implicit JOIN syntax, does the same thing as the above
SELECT *
FROM orders o, customers c
WHERE o.customer_id = c.customer_id
/*
 this is not suggested
 because if we forgot to type the where clause we'll get cross joints 
 every record in the order table joins with every record in the customers table 
*/