with recursive my_cte as(
select 1 as n   --base query
	union all
	select n+1 from my_cte  --recursive query

	where n<3     --condition check
)

select * from my_cte

select 1 as n


with recursive my_cte as(
select 1 as n   --base query
	union all
	select n+2 from my_cte  --recursive query

	where n<3     --condition check
)

select * from my_cte



create table employees(
emp_id serial primary key,
emp_name varchar not null,
manager_id int);

insert into employees(
emp_id,emp_name,manager_id)
values (1,'Madhave',null),
(2,'Sam',1),
(3,'Tom',2),
(4,'Arjun',6),
(5,'Shiva',4),
(6,'keshav',1),
(7,'Damodar',5);

select * from employees

with recursive empcte as (
--Anchor query
	select emp_id,emp_name,manager_id
	from employees
	where emp_id =7
	
	union all
	
-- Recursive query
	
	select employees.emp_id,employees.emp_name,employees.manager_id
	from employees
	join empcte
	on employees.emp_id = empcte.manager_id

)

select * from empcte

