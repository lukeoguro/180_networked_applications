SELECT c.id, c.email, COUNT(DISTINCT t.event_id)
FROM customers AS c
INNER JOIN tickets AS t ON c.id = t.customer_id
GROUP BY c.id
HAVING COUNT(DISTINCT t.event_id) = 3;