-- Customer Repeat Order Analysis
-- Identify customers who have placed more than one completed order

SELECT
    c.customer_id,
    c.customer_name,
    COUNT(o.order_id) AS completed_orders
FROM customers c
LEFT JOIN orders o
    ON c.customer_id = o.customer_id
    AND o.order_status = 'Completed'
GROUP BY
    c.customer_id,
    c.customer_name
HAVING COUNT(o.order_id) > 1;