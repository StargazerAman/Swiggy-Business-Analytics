-- =========================================================
-- Business Requirement:
-- Restaurant Revenue Performance Report
--
-- Calculate the total revenue and completed order count
-- for every restaurant during August 2026.
--
-- Requirements:
-- 1. Every restaurant must be included.
-- 2. Restaurants with zero completed orders must also appear.
-- 3. Only completed orders should contribute to revenue.
-- 4. Only orders from August 2026 should be considered.
-- 5. Revenue should be calculated using orders.amount.
-- 6. Output should contain one row per restaurant.
-- 7. Sort restaurants by total revenue in descending order.
-- =========================================================

SELECT
    r.restaurant_id,
    r.restaurant_name,
    COUNT(o.order_id) AS completed_orders,
    SUM(IFNULL(o.amount, 0)) AS total_revenue
FROM restaurants r
LEFT JOIN orders o
    ON r.restaurant_id = o.restaurant_id
    AND o.status = 'Completed'
    AND o.order_date >= '2026-08-01'
    AND o.order_date < '2026-09-01'
GROUP BY
    r.restaurant_id,
    r.restaurant_name
ORDER BY total_revenue DESC;