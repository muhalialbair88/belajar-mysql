create user 'ali'@'localhost';
create user 'albair'@'%';

drop user 'ali'@'localhost';
drop user 'albair'@'%';

grant select on latihan_mysql.* to 'ali'@'localhost';

grant select on latihan_mysql.* to 'albair'@'%';
grant insert, update, delete on latihan_mysql.* to 'albair'@'%';

show grants for 'ali'@'localhost';
show grants for 'albair'@'%';

set password for 'ali'@'localhost' = 'rahasia';
set password for 'albair'@'%' = 'rahasia';