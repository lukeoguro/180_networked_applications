ALTER TABLE books_categories
ALTER book_id SET NOT NULL,
ALTER category_id SET NOT NULL,
DROP CONSTRAINT books_categories_book_id_fkey,
DROP CONSTRAINT books_categories_category_id_fkey,
ADD FOREIGN KEY (book_id) REFERENCES books(id) ON DELETE CASCADE,
ADD FOREIGN KEY (category_id) REFERENCES categories(id) ON DELETE CASCADE;
