select name, STRING_AGG(description, ', ') AS services from customers
LEFT OUTER JOIN customers_services AS cs ON customers.id = cs.customer_id
LEFT OUTER JOIN services ON cs.service_id = services.id
GROUP BY customers.id;
