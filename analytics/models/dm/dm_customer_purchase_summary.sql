{{ config(materialized='table') }}

SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    COUNT(*) AS total_transactions,
    SUM(p.price) AS total_spent,
    AVG(p.price) AS average_spent_per_transaction
FROM 
    {{ ref('stg_customers') }} AS c
JOIN 
    {{ ref('stg_resellers_type1') }} AS rt ON c.email = rt.customer_email
JOIN 
    {{ ref('stg_products') }} AS p ON rt.series_city = p.city 
GROUP BY 
    c.customer_id, c.first_name, c.last_name
