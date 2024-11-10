{{ config(materialized='table') }}

SELECT 
    LOWER(sales_channel) AS sales_channel,
    {{ init_cap('customer_first_name') }} AS customer_first_name,
    {{ init_cap('customer_last_name') }} AS customer_last_name,
    LOWER(customer_email) AS customer_email, 
    {{ init_cap('series_city') }} AS series_city,
    
    CAST(created_date AS TIMESTAMP) AS created_date,
    CAST(reseller_id AS INTEGER) AS reseller_id,
    CAST(transaction_id AS INTEGER) AS transaction_id
FROM 
    {{ ref('raw_resellers_type1') }}



