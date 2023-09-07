DELETE FROM invoices
WHERE client_id IN (
	SELECT *
	FROM clients 
	WHERE name = 'Myworks'
)