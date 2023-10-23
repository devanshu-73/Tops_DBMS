use finance;

create table student(
id int primary key,
name varchar(10));

create table result(
id int primary key,
result varchar(5));

alter table result add marks int default 0;

delete from student
where id=2;

delete from result
where id=3;

insert into student values
(1,"a"),
(3,"c"),
(4,"d");

insert into result values
(1,"PASS",76),
(2,"FAIL",32),
(4,"FAIL",27);

-- JOINS : 

-- INNER JOIN :
select s.id,s.name,r.result from student as s inner join result as r on s.id = r.id; 

-- LEFT JOIN :
select s.id,s.name,r.result from student as s left join result as r on s.id = r.id; 

-- RIGHT JOIN :
select s.id,s.name,r.result from student as s right join result as r on s.id = r.id; 

-- FULL JOIN :
select s.id,s.name,r.result from student as s left join result as r on s.id = r.id 
union
select s.id,s.name,r.result from student as s right join result as r on s.id = r.id; 

select * from student;

select * from result;
