SELECT s.first_name, s.last_name FROM singers s
  WHERE s.id NOT IN (
    SELECT DISTINCT a.singer_id FROM albums a
  );