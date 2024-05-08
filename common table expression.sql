select * from paymentd

select * from customer

with my_cte as(
	select * , avg(amount) over(order by p.customer_id) as "Average_price",
	count(address_id) over(order by c.customer_id) as "Count"
	from paymentd as p
	inner join customer as c
	on p.customer_id = c.customer_id
)
select first_name,last_name
from my_cte

select * from customer


with my_cte as(
	select * , avg(amount) over(order by p.customer_id) as "Average_price",
	count(address_id) over(order by c.customer_id) as "Count"
	from paymentd as p
	inner join customer as c
	on p.customer_id = c.customer_id
),
my_ca as(
select * from customer as c
inner join address as a
on a .address_id = c.address_id
inner join country as cc
on cc.city_id = a.city_id
)
select cp.first_name,cp.last_name,ca.city,ca.country,cp.ammount
from my_ca as ca, my_cp as cp


----

with my_cte as(
select mode,max(amount) as highest_price,sum(amount) as total_price
	from paymentd
	group by mode
)
select paymentd.*,my.highest_price,my.total_price
from payment
join my_cte my
on paymentd.mode = my.mode
order by paymentd.mode
