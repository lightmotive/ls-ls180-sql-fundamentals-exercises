ALTER TABLE parts
ALTER COLUMN part_number
SET DEFAULT nextval('part_number_sequence');

INSERT INTO
  devices (name)
VALUES
  ('Magnetometer');

INSERT INTO
  parts (device_id)
VALUES
  (3);

SELECT
  name
FROM
  devices
ORDER BY
  created_at
LIMIT
  1;