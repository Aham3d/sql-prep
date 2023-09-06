-- get the orders that are not shippped
SELECT *
FROM orders 
WHERE shipped_date IS NULL