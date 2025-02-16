WITH RECURSIVE numbers(n) AS (
    SELECT 2
    UNION ALL
    SELECT n + 1 FROM numbers WHERE n < 1000  -- Change 1000 to any upper limit
)
SELECT GROUP_CONCAT(n SEPARATOR '&') 
FROM numbers 
WHERE NOT EXISTS (
    SELECT 1 
    FROM numbers AS divisors 
    WHERE divisors.n < numbers.n 
    AND numbers.n % divisors.n = 0 
    AND divisors.n > 1
);
