ALTER TABLE animals
ADD COLUMN class varchar(100);

UPDATE animals
SET class = 'Aves';