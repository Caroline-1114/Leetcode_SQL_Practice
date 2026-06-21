select customer_id , count(customer_id) as count_no_trans
from visits left outer join transactions 
on visits.visit_id = transactions.visit_id
where transaction_id is null 
group by customer_id
