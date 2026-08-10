
-- =========================================================
-- Business Requirement:
-- For every completed order, show:
-- Order ID
-- Customer Name
-- Restaurant Name
-- Order Amount
--
-- Requirements:
-- 1. Exclude cancelled orders.
-- 2. Customer must have a valid record.
-- 3. Restaurant must have a valid record.
-- =========================================================
select o.order_id, c.customer_name, r.restaurant_name, o.amount
from orders o
join customers c on
	o.customer_id=c.customer_id
join restaurants r on
	o.restaurant_id= r.restaurant_id
where o.status="Completed"