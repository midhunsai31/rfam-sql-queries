-- Question 1: Tiger types & Sumatran Tiger ncbi_id

-- Count the number of tiger subspecies
SELECT COUNT(DISTINCT scientific_name) AS tiger_types
FROM taxonomy
WHERE scientific_name LIKE 'Panthera tigris%';
-- Output result: tiger_types = 29

-- Get the ncbi_id of the Sumatran Tiger -- Panthera tigris sumatrae
SELECT ncbi_id
FROM taxonomy
WHERE scientific_name = 'Panthera tigris sumatrae';
-- Output result: ncbi_id = 9695, species = Panthera tigris sumatrae (Sumatran tiger)
