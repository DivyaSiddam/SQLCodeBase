SELECT 
    ROUND(SUM(LAT_N), 2) AS Sum_Latitude,
    ROUND(SUM(LONG_W), 2) AS Sum_Longitude
FROM STATION;
