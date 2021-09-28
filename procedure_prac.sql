use medical;
show tables;

Delimiter //
Create procedure temp(rn int)
BEGIN
select * from emp;
select id from emp;
select * from emp where name='Kamal';
END; //
DELIMITER ;

CALL temp(1);