SELECT p.product_name, count(i.id) FROM order_items i
  JOIN products p ON i.product_id = p.id
  GROUP BY p.product_name
  ORDER BY p. product_name ASC;