WITH challenge_counts AS (
    SELECT c.hacker_id, h.name, COUNT(*) AS total
    FROM Challenges c
    JOIN Hackers h ON c.hacker_id = h.hacker_id
    GROUP BY c.hacker_id, h.name
),


max_count AS (
    SELECT MAX(total) AS max_total
    FROM challenge_counts
),


duplicate_counts AS (
    SELECT total
    FROM challenge_counts
    GROUP BY total
    HAVING COUNT(*) > 1
)


SELECT hacker_id, name, total
FROM challenge_counts
WHERE 
    total = (SELECT max_total FROM max_count)
    OR total NOT IN (SELECT total FROM duplicate_counts)
ORDER BY total DESC, hacker_id;
