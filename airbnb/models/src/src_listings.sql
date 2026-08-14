WITH raw_listings AS (
    SELECT
        *
    FROM {{ source('airbnb','listings') }}
    -- After this you have to hit dbt compile
    -- With DBT compile, DBT goes through all of your models and YAML files and tests and so on, and it will

 -- check if all of the references and template tags and everything is correct and it says okay
)
SELECT
    id AS listing_id,
    name AS listing_name,
    listing_url,
    room_type,
    minimum_nights,
    host_id,
    price AS price_str,
    created_at,
    updated_at
FROM
    raw_listings
