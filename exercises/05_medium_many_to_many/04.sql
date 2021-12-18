SELECT description FROM customers_services AS cs
RIGHT OUTER JOIN services AS s ON cs.service_id = s.id
WHERE cs.customer_id IS NULL;