set autocommit = 0;


create database dev1;
use dev1;

create table dev
(id int primary key,
name varchar(5));

insert into dev values 
(1,"dev");

savepoint A;

insert into dev values 
(2,"dev2");

select * from dev;

rollback to A;

