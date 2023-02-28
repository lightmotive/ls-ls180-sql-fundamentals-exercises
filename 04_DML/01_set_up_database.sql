-- Terminal: createdb workshop
-- ***
CREATE TABLE
  devices (
    id integer GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    name text NOT NULL,
    created_at timestamp DEFAULT CURRENT_TIMESTAMP
  );

-- `devices` to `parts` relationship has a cardinality of one-to-many and a
-- modality of 1 (a device ID is required for each part). That's based on the
-- description: "These parts are unique to each device, so one device can have
-- various parts, but those parts won't be used in any other device."
CREATE TABLE
  parts (
    id integer GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    part_number integer UNIQUE NOT NULL,
    device_id integer NOT NULL REFERENCES devices (id)
  );

-- psql> workshop=# \i 01_set_up_database.sql