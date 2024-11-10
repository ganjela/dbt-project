{{ config(materialized='table') }}

SELECT 
    REGEXP_REPLACE(product_id, '[^\d]+', '') AS product_id,
    {{ init_cap('name') }} AS name,
    {{ init_cap('city') }} AS city,
    price
FROM 
    {{ ref('raw_products') }}

