WITH raw_hosts AS (
    SELECT *
    FROM {{ source('airbnb','hosts') }}
    -- After this you have to hit dbt compile
    -- With DBT compile, DBT goes through all of your models and YAML files and tests and so on, and it will

 -- check if all of the references and template tags and everything is correct and it says okay
)


SELECT * RENAME(
    id AS host_id,
    name AS host_name
)
FROM raw_hosts