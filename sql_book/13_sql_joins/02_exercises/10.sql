SELECT sum(p.product_cost)
FROM customers AS c JOIN orders as o
ON c.id = o.customer_id
JOIN order_items AS i
ON o.id = i.order_id
JOIN products AS p
ON i.product_id = p.id
WHERE customer_name = 'Natasha O''Shea';
