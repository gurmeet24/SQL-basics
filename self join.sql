create table emp(
empid int8 primary key,
empname char(50) not null,
manager_id int8 not null)


select * from emp

insert into public.emp(
"empid","empname","manager_id")
values(1,'Agni',3),
(2,'Akash',4),
(3,'Dharti',2),
(4,'Vayu',3);

select * from emp

select * 
from emp as T1
join emp as T2
on T2.empid = T1.manager_id


select T1.empname as employee_name,T2.empname as manager_name
from emp as T1
join emp as T2
on T2.empid = T1.manager_id