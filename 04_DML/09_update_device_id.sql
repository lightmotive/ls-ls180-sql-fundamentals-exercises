UPDATE parts
SET
  device_id = 1
WHERE
  id IN (
    SELECT
      id
    FROM
      parts
    WHERE
      device_id = 2
    ORDER BY
      part_number DESC
    LIMIT
      2
  );

UPDATE parts
SET
  device_id = 2
WHERE
  part_number = (
    SELECT
      min(part_number)
    FROM
      parts
  );