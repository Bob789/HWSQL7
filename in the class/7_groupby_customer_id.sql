select customer_id, count(*) as number_of_orders,
     max(amount) as max_order, min(amount) as min_order, 
	 sum(amount) as total_purchase
from orders
group by customer_id;
