use department;
select * from Cleaners;
insert into Cleaners 
values ("1", "5.00", "7.00");

select * from Drinks;
insert into Drinks 
values ("2", "1.50", "1.75");

select * from Employee;
insert into Employee
values ("3", "John", "Smith");

select * from Employee where idEmployee = 3;
select * from Drinks where idDrinks = 2;
delete from Cleaners where idCleaners = 1;

create table Electronics(
	id int,
    ask_name varchar(45),
    Tv_offers varchar(45)
);

drop table Electronics;


    
    



