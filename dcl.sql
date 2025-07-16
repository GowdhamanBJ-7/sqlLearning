use world;
grant select, insert on world.* to 'friends';

revoke insert on world.* from 'friends';

use information;
select * from students;
GRANT SELECT, INSERT ON students TO 'friends';

revoke select, insert on students from 'friends';

grant select(studentID, studentName) on students to 'friends';

SHOW GRANTS FOR 'friends';
