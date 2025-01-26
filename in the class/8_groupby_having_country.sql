select country, count(*)
from customers
group by country
--having length(country) > 5;