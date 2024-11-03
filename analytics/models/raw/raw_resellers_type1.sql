{{ config(materialized='table') }}

SELECT 
    "Product name",
    "Quantity",
    "Total amount",
    "Sales Channel",
    "Customer First Name",
    "Customer Last Name",
    "Customer Email",
    "Series City",
    "Created Date",
    "Reseller ID",
    "Transaction ID"
FROM 
    {{ source('parquet_source', 'resellers_type1') }}
