CREATE OR ALTER VIEW DiverseCountry
AS
SELECT Name, cl.[Number Of Languages] FROM [World].[dbo].[country] c
JOIN 
	(
		SELECT CountryCode, COUNT(*) AS [Number Of Languages] FROM [World].[dbo].[countrylanguage]
		GROUP BY CountryCode
		HAVING COUNT(*) >= 4
	) AS cl 
ON c.Code = cl.CountryCode

--RUN THE VIEW --
GO
SELECT * FROM DiverseCountry