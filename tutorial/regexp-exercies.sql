-- get customers whose
    SELECT *
	FROM customers
	-- first names are ELKA or AMBUR
	-- WHERE first_name REGEXP 'ELKA|AMBUR'
    -- last name end with EY OR ON
    -- WHERE last_name REGEXP 'EY$|ON$'
    -- last names start with MY or contains SE
    WHERE last_name REGEXP '^MY|SE'
    -- last names names contain B followed by R or U
    -- WHERE last_name REGEXP 'B[RU]'

