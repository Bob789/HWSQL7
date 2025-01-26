select customer_id, count(*) as number_of_orders,
     max(amount) as max_order, min(amount) as min_order, 
	 sum(amount) as total_purchase
from orders
where order_date <> '2025-01-14' -- filter rows
group by customer_id
order by customer_id;
--having total_purchase > 300 -- filter groups
-- order by max_order;
