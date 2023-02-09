SELECT TOP 5 f.year, COUNT(*) total_tsunami
FROM tsunami t
INNER JOIN fecha f ON f.id = t.id_fecha
GROUP BY f.year
ORDER BY total_tsunami DESC;