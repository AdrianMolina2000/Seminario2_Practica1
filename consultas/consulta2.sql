SELECT fecha.year, count(tsunami.id) as tsunamis
FROM fecha
INNER JOIN tsunami ON fecha.id = tsunami.id_fecha
GROUP BY fecha.year
ORDER BY fecha.year DESC;