WITH negative_prices AS (
    SELECT
        product_id,
        price
    FROM {{ ref('products') }}
    WHERE price < 0
)

SELECT
    *
FROM negative_prices