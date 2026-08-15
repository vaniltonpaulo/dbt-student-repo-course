
-- Singular test to check that every listing has at least 1 minimum night.
-- In a dbt singular test, the query should return only the rows that violate
-- the expected condition. If this query returns 0 rows, the test passes.
-- If it returns any rows, the test fails.
-- LIMIT 10 restricts the output to the first 10 invalid records for easier inspection.
SELECT * FROM {{ ref('dim_listings_cleansed')}}
WHERE minimum_nights < 1
LIMIT 10

-- to run sigular test  just dbt test -s <filename>