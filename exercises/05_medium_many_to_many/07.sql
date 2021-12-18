SELECT SUM(price) FROM services
INNER JOIN customers_services AS cs ON services.id = cs.service_id;
