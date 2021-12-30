show databases;

use latihan_mysql;

show tables;

show engines;

create table barang
(
	id int,
    nama varchar(100),
    harga int,
    jumlah int
) engine = InnoDB;

desc barang;

show create table barang;

alter table barang
add column deskripsi text;

desc barang;

alter table barang
add column salah text;

desc barang;

alter table barang
drop column salah;

desc barang;

alter table barang
modify nama varchar(200) after deskripsi;

desc barang;

alter table barang
modify nama varchar(200) first;

desc barang;

alter table barang
modify nama varchar(200) not null;

desc barang;

alter table barang
modify id varchar(200) not null;

show create table barang;

desc barang;

alter table barang
modify jumlah int not null default 0;

alter table barang
modify harga int not null default 0;

desc barang;

alter table barang
add waktu_dibuat timestamp not null default current_timestamp;

desc barang;

insert into barang (id , nama)
values (1, 'Apel');

select * from barang;

truncate barang;

show tables;

drop table barang;

show tables;

