SELECT 
    p.product_id,
    p.name,
    p.city,
    p.price,
    COUNT(*) AS total_sales_count,
    SUM(p.price) AS total_revenue
FROM 
    {{ ref('stg_products') }} AS p
JOIN 
    {{ ref('stg_resellers_type1') }} AS rt ON p.city = rt.series_city 
GROUP BY 
    p.product_id, p.name, p.city, p.price



