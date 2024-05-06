select * from payment

select payment_mode, sum(amount) as total
from payment
group by payment_mode
order by  total asc


select * from payment



select customer_id, sum(amount) as total
from payment
group by customer_id
order by total asc

select * from payment


select payment_mode, count(amount) as total
from payment 
group by payment_mode
having count(amount) >= 2 and  count(amount) <4
order by total desc