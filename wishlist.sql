create table wishlist
(
    id int not null auto_increment,
    id_product  varchar(10) not null,
    description text,
    primary key (id),
    constraint fk_wishlist_product
        foreign key (id_product) references products (id)
) engine = InnoDB;

desc wishlist;

show create table wishlist;

alter table wishlist
    drop constraint fk_wishlist_product;

alter table wishlist
    add constraint fk_wishlist_product
        foreign key (id_product) references products (id)
            on delete cascade on update cascade;

insert into wishlist(id_product, description)
values ('P0001', 'Makanan Kesukaan');

insert into wishlist(id_product, description)
values ('SALAH', 'Makanan Kesukaan');

insert into wishlist(id_product, description)
values ('Pxxxx', 'Makanan Kesukaan');

insert into wishlist(id_product, description)
values ('Pxxxx', 'Makanan Kesukaan');

insert into wishlist(id_product, description)
values ('Pxxxx', 'Makanan Kesukaan');

select *
from wishlist;

delete
from products
where id = 'Pxxxx';

select *
from wishlist
join products on (wishlist.id_product = products.id);

select wishlist.id, products.id, products.name, wishlist.description
from wishlist
join products on (wishlist.id_product = products.id);

select w.id, p.id, p.name, w.description
from wishlist as w
join products as p on (w.id_product = p.id);

select w.id as id_wishlist, 
p.id as id_product, 
p.name as product_name, 
w.description as wishlist_description
from wishlist as w
join products as p on (w.id_product = p.id);

alter table wishlist
add column id_customer int;

desc wishlist;

alter table wishlist 
modify id_customer int after id_product;

desc wishlist;

alter table wishlist
add constraint fk_wishlist_customer
foreign key(id_customer) references customers(id);

show create table wishlist;

update wishlist
set id_customer = 1
where id = 1;

select *
from wishlist;

select customers.email, products.id, products.name, wishlist.description
from wishlist
join products on (wishlist.id_product = products.id)
join customers on (wishlist.id_customer = customers.id);

select c.email, p.id, p.name, w.description
from wishlist as w
join products as p on (w.id_product = p.id)
join customers as c on (w.id_customer = c.id);

select c.email as email_customer, 
p.id as id_product, 
p.name as name_product, 
w.description as description_wishlist
from wishlist as w
join products as p on (w.id_product = p.id)
join customers as c on (w.id_customer = c.id);