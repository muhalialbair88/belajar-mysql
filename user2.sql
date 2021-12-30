start transaction;

select * from guestbooks;

update guestbooks
set title = 'Diubah Oleh User 2'
where id = 9;

commit;

#LOCKING
#LOCK RECORD

start transaction;

select * 
from products;

select * 
from products 
where id = 'P0001' for update;

update products
set quantity = quantity - 10
where id = 'P0001';

commit;

select * 
from products 
where id = 'P0001';

#DEADLOCK

start transaction;

select *
from products
where id = 'P0002' for update;

select *
from products
where id = 'P0001' for update;

#LOCK TABLE READ

select * from products;

update products
set quantity = 100
where id = 'P0001';

#LOCK TABLE WRITE

select * 
from products;

#LOCK INSTANCE

alter table products
add column sample VARCHAR(100);