SELECT conservation_status, count(id) FROM animals
GROUP BY conservation_status;