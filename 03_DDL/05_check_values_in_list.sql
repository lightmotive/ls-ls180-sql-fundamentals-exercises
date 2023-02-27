ALTER TABLE stars
ALTER COLUMN spectral_type
SET NOT NULL,
ADD CONSTRAINT spectral_type_is_valid CHECK (spectral_type IN ('O', 'B', 'A', 'F', 'G', 'K', 'M'));

-- If the table contains rows with values that don't meet those requirements,
-- the statement would fail. One would need to ensure all rows meet all
-- new requirements before applying new constraints.
-- The easiest way to go about that: SELECT data that doesn't meet requirements,
-- UPDATE those rows so they do meet requirements, then apply the constraints.