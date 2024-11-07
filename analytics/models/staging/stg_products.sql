{{ config(materialized='view') }}

SELECT 
    REGEXP_EXTRACT(product_id, r'(\d+)$') AS product_id,
    name,  
    city,
    price
FROM 
    {{ ref('raw_products') }}

