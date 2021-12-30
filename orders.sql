create table orders
(
	id int not null auto_increment,
    total int not null,
    order_date datetime not null default current_timestamp,
    primary key(id)
) engine = innodb;

desc orders;

create table orders_detail(
	id_product varchar(10) not null,
    id_order int not null,
    price int not null,
    quantity int not null,
    primary key(id_product, id_order)
) engine = innodb;

desc orders_detail;

alter table orders_detail
add constraint fk_orders_detail_product
foreign key (id_product) references products(id);

desc orders_detail;

show create table orders_detail;

select *
from orders;

insert into orders(total)
values (50000);

select *
from orders;

select *
from orders_detail;

insert into orders_detail(id_product, id_order, price, quantity)
values  ('P0001', 1, 25000, 1),
		('P0002', 1, 25000, 1);
        
insert into orders_detail(id_product, id_order, price, quantity)
values  ('P0003', 2, 25000, 1),
		('P0004', 3, 25000, 1);

insert into orders_detail(id_product, id_order, price, quantity)
values	('P0001', 2, 25000, 1),
		('P0003', 3, 25000, 1);
        
select *
from orders_detail;

select * from orders;

select * 
from orders
join orders_detail on (orders.id = orders_detail.id_order)
join products on (products.id = orders_detail.id_product);

select * 
from orders as o
join orders_detail as od on (o.id = od.id_order)
join products as p on (od.id_product = p.id);



