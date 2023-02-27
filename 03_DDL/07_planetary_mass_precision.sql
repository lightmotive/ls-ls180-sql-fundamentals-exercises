ALTER TABLE planets
ALTER COLUMN designation
SET NOT NULL,
ALTER COLUMN mass
TYPE numeric,
ALTER COLUMN mass
SET NOT NULL,
ADD CONSTRAINT mass_is_positive CHECK (mass > 0.0);