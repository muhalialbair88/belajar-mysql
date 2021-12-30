create table customers
(
	id int not null auto_increment,
    email varchar(100) not null,
    first_name varchar(100) not null,
    last_name varchar(100),
    primary key(id),
    unique key email_unique(email)
) engine = innoDB;

desc customers;

alter table customers
drop constraint email_unique;

desc customers;

insert into customers(email, first_name, last_name)
values ('Ali@gmail.com', 'ali', 'albair');

select *
from customers;

insert into customers(email, first_name, last_name)
values ('Ali@gmail.com', 'ali', 'albair');

insert into customers(email, first_name, last_name)
values ('Alialbair@gmail.com', 'ali', 'albair');

select *
from customers;

desc customers;

select * 
from customers;
