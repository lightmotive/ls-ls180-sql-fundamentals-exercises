SELECT
  *
FROM
  birds;

SELECT
  id,
  (name, age, species) AS details_tuple
FROM
  birds;

-- That tuple syntax doesn't seem to be a SQL standard, and I don't see it in
-- PostgreSQL documentation. Glad to be aware; to be researched later.