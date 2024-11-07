WITH product_sales_data AS (
    SELECT 
        product_id,
        product_name,
        product_city,
        total_sales_count,
        total_revenue,
        average_price,
        CASE
            WHEN total_sales_count > 100 THEN 'High Demand'
            WHEN total_sales_count BETWEEN 50 AND 100 THEN 'Moderate Demand'
            ELSE 'Low Demand'
        END AS demand_category
    FROM 
        {{ ref('dm_product_sales_by_city') }} 
)

SELECT 
    product_id,
    product_name,
    product_city,
    total_sales_count,
    total_revenue,
    average_price,
    demand_category
FROM product_sales_data
ORDER BY total_revenue DESC
