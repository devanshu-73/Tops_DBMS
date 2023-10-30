-- Trigger (auto invoke)
-- Type of Triggers 
-- 1) Before 
-- 2) After
-- event: insert,update,delete

use finance;

create table stud
(id int primary key,
mark1 int not null,
mark2 int not null,
total int); 

-- Create a trigger to calculate the total marks for each student
-- DELIMITER $$
-- CREATE TRIGGER calcy
-- BEFORE INSERT ON stud
-- FOR EACH ROW
-- BEGIN
--     SET NEW.total = NEW.mark1 + NEW.mark2;
-- END;
-- $$

drop trigger calcy;

DELIMITER $$

CREATE TRIGGER calcy
BEFORE INSERT ON stud
FOR EACH ROW
BEGIN
    -- Check if mark1 or mark2 is greater than 100
    IF NEW.mark1 >= 100 OR NEW.mark2 >= 100 THEN
        SET NEW.total = 0;
    ELSE
        SET NEW.total = NEW.mark1 + NEW.mark2;
    END IF;
END;
$$

INSERT INTO stud (id, mark1, mark2) VALUES (1, 85, 92);

INSERT INTO stud (id, mark1, mark2) VALUES (2, 100, 100);

INSERT INTO stud (id, mark1, mark2) VALUES (3, 100, 100);

SELECT * FROM stud;