create table categories
(
	id varchar(10) not null,
	name varchar(100) not null,
    primary key(id)
) engine = innodb;

drop table category;
desc category;

alter table products
	drop column category;
    
alter table products
add column id_category varchar(10);

alter table products
add constraint