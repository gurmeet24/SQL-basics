create table custA
(cust_name char(50) not null,
 cust_amount bigint not null
)

insert into public.custA
("cust_name","cust_amount")
values ('Madan Mohan',2100),
('Gopi Nath',1200),
('Govind Dev',5000);

select * from custA



create table custB
(cust_name char(50) not null,
 cust_amount bigint not null
)

insert into public.custB
("cust_name","cust_amount")
values ('Gopal Bhat',1500),
('Madan Mohan',2100);

select * from custB

select cust_name,cust_amount
from custA
union
select cust_name,cust_amount
from custB


select cust_name,cust_amount
from custA
union all
select cust_name,cust_amount
from custB