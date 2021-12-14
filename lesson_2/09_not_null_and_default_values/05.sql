SELECT date, round((high + low) / 2.0, 1) AS avg FROM temperatures
WHERE date >= '2016-03-02' AND date <= '2016-03-08';