create table numbers(
	id int not null,
    primary key (id)
)engine = innodb;

insert into numbers(id)
values (1),(2),(3),(4),(5),(6),(7),(8),(9),(10);

select numbers1.id, numbers2.id, (numbers1.id * numbers2.id)
from numbers as numbers1
cross join numbers as numbers2
order by numbers1.id, numbers2.id;

select AVG(price) from products;

select * 
from products 
where price > (select AVG(price) from products);

select max(price) from products;

select * from products;

select price from categories
join products on(products.id_category = categories.id);

select max(cp.price) from (select price from categories
right join products on(products.id_category = categories.id)) as cp;

update products
set price = 1000000
where id = 'X0003';