SELECT d.id,
    STUFF((SELECT DISTINCT ',' + CAST(c.year AS VARCHAR)
	FROM tsunami a
	INNER JOIN pais b ON b.id = a.id_pais
	INNER JOIN fecha c ON c.id = a.id_fecha
	WHERE d.id = b.id
	FOR XML PATH('')), 1, 1, '') years
FROM Pais d
GROUP BY d.id
ORDER BY d.id DESC;