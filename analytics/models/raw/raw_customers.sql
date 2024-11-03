{{ config(materialized='table') }}

SELECT 
    customer_id,
    first_name,
    last_name,
    email
FROM 
    {{ source('parquet_source', 'customers') }}
