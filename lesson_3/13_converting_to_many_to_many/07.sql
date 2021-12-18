SELECT d.name, COUNT(df.film_id) FROM directors AS d
INNER JOIN directors_films AS df ON d.id = df.director_id
GROUP BY d.id
ORDER BY COUNT(df.film_id) DESC, d.name;