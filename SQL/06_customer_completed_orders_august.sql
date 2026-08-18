/*
Business Requirement:
For August 2026, show every customer along with their
total completed orders.

Customers who did not place any completed order in August
must also be included with 0 orders.

Business Logic:
- customers is the driving table
- LEFT JOIN is required
- Completed status filter belongs in ON
- August date filter belongs in ON
*/

SELECT
    c.customer_id,
    c.customer_name,
    c.city,
    COUNT(o.order_id) AS total_orders
FROM customers c
LEFT JOIN orders o
    ON c.customer_id = o.customer_id
    AND o.status = 'Completed'
    AND o.order_date >= '2026-08-01'
    AND o.order_date < '2026-09-01'
GROUP BY
    c.customer_id,
    c.customer_name,
    c.city
ORDER BY total_orders DESC;