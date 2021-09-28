set GLOBAL log_bin_trust_function_creators = 1;
DELIMITER //
CREATE FUNCTION multi(val1  INT, val2 INT)
returns int

begin
declare result int;
set result= val1 * val2;
return result;

end; //
DELIMITER ;

select multi(40,100)
