use finance;

-- procedure(SQL Function) :

-- u can write any symbol for delimiter like ##,$$,**,&& ....

delimiter ## 
create procedure display()
begin

select * from student;
select * from result;
end ##

call display();

-- if u want to update your procedure then u have to drop your procedure first

drop procedure display;