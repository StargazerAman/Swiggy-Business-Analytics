-- =========================================================
-- Business Requirement:
-- High-Revenue Restaurant Report
--
-- Show restaurants whose completed-order revenue is
-- at least 2000 during August 2026.
--
-- Requirements:
-- 1. Consider only completed orders.
-- 2. Consider only orders from August 2026.
-- 3. Calculate total revenue using orders.amount.
-- 4. Show the number of completed orders for each restaurant.
-- 5. Include only restaurants with total revenue >= 2000.
-- 6. Sort restaurants by total revenue in descending order.
-- =========================================================

SELECT
    r.restaurant_id,
    r.restaurant_name,
    SUM(o.amount) AS total_revenue,
    COUNT(o.order_id) AS completed_orders
FROM restaurants r
INNER JOIN orders o
    ON r.restaurant_id = o.restaurant_id
WHERE
    o.status = 'Completed'
    AND o.order_date >= '2026-08-01'
    AND o.order_date < '2026-09-01'
GROUP BY
    r.restaurant_id,
    r.restaurant_name
HAVING total_revenue >= 2000
ORDER BY total_revenue DESC;