use student;

create table Students(
roll_no int, name1 char(30) , age int, course char(30) 
);

show tables;

insert into Students values
(11,"anu",20,"BSC"),
(12,"asha",21,"BCOM"),
(13,"arpit",20,"BCA"),
(14,"chetan",20,"BCA"),
(15,"Nihal",19,"BBA");

select * from Students;

delimiter /

create trigger CheckAge
before
insert on students
for each row
begin
if new.age >= 30 then
set  new.age = new.age+1;
end if;
end; /
delimiter ;

insert into Students values
(16,"kamal2",30,"CSE"),
(17,"GOD_all",986,"Humanities");

create table temp (val int);
drop table temp;




