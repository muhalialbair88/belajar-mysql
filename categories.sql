create table categories
(
	id varchar(10) not null,
	name varchar(100) not null,
    primary key(id)
) engine = innodb;

desc categories;

alter table products
	drop column category;
    
alter table products
add column id_category varchar(10);

alter table products
	add constraint fk_products_categories
		foreign key (id_category) references categories (id);

show create table products;

select *
from products;

insert into categories(id, name)
values	('C0001', 'Makanan'),
		('C0002', 'Minuman'),
        ('C0003', 'Lain-Lain');

select * 
from categories;

update products
set id_category = 'C0001'
where id IN ('P0001', 'P0002', 'P0003', 'P0004', 'P0005', 'P0006', 'P0013', 'P0014', 'P0015'); 

select *
from products;

update products
set id_category = 'C0002'
where id IN ('P0007', 'P0008', 'P0009');

select *
from products;

update products
set id_category = 'C0003'
where id IN ('P0010', 'P0011', 'P0012', 'P0016', 'Pxxxx');

select products.id, products.name, categories.name
from products
join categories on (categories.id = products.id_category);

select p.id, p.name, c.name
from products as p
join categories as c on (c.id = p.id_category);

select p.id as id_product, p.name as name_product, c.name as name_customer
from products as p
join categories as c on (c.id = p.id_category);