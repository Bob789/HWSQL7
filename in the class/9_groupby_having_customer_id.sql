select customer_id, count(*) as number_of_orders,
     max(amount) as max_order, min(amount) as min_order, 
	 sum(amount) as total_purchase
from orders
-- where 
group by customer_id
having total_purchase > 300;

-- bad
-- find all group of customer_id where amount sum is greater than 300
-- good
-- find all customers who made purchases larger than 300
