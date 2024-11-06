WITH negative_prices AS (
    SELECT
        product_id,
        price
    FROM {{ ref('raw_products') }}
    WHERE price < 0
)

SELECT
    *
FROM negative_prices