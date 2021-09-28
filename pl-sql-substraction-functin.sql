set GLOBAL log_bin_trust_function_creators = 1;
DELIMITER //
CREATE FUNCTION substraction(val1  INT, val2 INT)
returns int

begin
declare result int;
if val1 > val2 then
set result= val1 - val2;
return result;
else
set result = 0;
set result = val2 - val1;
return result;
end if;
end; //
DELIMITER ;

select substraction(40,100)
