SELECT burger, side, drink FROM orders
WHERE side IS NOT NULL
AND drink IS NOT NULL;