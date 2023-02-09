SELECT TOP 5 pais.id, sum(tsunami.total_deaths) as muertes
FROM tsunami 
INNER JOIN pais ON pais.id = tsunami.id_pais
GROUP BY pais.id
ORDER BY muertes DESC
;