-- DML insert,update,delete
select * from employee;
use finance;
insert into employee(name,id,salary,phone_no) values
("xyz",101,"10000","785632");
insert into employee values
(103,"abc","5698741238",28000),
(104,"pqr","5698741239",25000),
(105,"xyz","5298741236",22000);

update employee
set salary=30000
where id=103;

update employee
set name="hello"
where name="pqr";

update employee
set id=103
where id=102;

update employee
set id=111
where id=102;

delete from employee
where id=111;

insert into employee(name,id,phone_no) values
("xyz",110,"785635");

update employee
set salary=15000
where id=110;

