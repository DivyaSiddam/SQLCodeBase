SELECT DISTINCT CITY
FROM STATION
WHERE LOWER(SUBSTR(CITY, 1, 1)) not IN ('a', 'e', 'i', 'o', 'u')
  or LOWER(SUBSTR(CITY, -1, 1)) not IN ('a', 'e', 'i', 'o', 'u');
