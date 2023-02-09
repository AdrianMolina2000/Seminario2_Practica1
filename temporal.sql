bulk insert temporal
FROM '/historial_tsumamis_limpio.csv'
WITH (
FIELDTERMINATOR = ';',
ROWTERMINATOR = '\n',
FIRSTROW = 2
);
