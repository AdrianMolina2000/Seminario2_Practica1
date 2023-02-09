SELECT pais.id, AVG(tsunami.total_damage) as damage_promedio
FROM tsunami
INNER JOIN pais ON pais.id = tsunami.id_pais
WHERE tsunami.total_damage > 0
GROUP BY pais.id
ORDER BY damage_promedio DESC;