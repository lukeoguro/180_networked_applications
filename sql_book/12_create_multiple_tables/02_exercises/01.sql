CREATE TABLE continents (
  id SERIAL PRIMARY KEY,
  continent_name varchar(50)
);

ALTER TABLE countries
  DROP COLUMN continent;

ALTER TABLE countries
  ADD COLUMN continent_id integer;

ALTER TABLE countries
  ADD FOREIGN KEY (continent_id)
  REFERENCES continents(id);