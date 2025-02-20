SELECT CO.Continent, FLOOR(AVG(CI.Population)) AS AvgCityPopulation
FROM CITY CI
JOIN COUNTRY CO ON CI.CountryCode = CO.Code
GROUP BY CO.Continent;
