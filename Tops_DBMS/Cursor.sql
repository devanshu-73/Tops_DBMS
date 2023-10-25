-- cursor
delimiter $$

create procedure display()

begin

declare c_id int;
declare c_name varchar(100);
declare c_finished int default 0;
declare c2 cursor for select * from employee1;
declare continue handler for not found set cu_finished=1;

open c2;

get_data1:LOOP
	fetch c2 into cu_id,cu_name;
    select concat(cu_id,concat(' - ',c_name));
    if cu_finished=1
		then leave get_data1;
      end if;  
	end LOOP get_data1;
	
close c2;
end $$

drop procedure display;

call get_infomation;
