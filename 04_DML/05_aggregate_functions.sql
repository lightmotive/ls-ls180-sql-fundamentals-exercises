SELECT
  d.name,
  count(p.device_id) AS part_count
FROM
  devices AS d
  LEFT OUTER JOIN parts AS p ON d.id = p.device_id
GROUP BY
  d.id;