SELECT pais.id, AVG(tsunami.max_water_height) as altura_promedio
FROM tsunami
INNER JOIN pais ON pais.id = tsunami.id_pais
WHERE tsunami.max_water_height > 0
GROUP BY pais.id
ORDER BY altura_promedio DESC;