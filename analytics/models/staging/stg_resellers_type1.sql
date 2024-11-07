{{ config(materialized='table') }}

SELECT 
    LOWER(sales_channel) AS sales_channel,
    customer_first_name,
    customer_last_name,
    LOWER(customer_email) AS customer_email, 
    series_city,
    
    CAST(created_date AS TIMESTAMP) AS created_date,
    
    CAST(reseller_id AS INTEGER) AS reseller_id,
    CAST(transaction_id AS INTEGER) AS transaction_id
FROM 
    {{ ref('raw_resellers_type1') }}


