-- DML insert,update,delete


create table bike(
bike_no int primary key,
bike_name varchar(10) unique,
bike_price int not null 	
);
select * from bike;