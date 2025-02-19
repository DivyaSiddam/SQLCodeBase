SELECT CONCAT(name, '(', SUBSTRING(occupation, 1, 1), ')') AS name_with_occupation_initial
FROM OCCUPATIONS
ORDER BY name;

SELECT CONCAT('There are a total of ', COUNT(occupation), ' ', LOWER(occupation), 's.') AS occupation_count
FROM OCCUPATIONS
GROUP BY occupation
ORDER BY COUNT(occupation), LOWER(occupation);
