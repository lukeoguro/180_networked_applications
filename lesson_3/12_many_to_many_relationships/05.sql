SELECT c.name, COUNT(bc.book_id) AS book_count, STRING_AGG(b.title, ', ') AS book_titles
FROM categories AS c
INNER JOIN books_categories AS bc ON c.id = bc.category_id
INNER JOIN books AS b ON bc.book_id = b.id
GROUP BY c.id
ORDER BY c.name;