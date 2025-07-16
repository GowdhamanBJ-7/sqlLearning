create database information;

use information;

create table students(
	studentID int, studentName varchar(50), age int);
    
drop database info;

ALTER TABLE Students
ADD DateOfBirth DATE;

ALTER TABLE Students ADD Email VARCHAR(100);

alter table students change Email emailaddress varchar(100);
ALTER TABLE Students
DROP COLUMN age;

select * from students;

TRUNCATE TABLE Students;

drop table students;
