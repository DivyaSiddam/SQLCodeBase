SELECT MAX(total_earnings), COUNT(*)
FROM (SELECT months * salary AS total_earnings FROM Employee) AS earnings_table
WHERE total_earnings = (SELECT MAX(months * salary) FROM Employee);
