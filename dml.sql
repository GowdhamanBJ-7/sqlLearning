use information;

insert into students values
(1,'kishore','2003-10-06','rajan777@gmail.com'), 
(2,'Arun','2004-10-03','arun@gmail.com');

insert into students (studentID, studentName) values (1,'Ravi');


SET SQL_SAFE_UPDATES = 0;
UPDATE Students
SET studentName = 'kirshore rajan'
WHERE studentID = 1;

-- delete
delete from students where studentID=1;

select * from students;