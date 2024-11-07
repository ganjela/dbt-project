{{ config(materialized='view') }}

SELECT 
    reseller_id,
    INITCAP(reseller_name) AS reseller_name, 
    commission_pct
FROM 
    {{ ref('raw_resellers') }}
