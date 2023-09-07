-- do a cross join between shippers and products
--	using the implicit syntax
-- and then using the explicit syntax

-- implicit syntax
select 
	s.name AS shipper,
    p.name AS product
from shippers s, products p
ORDER BY s.name

-- explicit syntax
SELECT
	s.name AS shipper,
    p.name AS product
FROM shippers s
CROSS JOIN products p
ORDER BY s.name