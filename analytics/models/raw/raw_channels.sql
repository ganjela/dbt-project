{{ config(materialized='table') }}

SELECT 
    channel_name,
    channel_id
FROM 
    {{ source('parquet_source', 'channels') }}
