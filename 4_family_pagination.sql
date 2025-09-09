-- Question 4: Paginated families with DNA sequences > 1,000,000 bp
-- This query returns the 9th page assuming 15 results per page

SELECT 
    f.rfam_acc AS family_accession_id,
    f.rfam_id AS family_name,
    MAX(r.length) AS max_sequence_length
FROM family f
JOIN full_region fr ON f.rfam_acc = fr.rfam_acc
JOIN rfamseq r ON fr.rfamseq_acc = r.rfamseq_acc
GROUP BY f.rfam_acc, f.rfam_id
HAVING MAX(r.length) > 1000000
ORDER BY max_sequence_length DESC
LIMIT 15 OFFSET 120;  -- 9th page, 15 results per page

-- Verified Output:
-- +---------------------+-------------+---------------------+
-- | family_accession_id | family_name | max_sequence_length |
-- +---------------------+-------------+---------------------+
-- | RF00097             | snoR71      |           836514780 |
-- | RF01227             | snoR83      |           836514780 |
-- | RF00133             | SNORD33     |           836514780 |
-- | RF04251             | MIR5070     |           836514780 |
-- | RF00361             | snoZ119     |           836514780 |
-- | RF00201             | snoZ278     |           836514780 |
-- | RF03209             | MIR9657     |           836514780 |
-- | RF03685             | MIR9677     |           836514780 |
-- | RF01848             | ACEA_U3     |           836514780 |
-- | RF00445             | mir-399     |           836514780 |
-- | RF00504             | Glycine     |           836514780 |
-- | RF00145             | snoZ105     |           830829764 |
-- | RF01424             | snoR118     |           801256715 |
-- | RF01178             | snoR77Y     |           801256715 |
-- | RF00134             | snoZ196     |           801256715 |
-- +---------------------+-------------+---------------------+
-- 15 rows in set (0.578 sec)