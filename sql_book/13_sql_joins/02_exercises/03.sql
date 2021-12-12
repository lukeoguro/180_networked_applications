SELECT DISTINCT s.first_name FROM singers s
  JOIN albums a
  ON s.id = a.singer_id
  WHERE a.label = 'Warner Bros';