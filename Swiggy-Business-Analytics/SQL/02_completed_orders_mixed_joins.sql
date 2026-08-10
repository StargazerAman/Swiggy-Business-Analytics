
-- =========================================================
-- Business Requirement:
-- Show all completed orders along with:
-- Order ID
-- Customer Name
-- Restaurant Name
--
-- Customer record may be missing.
-- Restaurant record must exist.
-- Cancelled orders must be excluded.
-- =========================================================
Select * from orders;

select o.order_id, c.customer_name, r.restaurant_name
from orders o
left join customers c
	on o.customer_id= c.customer_id
inner join restaurants r 
	on o.restaurant_id=r.restaurant_id
where o.status="Completed";