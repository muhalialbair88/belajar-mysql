create table guestbooks(
	id int not null auto_increment,
    email varchar(100),
    title varchar(200),
    content TEXT,
    primary key (id)
)engine = innodb;

select * from customers;
insert into guestbooks(email, title, content)
values	('guest@gmail..com', 'Hello', 'Hello'),
		('guest2@gmail..com', 'Hello', 'Hello'),
        ('guest3@gmail..com', 'Hello', 'Hello'),
        ('Ali@gmail..com', 'Hello', 'Hello'),
        ('Ali@gmail..com', 'Hello', 'Hello'),
        ('Ali@gmail..com', 'Hello', 'Hello');
        
select *
from guestbooks;

select distinct email from customers;

select distinct email from guestbooks;

select email from customers
UNION
select email from guestbooks;

select email from customers
UNION ALL
select email from guestbooks;

select email, count(emails.email) from
(select email from customers
UNION ALL
select email from guestbooks)  as emails
group by emails.email;

select distinct email 
from guestbooks;

select distinct email
from customers 
where email in(select distinct email from guestbooks);

select distinct customers.email
from customers
inner join guestbooks on(guestbooks.email = customers.email);

select email
from guestbooks;

select email
from customers;

select distinct customers.email, guestbooks.email
from customers
left join guestbooks on(guestbooks.email = customers.email)
where guestbooks.email is null;

start transaction;

insert into guestbooks(email, title, content)
values	('contoh@gmail.com', 'Contoh', 'Contoh'),
		('contoh2@gmail.com', 'Contoh', 'Contoh'),
		('contoh3@gmail.com', 'Contoh', 'Contoh');
	
select * from guestbooks;

commit;

start transaction;

delete from guestbooks;

select * from guestbooks;

ROLLBACK;

