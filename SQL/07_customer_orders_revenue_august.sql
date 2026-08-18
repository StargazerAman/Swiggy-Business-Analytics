/*
Business Requirement:
For August 2026, show every customer along with their
total completed orders and total revenue from those orders.

Customers who did not place any completed order in August
must also appear with 0 orders and 0 revenue.

Business Logic:
- customers is the driving table
- LEFT JOIN is required to retain all customers
- Completed status filter belongs in ON
- August date filter belongs in ON
- COUNT(order_id) gives 0 for customers without matching orders
- COALESCE(SUM(order_amount), 0) converts NULL revenue to 0
*/

SELECT
    c.customer_id,
    c.customer_name,
    COUNT(o.order_id) AS total_completed_orders,
    COALESCE(SUM(o.amount), 0) AS total_revenue
FROM customers c
LEFT JOIN orders o
    ON c.customer_id = o.customer_id
    AND o.status = 'Completed'
    AND o.order_date >= '2026-08-01'
    AND o.order_date < '2026-09-01'
GROUP BY
    c.customer_id,
    c.customer_name
ORDER BY total_revenue DESC;