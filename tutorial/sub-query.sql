-- using subqueries in updates
use sql_invoicing; 
UPDATE invoices
SET 
	payment_total = invoice_total * 0.5, 
	payment_date = due_date
-- WHERE client_id = ( -- subquery - using the same query from update.sql - gives 3 which is same as before
-- 	SELECT client_id
--     FROM clients 
--     WHERE name = 'Myworks'
-- )

-- to update multiple clients 
WHERE client_id IN ( -- as this query returns multiple records we have to use IN instead =
	SELECT client_id
    FROM clients
    WHERE state IN ('CA', 'NY')
)