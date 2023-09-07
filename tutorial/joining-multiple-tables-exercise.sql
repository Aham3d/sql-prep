-- joining payment methods tables and clients table 
-- and produce a report that shows the payment with more details such as name of the client and payment method


USE sql_invoicing; 

-- SELECT 
-- 	p.client_id,
--     c.name, 
--     pm.name
SELECT 
	p.date, 
    p.invoice_id,
    p.amount,
    c.name, 
    pm.name AS paymend_method
FROM payments p
JOIN clients c 
	ON p.client_id = c.client_id
JOIN payment_methods pm 
	ON p.payment_method = pm.payment_method_id
    
