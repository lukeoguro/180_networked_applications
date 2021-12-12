ALTER TABLE birds
  ADD CONSTRAINT check_age CHECK (age > 0);

INSERT INTO birds (age, name, species) VALUES (-2, 'Alan', 'Blue Jay');