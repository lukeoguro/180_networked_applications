SELECT name, (SELECT count(bids.id) FROM bids WHERE bids.item_id = items.id)
FROM items;

SELECT name, COUNT(bids.id) FROM items
LEFT OUTER JOIN bids ON items.id = bids.item_id
GROUP BY items.id;