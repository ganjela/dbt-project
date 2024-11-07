{{ config(materialized='view') }}

SELECT 
    customer_id,
    INITCAP(first_name) AS first_name,
    INITCAP(last_name) AS last_name,
    LOWER(email) AS email
FROM 
    {{ ref('raw_customers') }}
