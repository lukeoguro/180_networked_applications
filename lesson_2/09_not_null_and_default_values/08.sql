ALTER TABLE temperatures
ALTER rainfall TYPE decimal(5,3);

UPDATE temperatures
SET rainfall = rainfall * 0.039;