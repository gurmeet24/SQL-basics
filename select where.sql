create table classroom
(
    "Roll" int8 primary key,
	"Name" varchar(50) not null,
	"House" char(50) null,
	"Grade" char(50)	
);

select * from classroom

insert into public.classroom(
"Roll" ,"Name" ,"House" ,"Grade" )
values (1,'Sam','Akash','B'),
(2,'Ram','Agni','A'),
(3,'Shyam','jai','B'),
(4,'Sundar','Agni','A'),
(5,'Ram','Yayu','B');

select * from classroom

select "Roll" , "Name" , "Grade" from classroom

select distinct "Grade" from classroom


select "Name" from classroom
where "Grade" = 'A' and "Roll" > 3

select * from classroom
where "Grade" = 'A' and "Roll" > 3


select * from classroom 
order by "Name" asc



select * from classroom 
order by "Name" desc



select * from classroom 
limit 3

drop table classroom