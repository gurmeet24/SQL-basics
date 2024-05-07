select * from customer

select * from payment

select *
from customer as c
full outer join payment as p
on c.customer_id = p.customer_id