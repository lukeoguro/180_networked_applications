ALTER TABLE celebrities
  RENAME COLUMN name TO first_name;

ALTER TABLE celebrities
  ALTER COLUMN first_name
  TYPE varchar(80);
