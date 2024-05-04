select * from customer

select upper(first_name) from customer

select lower(last_name) from customer

select length(first_name),first_name from customer

select substring(first_name,1,3),first_name from customer

select substring(first_name,2,4),first_name from customer

select concat(first_name,last_name),first_name,last_name from customer

select replace(first_name,'Mary','Mohan'),first_name from customer