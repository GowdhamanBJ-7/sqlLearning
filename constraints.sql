use information;

create table employee 
			(empid int primary key, empName varchar(50));
            
select * from employee;

create table course(
			courseID int, 
            courseName varchar(50),
            empIDs int,
            foreign key (empIDs) references employee (empid));
select * from course;

create table vehicle
			(vehicleID int, 
            vehicleNumber int, 
            vehicleType varchar(50), 
            primary key(vehicleID, vehicleNumber));
select * from vehicle;


create table team(
		ID int unique,
        teamName varchar(50) not null,
        teamCount int,
        place varchar(100),
        check (teamCount > 5));
select * from team;
insert into team values(1, 'oddTeam', 8, 'ind');
insert into team (teamName,teamCount) values ('evenTeam',7);


CREATE TABLE accounts (
    account_id INT PRIMARY KEY,
    account_type VARCHAR(20),
    minimum_balance INT,
    CHECK (
        (account_type = 'savings' AND minimum_balance >= 1000) OR
        (account_type = 'current' AND minimum_balance >= 5000)
    )
);
