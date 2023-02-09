SELECT TOP 5 f.year, sum(t.total_deaths) as muertes
FROM tsunami t
INNER JOIN fecha f ON f.id = t.id_fecha
GROUP BY f.year
ORDER BY muertes DESC
;