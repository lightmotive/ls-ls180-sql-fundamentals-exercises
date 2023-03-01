ALTER TABLE parts
DROP CONSTRAINT parts_device_id_fkey,
ADD FOREIGN KEY (device_id) REFERENCES devices (id) ON DELETE CASCADE;

-- Now, we can simply delete `devices` records without having to explicitly
-- delete referencing `parts` records first.
DELETE FROM devices
WHERE
  id = 1;

-- Alternative approach if the foreign key constraint should not cascade delete:
-- delete `parts` records by device_id, then delete `devices` record by
-- matching `id`.