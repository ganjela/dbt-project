{{ config(materialized='table') }}

SELECT 
    reseller_id,
    reseller_name,
    commission_pct
FROM 
    {{ source('parquet_source', 'resellers') }}
