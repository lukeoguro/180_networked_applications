SELECT DISTINCT c.customer_name AS "Customers who like Fries" FROM customers c
  JOIN orders o ON c.id = o.customer_id
  JOIN order_items i ON o.id = i.order_id
  JOIN products p ON i.product_id = p.id
  WHERE p.product_name = 'Fries';