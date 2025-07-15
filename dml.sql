use information;

insert into students values
(1,'kishore','rajan777@gmail.com','2003-10-06');

SET SQL_SAFE_UPDATES = 0;
UPDATE Students
SET studentName = 'kirshore rajan'
WHERE studentID = 1;


select * from students;