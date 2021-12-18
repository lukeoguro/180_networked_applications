ALTER TABLE books
ALTER title TYPE text;

INSERT INTO books (title, author)
VALUES ('Sally Ride: America''s First Woman in Space', 'Lynn Sherr'),
('Jane Eyre', 'Charlotte Brontë'),
('Vij''s: Elegant and Inspired Indian Cuisine', 'Meeru Dhalwala and Vikram Vij');

INSERT INTO categories (name)
VALUES ('Space Exploration'),
('Cookbook'),
('South Asia');

INSERT INTO books_categories (book_id, category_id)
VALUES (4, 5),
(4, 1),
(4, 7),
(5, 2),
(5, 4),
(6, 8),
(6, 1),
(6, 9);