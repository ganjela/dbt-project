{{ config(materialized='view') }}

SELECT 
    LOWER(channel_name) AS channel_name,
    channel_id
FROM 
    {{ ref('raw_channels') }}

