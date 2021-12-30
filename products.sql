create table products(
id varchar(10) not null,
name varchar(100) not null,
description text,
price int unsigned not null,
quantity int unsigned not null default 0,
create_at timestamp not null default current_timestamp
)engine = innodb;

show tables;

desc products;

insert into products(id, name, price, quantity)
values('P0001', 'Mie Ayam Original', 15000, 100);

select 
* from products;

insert into products(id, name, description, price, quantity)
values('P0002', 'Mie Ayam Bakso', 'Mie Ayam Original + Bakso', 20000, 100);

select *
from products;

insert into products(id, name, price, quantity)
values	('P0003', 'Mie Ayam Ceker', 20000, 100),
		('P0004', 'Mie Ayam Spesial', 25000, 100),
		('P0005', 'Mie Ayam Yamin', 15000, 100);

select * from products;

select id, name, price, quantity from products;

select name, quantity, id from products;

alter table products
add primary key(id);

desc products;

show create table products;

insert into products(id, name, price, quantity)
values('P0001', 'Mie Ayam Original', 15000, 100);

select *
from products
where quantity = 100;

select *
from products
where price = 15000;

select *
from products
where id = 'P0001';

select *
from products
where name = 'mie ayam bakso';

desc products;

alter table products
add column category enum('makanan', 'minuman', 'lain-lain');

select *
from products;

select *
from products
where id = 'P0001';

update products
set category = 'Makanan'
where id = 'P0001';

select *
from products;

update products
set category = 'Makanan',
	description = 'Mie Ayam Original + Ceker'
where id = 'P0001';

select * from products;

update products
set price = price + 5000
where id = 'P0005';

select * 
from products;

insert into products(id, name, price, quantity)
values('P0009','salah',202122, 100);

select * 
from products;

delete
from products
where id = 'P0009';

select * 
from products;

select id, name, category, price, quantity
from products;

select	id as 'Kode',
		name as 'Nama',
        category as 'Kategori',
        price as 'Harga',
        quantity as 'Jumlah'
from products;

select	p.id as 'Kode',
		p.name as 'Nama',
        p.category as 'Kategori',
        p.price as 'Harga',
        p.quantity as 'Jumlah'
from products as p;

insert into products(id, category, name, price, quantity)
values	('P0006', 'makanan', 'Bakso Rusuk', 25000, 200),
		('P0007', 'minuman', 'Es Jeruk', 10000, 300),
        ('P0008', 'minuman', 'Es Campur', 15000, 500),
        ('P0009', 'minuman', 'Es Teh Manis', 5000, 400),
        ('P0010', 'lain-lain', 'Kerupuk', 2500, 1000),
		('P0011', 'lain-lain', 'Keripik Udang', 10000, 300),
		('P0012', 'lain-lain', 'Es Krim', 5000, 200),
        ('P0013', 'makanan', 'Mie Ayam Jamur', 20000, 150),
        ('P0014', 'makanan', 'Bakso Telor', 20000, 150),
		('P0015', 'makanan', 'Mie Ayam Jondo', 25000, 300);

select *
from products
where quantity > 100;

select *
from products
where quantity >= 100;

select *
from products
where category != 'makanan';

select *
from products
where category != 'minuman';

select *
from products
where category != 'lain-lain';

select *
from products
where quantity > 100 and price > 20000;

select *
from products
where category = 'makanan' and price < 20000;

select *
from products
where quantity > 100 or price > 20000;

select *
from products
where category = 'makanan' or quantity > 500 and price > 20000;

select *
from products
where (category = 'makanan' or quantity > 500) and price > 20000;

select *
from products;

update products
set name = 'Mie Ayam Jando'
where id = 'P0015';

select * 
from products;

select *
from products
where name like '%mie%';


select *
from products
where name like '%bakso%';


select *
from products
where name like '%usu%';

select *
from products 
where description is null;

select *
from products 
where description is not null;

select *
from products 
where price between 10000 and 20000;

select *
from products 
where price not between 10000 and 20000;

select *
from products
where category = 'makanan' or category = 'minuman';

select *
from products
where category IN('makanan', 'minuman');

select *
from products
where category NOT IN('makanan', 'minuman');

select id, category, name
from products 
order by category;

select id, category, price, name
from products 
order by category asc, price desc;

select *
from products 
order by price asc, id desc;

select *
from products 
order by id limit 5;

select *
from products 
order by id limit 5, 5;

select *
from products 
order by id limit 10, 5;

select *
from products 
order by id limit 15, 5;

select category
from products;

select distinct category
from products;

select 10, 10, 10 * 10 as Hasil;

select id, name, price, price DIV 1000 as 'Price in K'
from products;

select id, cos(price), sin(price), tan(price)
from products;

select id, name, price 
from products
where price DIV 1000 > 15;

select	id,
		lower(name) as 'Name Lower',
		upper(name) as 'Name Upper',
		length(name) as 'Name Length'
from products;

show create table products;

alter table products
change create_at created_at timestamp NOT NULL default 0;

select	id, created_at,
		extract(year from created_at)  as Year,
        extract(month from created_at)  as month
from products;
        

select	id,
		category,
		case category
			when 'makanan' then 'enak'
            when 'minuman' then 'segar'
            else 'apa itu?'
            end as 'Category'
from products;
    
select	id,
		price,
		if(price <= 15000, 'murah', 
        if(price <= 20000, 'mahal' ,
        'mahal banget')) as 'mahal?'
from products;

select 	id, name,
		ifnull(description, 'kosong')
from products;

select count(id) as 'total product'
from products;

select max(price) as 'product termahal'
from products;

select min(price) as 'product termurah'
from products;

select avg(price) as 'rata-rata harga'
from products;

select sum(quantity) as 'total stock'
from products;

select count(id) as 'total product', category
from products
group by category;

select max(price) as 'product termahal', category
from products
group by category;

select min(price) as 'product termurah', category
from products
group by category;

select avg(price) as 'rata-rata harga', category
from products
group by category;

select sum(quantity) as 'total stock', category
from products
group by category;

select count(id) as 'total', category
from products
group by category
having total < 5;

select *
from products;

insert into products(id, name, category, price, quantity)
values ('P0016', 'Permen', 'lain-lain', 500, 1000);

select *
from products;

update products
set price = 1000
where id = 'P0016';

select *
from products;

alter table products
add constraint price_check check (price >= 1000);

show create table products;

insert into products(id, name, category, price, quantity)
values ('P0017', 'Permen', 'lain-lain', 500, 1000);

update products
set price = 500
where id = 'P0016';

alter table products
add fulltext product_fulltext(name, description);

show create table products;

select *
from products;

select *
from products
where name like '%ayam%' or description LIKE '%ayam%';

select *
from products
where match(name, description)
	against('ayam' in natural language mode);


select *
from products
where match(name, description)
	against('+ayam -bakso' in boolean mode);
    
select *
from products
where match(name, description)
	against('+ayam -bakso' with query expansion);

desc products;

INSERT INTO products(id, name, category, price, quantity)
values('Pxxxx', 'contoh', 'lain-lain', 1000, 1000);

select *
from products;

desc products;

insert into categories(id, name)
values	('C0004', 'Oleh-Oleh'),
		('C0005', 'Gadget');
        
insert into products(id, name, price, quantity)
values	('X0001', 'X Satu', 25000, 200),
		('X0002', 'X Dua', 10000, 300),
        ('X0003', 'X Tiga', 15000, 500);
        
select *
from products;

select * 
from categories
inner join products on(products.id_category = categories.id);

select * 
from categories
join products on(products.id_category = categories.id);

select * 
from categories
left join products on(products.id_category = categories.id);

select * 
from categories
right join products on(products.id_category = categories.id);

select * 
from categories
cross join products;

