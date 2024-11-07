{{ config(materialized='view') }}

SELECT 
    REGEXP_REPLACE(product_id, '[^\d]+', '') AS product_id,
    name,  
    city,
    price
FROM 
    {{ ref('raw_products') }}
