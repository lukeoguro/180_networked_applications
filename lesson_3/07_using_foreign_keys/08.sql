CREATE TABLE reviews (
  id serial PRIMARY KEY,
  product_id integer REFERENCES products(id),
  review text NOT NULL
);