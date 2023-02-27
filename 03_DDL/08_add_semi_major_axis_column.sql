ALTER TABLE planets
ADD COLUMN semi_major_axis numeric NOT NULL;

-- Explore scenario in which `planets` already has data...
ALTER TABLE planets
DROP COLUMN semi_major_axis;

DELETE FROM stars;

ALTER SEQUENCE stars_id_seq RESTART;

INSERT INTO
  stars (name, distance, spectral_type, companions)
VALUES
  ('Alpha Centauri B', 4.37, 'K', 3);

INSERT INTO
  stars (name, distance, spectral_type, companions)
VALUES
  ('Epsilon Eridani', 10.5, 'K', 0);

INSERT INTO
  planets (designation, mass, star_id)
VALUES
  ('b', 0.0036, 1);

INSERT INTO
  planets (designation, mass, star_id)
VALUES
  ('c', 0.1, 2);

-- At this point, the following statement will raise an exception:
-- ERROR: column "semi_major_axis" of relation "planets" contains null values
/*
ALTER TABLE planets
ADD COLUMN semi_major_axis numeric NOT NULL; 
 */
-- The way to work around that is to add the column, allowing nulls...
ALTER TABLE planets
ADD COLUMN semi_major_axis numeric;

-- ...then add the required data:
UPDATE planets
SET
  semi_major_axis = 0.04
WHERE
  id = 1;

UPDATE planets
SET
  semi_major_axis = 40
WHERE
  id = 2;

-- ...then set NOT NULL:
ALTER TABLE planets
ALTER COLUMN semi_major_axis
SET NOT NULL;