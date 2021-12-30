create table admin(
	id int not null auto_increment,
    first_name varchar(100) not null,
    last_name varchar(100) not null,
    primary key(id)
) engine = InnoDB;

desc admin;

insert into admin(first_name, last_name)
values	('Ali','Albair'),
		('akbar','putra'),
		('yudi','susilo');
        
select *
from admin;

delete from admin where id = 3;

select *
from admin
where id = 3;

insert into admin(first_name, last_name)
values('Tono','Sanjaya');

select *
from admin;

select last_insert_id();

insert into admin(first_name, last_name)
values('putra','ahmadi');

select last_insert_id();


