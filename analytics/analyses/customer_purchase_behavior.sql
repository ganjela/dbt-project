WITH customer_purchase_data AS (
    SELECT 
        customer_id,
        first_name,
        last_name,
        total_transactions,
        total_spent,
        average_spent_per_transaction,
        CASE
            WHEN total_spent > 1000 THEN 'High Value'
            WHEN total_spent BETWEEN 500 AND 1000 THEN 'Medium Value'
            ELSE 'Low Value'
        END AS customer_value
    FROM 
        {{ ref('dm_customer_purchase_summary') }} 
)

SELECT 
    customer_id,
    first_name,
    last_name,
    total_transactions,
    total_spent,
    average_spent_per_transaction,
    customer_value
FROM customer_purchase_data
ORDER BY total_spent DESC
