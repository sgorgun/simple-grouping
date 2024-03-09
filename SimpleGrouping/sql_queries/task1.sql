SELECT
    COUNT(person_id) AS customer_count,
    discount
FROM
    customer
GROUP BY
    discount
ORDER BY
    discount;