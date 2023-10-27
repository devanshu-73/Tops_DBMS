
use finance;

-- DCL : grant,revoke
-- first u have to create user and give password



create user admin_1 identified by "pass@123";
grant insert,update on finance.* to admin_1;
show grants for admin_1;
revoke update on finance.* from admin_1;

-- TCL
-- commit,rollback,savepoint

create table emp(
id int primary key,
name varchar(10) not null,
age int check(age>18));

insert into emp values
(1,"dev",19);

commit; -- commit to save 


insert into emp values
(2,"dev2",20);

rollback; -- getback to last commit

insert into emp values
(3,"dev3",21);
savepoint A;


insert into emp values
(4,"dev4",22);

savepoint B;

insert into emp values
(5,"dev5",23);
rollback to B;
select * from emp;