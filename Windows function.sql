create table test(
new_id int8 not null,
new_cat char(25) not null)

select * from test


insert into public.test
("new_id","new_cat")
values(100,'Agni'),(200,'Agni'),(200,'Vayu'),(300,'Vayu'),(500,'Vayu'),(500,'Dharti'),(700,'Dharti');

select * from test

--Agregate Function (Windows Function)

select new_id,new_cat,
sum(new_id) over(order by new_id rows between unbounded preceding and unbounded following) as "Total",
AVG(new_id) over(order by new_id rows between unbounded preceding and unbounded following) as "Average",
Min(new_id) over(order by new_id rows between unbounded preceding and unbounded following) as "Minimum",
Max(new_id) over(order by new_id rows between unbounded preceding and unbounded following) as "Maximum"
from test

--Ranking Function (Windows Function)

select new_id,
row_number() over (order by new_id) as "Row_number",
rank() over (order by new_id) as "Rank",
dense_rank() over (order by new_id) as "Dense_Rank",
percent_rank() over (order by new_id) as "Percent_Rank"
from test

--Analytic Function (Windows Function)

select new_id,
first_value(new_id) over (order by new_id) as "First_value",
last_value(new_id) over (order by new_id) as "Last_value",
lead(new_id) over (order by new_id) as "Lead",
lag(new_id) over (order by new_id) as "Lag"
from test


--Question offset the lead and lag value by 2 in the output columns?

select new_id,
lead(new_id,2) over (order by new_id) as "Lead",
lag(new_id,2) over (order by new_id) as "Lag"
from test

