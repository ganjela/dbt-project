{{ config(materialized='table') }}

SELECT 
    name,
    city,
    price,
    product_id
FROM 
    {{ source('parquet_source', 'products') }}
