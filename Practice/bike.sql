-- DML insert,update,delete
use vahicle;

create table bike(
bike_no int primary key,
bike_name varchar(10) unique,
bike_price int not null 	
);

insert into bike (bike_no,bike_name,bike_price)values
(01,"bike-1",70000);

insert into bike (bike_no,bike_name,bike_price)values
(02,"bike-2",75000),
(03,"bike-3",80000),
(04,"bike-4",90000);



-- order 
-- where
-- OR,AND
-- in,between,like
select * from bike;