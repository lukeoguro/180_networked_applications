SELECT burger, side, drink FROM orders
WHERE side <> 'Fries'
OR side IS NULL;