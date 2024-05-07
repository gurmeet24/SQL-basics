select * from payment
--average value
select avg(amount) from payment

--filter customer data > avg value (dynamic)

select * from payment
where amount> 48.00


--filter customer data > avg value (dynamic) (subquery)

select * from payment
where amount> (select avg(amount) from payment)



--in query
select * from customer

select customer_id from customer

select customer_id,amount,payment_mode from payment
	where customer_id  in (select customer_id from customer)
	
	
--exist query
select * from payment

select first_name,last_name from customer c
where exists(select customer_id,amount from payment p
				where p.customer_id= c.customer_id and  amount>50)


select customer_id,amount from payment
where amount>50
