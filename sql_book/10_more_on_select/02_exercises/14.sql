SELECT side, count(id) FROM orders
WHERE side = 'Fries' OR side = 'Onion Rings'
GROUP BY side;