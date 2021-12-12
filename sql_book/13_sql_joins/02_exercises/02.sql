SELECT countries.name, countries.capital
FROM countries
WHERE countries.continent_id IN (
  SELECT continents.id FROM continents
  WHERE continents.continent_name = 'Europe'
);