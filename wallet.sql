create table wallet
(
	id int not null auto_increment,
    id_customer int not null,
    balance int not null default 0,
    primary key(id),
    unique key id_customer_unique (id_customer),
    foreign key fk_wallet_customer(id_customer) references customers(id)
) engine= innodb;

desc wallet;

insert into wallet(id_customer)
values (1), (3);

select *
from wallet;

insert into wallet(id_customer)
values (1), (3);

select customers.email, wallet.balance
from wallet
join customers on (wallet.id_customer = customers.id);

select c.email, w.balance
from wallet as w
join customers as c on (w.id_customer = c.id);

select c.email as email_customer, w.balance as balance_wallet
from wallet as w
join customers as c on (w.id_customer = c.id);