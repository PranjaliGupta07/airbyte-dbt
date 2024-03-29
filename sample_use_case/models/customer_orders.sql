-- models/customer_orders.sql

SELECT
    customer_id,
    COUNT(*) as total_orders,
    SUM(amount) as total_amount
FROM {{ ref('your_raw_orders_table_name') }}
GROUP BY customer_id;
