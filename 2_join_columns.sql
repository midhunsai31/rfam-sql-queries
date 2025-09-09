-- Question 2: Columns to connect tables

-- Join taxonomy, rfamseq, full_region, family
SELECT f.rfam_id, f.description, r.rfamseq_acc, r.ncbi_id, t.species
FROM family f
JOIN full_region fr ON f.rfam_acc = fr.rfam_acc
JOIN rfamseq r ON fr.rfamseq_acc = r.rfamseq_acc
JOIN taxonomy t ON r.ncbi_id = t.ncbi_id
WHERE f.rfam_id LIKE 'tRNA%'
LIMIT 5;

-- Actual Output:
-- +---------+-------------+-------------------+---------+----------------------------------+
-- | rfam_id | description | rfamseq_acc       | ncbi_id | species                          |
-- +---------+-------------+-------------------+---------+----------------------------------+
-- | tRNA    | tRNA        | JAAXKZ010000005.1 |  630973 | Pseudonocardia sp. YIM 63101     |
-- | tRNA    | tRNA        | BAYV01000005.1    | 1492281 | alpha proteobacterium Q-1        |
-- | tRNA    | tRNA        | BJZO01000046.1    |  478448 | Rhodospirillum oryzae            |
-- | tRNA    | tRNA        | BKCM01000006.1    | 1236966 | Iodidimonas gelatinilytica       |
-- | tRNA    | tRNA        | CP000230.1        |  269796 | Rhodospirillum rubrum ATCC 11170 |
-- +---------+-------------+-------------------+---------+----------------------------------+
-- 5 rows in set (0.313 sec)