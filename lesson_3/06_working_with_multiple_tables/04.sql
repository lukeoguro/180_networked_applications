SELECT ROUND( COUNT(DISTINCT tickets.customer_id)
            / COUNT(DISTINCT customers.id)::decimal * 100, 2 ) AS percent
FROM tickets
RIGHT OUTER JOIN customers
ON tickets.customer_id = customers.id;