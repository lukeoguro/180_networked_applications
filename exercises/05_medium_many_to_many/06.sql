SELECT description, COUNT(cs.customer_id) FROM services
INNER JOIN customers_services AS cs ON services.id = cs.service_id
GROUP BY services.id
HAVING COUNT(cs.customer_id) >= 3;