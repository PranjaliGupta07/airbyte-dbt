-- models/test_transformations.sql

-- 1. Rename columns
SELECT
    firstName AS first_name,
    lastName AS last_name,
    emailId AS email,
    password
FROM test_csv;

-- 2. Calculate summary statistics
-- Assuming no numeric column is present, we skip this step

-- 3. Filter out certain rows
-- Let's filter out rows where the last name is 'kashyap'
SELECT
    *
FROM test_csv
WHERE lastName != 'kashyap';
