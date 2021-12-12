DROP TABLE orders;

CREATE TABLE orders (
  id serial PRIMARY KEY,
  order_status varchar(20),
  customer_id integer,
  FOREIGN KEY (customer_id)
      REFERENCES customers(id)
      ON DELETE CASCADE
);

CREATE TABLE order_items (
  id serial PRIMARY KEY,
  order_id integer NOT NULL,
  product_id integer NOT NULL,
  FOREIGN KEY (order_id) REFERENCES orders(id)
                         ON DELETE CASCADE,
  FOREIGN KEY (product_id) REFERENCES products(id)
                           ON DELETE CASCADE
);

INSERT INTO orders (order_status, customer_id)
            VALUES ('In Progress', 1),
                   ('Placed', 2),
                   ('Complete', 2),
                   ('Placed', 3);

INSERT INTO order_items (order_id, product_id)
                 VALUES (1, 3),
                        (1, 5),
                        (1, 6),
                        (1, 8),
                        (2, 2),
                        (2, 5),
                        (2, 7),
                        (3, 4),
                        (3, 2),
                        (3, 5),
                        (3, 5),
                        (3, 6),
                        (3, 10),
                        (3, 9),
                        (4, 1),
                        (4, 5);