WITH invalid_emails AS (
    SELECT
        customer_id,
        email
    FROM {{ ref('customers') }}
    WHERE email IS NULL OR email NOT LIKE '%_@__%.__%'
)

SELECT
    *
FROM invalid_emails