start transaction;

select * from guestbooks;

update guestbooks
set title = 'Diubah Oleh User 1'
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

#DEADLOCK

start transaction;

select *
from products
where id = 'P0001' for update;

select *
from products
where id = 'P0002' for update;

#LOCK TABLE READ

lock tables products read;

update products
set quantity = 100
where id = 'P0001';

unlock tables;

#LOCK TABLE WRITE

lock table products write;

update products
set quantity = 100
where id = 'P0001';

select * 
from products;

unlock table;

#LOCK INSTANCE

lock instance for backup;

unlock instance;