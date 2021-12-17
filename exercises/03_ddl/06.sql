ALTER TABLE stars
  DROP CONSTRAINT valid_spectral_type;

CREATE TYPE spectral_type_enum AS enum (
  'O',
  'B',
  'A',
  'F',
  'G',
  'K',
  'M'
);

ALTER TABLE stars
  ALTER COLUMN spectral_type TYPE spectral_type_enum
  USING spectral_type::spectral_type_enum;
