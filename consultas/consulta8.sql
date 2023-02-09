SELECT TOP 5 pais.id, sum(tsunami.total_houses_destroyed) as houses_destroyed
FROM tsunami 
INNER JOIN pais ON pais.id = tsunami.id_pais
GROUP BY pais.id
ORDER BY houses_destroyed DESC
;