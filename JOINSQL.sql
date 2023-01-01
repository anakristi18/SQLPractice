#select all column from PERBANKAN table
SELECT *
FROM dbo.PERBANKAN$;

#select some column
SELECT Timestamp, Drive_Foto, lower(ID) as lower_ID
FROM dbo.PERBANKAN$;

#select all column from PDAM table
SELECT *
FROM dbo.PDAM$;

#create lower ID
SELECT lower(ID) as lower_ID, Alamat
FROM dbo.PDAM$;

#join two tables
SELECT b.Timestamp, b.Drive_Foto, lower(p.ID) as lower_ID , p.Alamat
FROM dbo.PERBANKAN$ b
JOIN dbo.PDAM$ p
	ON p.ID = b.ID;
