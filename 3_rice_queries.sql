-- Question 3: Rice species with the longest DNA sequence
SELECT t.species, MAX(r.length) AS longest_sequence
FROM rfamseq r
JOIN taxonomy t ON r.ncbi_id = t.ncbi_id
WHERE t.species LIKE 'Oryza%'
GROUP BY t.species
ORDER BY longest_sequence DESC
LIMIT 1;
-- Verified Output:
-- +-----------------+------------------+
-- | species         | longest_sequence |
-- +-----------------+------------------+
-- | Oryza granulata |         80745213 |
-- +-----------------+------------------+
-- 1 row in set(0.495 sec)
