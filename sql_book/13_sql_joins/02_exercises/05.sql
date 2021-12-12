SELECT DISTINCT first_name, last_name FROM singers s
  LEFT JOIN albums a ON s.id = a.singer_id
  WHERE a.id IS NULL;