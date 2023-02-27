CREATE TYPE star_spectral_type_enum AS ENUM('O', 'B', 'A', 'F', 'G', 'K', 'M');

ALTER TABLE stars
DROP CONSTRAINT spectral_type_is_valid;

ALTER TABLE stars
ALTER COLUMN spectral_type
TYPE star_spectral_type_enum USING spectral_type::star_spectral_type_enum;