SELECT title, name FROM films
INNER JOIN directors_films AS df ON films.id = df.film_id
INNER JOIN directors ON df.director_id = directors.id
ORDER BY title;