create table customer
(
    "ID" int8 primary key,
	"Name" varchar(50) not null,
	"Age" int not null,
	"City" char(50),
	"Salary" numeric
);

Select * from customer

INSERT INTO public.customer(
	"ID", "Name", "Age", "City", "Salary")
	VALUES (1,'Ram',26,'Delhi',7000),
	(2,'Ram',27,'DC',7000),
(3,'Ra',36,'Dubai',10000),
(4,'Do',28,'Dublin',9000);

Select * from customer


UPDATE public.customer
	SET  "Name"='xam', "Age"=32
	WHERE "ID"=1;
	
Select * from customer

delete from customer
where "ID"=1;

Select * from customer

alter table public.customer
add  column "Department_Name" char(50) ;

Select * from customer


	truncate table customer;
	
	select * from customer
	
	drop table customer;
	
