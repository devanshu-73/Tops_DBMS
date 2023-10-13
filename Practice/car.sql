create database vahicle;

-- create database vahicle1;
-- drop database vahicle1;

show databases;
use vahicle;
create table car(
car_no int primary key,
car_name varchar(10) unique,
car_price int not null 	
);

alter table car add car_year int default 2023;
alter table car add car_mileage int;
 
alter table car drop car_mileage;
insert into car values(01,"car-1",100000);

select * from car;