WITH OrderDiscounts AS (
    SELECT
        customer_order_id, SUM((price - price_with_discount) * product_amount) AS total_order_discount
    FROM
        order_details
    GROUP BY
        customer_order_id
)
SELECT
    MAX(total_order_discount) AS max_order_discount
FROM
    OrderDiscounts;