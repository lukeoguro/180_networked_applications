CREATE DATABASE extrasolar;

\c extrasolar
CREATE TABLE stars (
  id serial PRIMARY KEY,
  name varchar(25) UNIQUE NOT NULL,
  distance integer NOT NULL CONSTRAINT positive_distance CHECK (distance > 0),
  spectral_type char(1) NOT NULL,
  companions integer NOT NULL CONSTRAINT positive_companions CHECK (distance >= 0)
);

CREATE TABLE planets (
  id serial PRIMARY KEY,
  designation char(1) UNIQUE,
  mass integer
);
