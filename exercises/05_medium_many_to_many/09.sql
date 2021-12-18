SELECT SUM(price) FROM services
INNER JOIN customers_services AS cs ON services.id = cs.service_id
WHERE price > 100.0;

SELECT SUM(price) FROM services
CROSS JOIN customers
WHERE price > 100;