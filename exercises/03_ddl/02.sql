ALTER TABLE planets
  ADD star_id integer NOT NULL REFERENCES planets (id);
