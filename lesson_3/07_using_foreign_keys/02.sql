ALTER TABLE orders
  ADD FOREIGN KEY (product_id) REFERENCES products(id);