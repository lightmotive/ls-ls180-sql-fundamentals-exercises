ALTER TABLE parts
ALTER COLUMN device_id
DROP NOT NULL;

CREATE SEQUENCE part_number_sequence START 1000 INCREMENT 2;

-- New requirements change the relationship modality to 0, meaning a part
-- can be created without an associated device.
INSERT INTO
  devices (name)
VALUES
  ('Accelerometer'),
  ('Gyroscope');

INSERT INTO
  parts (part_number, device_id)
VALUES
  (nextval('part_number_sequence'), 1),
  (nextval('part_number_sequence'), 1),
  (nextval('part_number_sequence'), 1),
  (nextval('part_number_sequence'), 2),
  (nextval('part_number_sequence'), 2),
  (nextval('part_number_sequence'), 2),
  (nextval('part_number_sequence'), 2),
  (nextval('part_number_sequence'), 2),
  (nextval('part_number_sequence'), NULL),
  (nextval('part_number_sequence'), NULL),
  (nextval('part_number_sequence'), NULL);