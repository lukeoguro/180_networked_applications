SELECT s.first_name, s.last_name, a.album_name, a.released
  FROM singers s
  JOIN albums a ON s.id = a.singer_id
  WHERE date_part('year', a.released) >= 1980
    AND date_part('year', a.released) < 1990
    AND s.deceased = false
  ORDER BY date_of_birth DESC;
