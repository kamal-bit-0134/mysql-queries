use medical;
show tables;

Delimiter //
Create procedure del(rn int)
BEGIN
select * from emp;
END; //
DELIMITER ;

CALL del(1);
drop procedure del;