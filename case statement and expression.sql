create table paymentd(
customer_id int8 primary key,
	amount int8 not null,
	mode char(25) not null,
	payment_date date not null
)

SET datestyle = 'ISO, DMY';

select * from paymentd

copy paymentd(customer_id,amount,mode,payment_date)
from 'C:\Users\Asus\Downloads\Skills\SQL\payment-case statement.csv'
delimiter ','
csv header;

select * from paymentd

--case general statement syntax

select customer_id,amount,
case
when amount>100 then 'Expensive product'
when amount = 100 then 'Moderate product'
else 'Inexpensive product'
end as productstatus
from paymentd

--case expression statement syntax

select customer_id,
case amount 
when 500 then 'Prime customer'
when 100 then 'Plus customer'
else 'Regular customer'
end as customerstatus
from paymentd