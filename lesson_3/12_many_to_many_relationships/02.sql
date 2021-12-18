SELECT b.id, b.author, string_agg(c.name, ', ') AS categories FROM books AS b
INNER JOIN books_categories AS bc ON b.id = bc.book_id
INNER JOIN categories as c ON bc.category_id = c.id
GROUP BY b.id
ORDER BY b.id;