ALTER TABLE birds
ADD CONSTRAINT age_is_positive CHECK (age > 0);