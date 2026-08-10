
-- =========================================================
-- Business Requirement:
-- Restaurant Performance Report
--
-- Show every restaurant along with the number of
-- completed orders received during August 2026.
--
-- Requirements:
-- 1. Every restaurant must be included.
-- 2. Restaurants with zero completed orders must also appear.
-- 3. Only completed orders should be counted.
-- 4. Only orders from August 2026 should be considered.
-- 5. Output should contain one row per restaurant.
-- 6. Sort restaurants by completed order count
--    in descending order.
-- =========================================================
-- select * from orders o where o.status="Completed"
--      and o.order_date between '2026-08-01' and '2026-08-31' ;
-- select * from restaurants;

select r.restaurant_id, r.restaurant_name, count(order_id) as completed_orders
from restaurants r
left join orders o 
	 on r.restaurant_id=o.restaurant_id
     and o.status="Completed"
     and o.order_date between '2026-08-01' and '2026-08-31'
     group by
     r.restaurant_id, r.restaurant_name
     order by completed_orders desc;
     