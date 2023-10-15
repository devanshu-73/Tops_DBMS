-- DML insert,update,delete
use vahicle;
create table bike(
bike_no int primary key,
bike_name varchar(10) unique,
bike_price int not null 	
);

select * from bike;