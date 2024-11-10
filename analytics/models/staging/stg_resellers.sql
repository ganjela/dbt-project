{{ config(materialized='table') }}

SELECT 
    reseller_id,
    {{ init_cap('reseller_name') }} AS reseller_name,
    commission_pct
FROM 
    {{ ref('raw_resellers') }}

