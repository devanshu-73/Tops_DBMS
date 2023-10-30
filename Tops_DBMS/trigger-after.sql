
use finance;

create table mark
(id int primary key,
mark1 int not null,
mark2 int not null); 

create table result_mark
(result int not null); 


create trigger sum
after insert on mark
for each row
insert into result_mark(result) values
(new.mark1+new.mark2);

insert into mark values
(1,30,40);

select * from mark;

select * from result_mark;