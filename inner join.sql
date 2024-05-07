select * from customer
select * from payment

select *
from customer AS c
inner join payment as p
on c.customer_id = p.customer_id


select c.first_name, p.amount,p.payment_mode
from customer AS c
inner join payment as p
on c.customer_id = p.customer_id