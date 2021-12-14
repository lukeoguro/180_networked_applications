SELECT year / 10 * 10 AS decade, genre, string_agg(title, ', ') as films
  FROM films
 GROUP BY decade, genre
 ORDER BY decade;