WITH RECURSIVE pattern (n) AS (
    SELECT 1  -- Start with row 1
    UNION ALL
    SELECT n + 1 FROM pattern WHERE n < 20
)
SELECT REPEAT('* ', n) FROM pattern;
