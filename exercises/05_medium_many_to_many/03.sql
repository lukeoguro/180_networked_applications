SELECT c.* FROM customers AS c
LEFT OUTER JOIN customers_services AS cs ON c.id = cs.customer_id
WHERE cs.customer_id IS NULL;

SELECT c.*, s.* FROM customers AS c
LEFT JOIN customers_services AS cs ON c.id = cs.customer_id
FULL JOIN services AS s ON cs.service_id = s.id
WHERE cs.id IS NULL;