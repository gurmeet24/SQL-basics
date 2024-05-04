create table customer(
customer_id int8 primary key,
	first_name char(50) not null,
	last_name char(50) ,
	email char(50) not null,
	address_id int8 not null
)

select * from customer

copy customer(customer_id,first_name,last_name,email,address_id)
from 'C:\Users\Asus\Downloads\Skills\SQL\customer.csv'
delimiter ','
csv header;


select * from customer

create table payment(
customer_id int8 primary key,
	amount int8 not null,
	payment_mode char(50) not null,
	payment_date date not null
)

select * from payment

COPY payment(customer_id, amount, payment_mode, payment_date)
FROM 'C:\Users\Asus\Downloads\Skills\SQL\payment.csv'
DELIMITER ','
CSV HEADER;

select * from payment