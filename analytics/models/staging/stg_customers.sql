{{ config(materialized='table') }}

SELECT 
    customer_id,
    first_name,
    last_name,
    LOWER(email) AS email
FROM 
    {{ ref('raw_customers') }}
