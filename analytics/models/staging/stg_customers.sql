{{ config(materialized='table') }}

SELECT 
    customer_id,
    {{ init_cap('first_name') }} AS first_name,
    {{ init_cap('last_name') }} AS last_name,
    LOWER(email) AS email
FROM 
    {{ ref('raw_customers') }}

