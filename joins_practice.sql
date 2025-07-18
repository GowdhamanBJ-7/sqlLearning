use learnjoins;
show tables;
create database learnjoins;
create table employees (emp_id int, emp_name varchar(50), dep_id int);
create table departments(dept_id int, dep_name varchar(50));

insert into employees values
(1,'Arun',101),
(2,'Kumar',105),
(3, 'kavin', 105),
(4, 'rahul',105),
(5,'ravi',109),
(6,'mohan',101),
(7,'prakash',104);

insert into departments values
(101, 'A'),
(102,'B'),
(103,'C'),
(105,'D'), -- IT
(106,'E'),
(107,'F'),
(108,'G'),
(109,'H'),
(110,'I'),
(111,'J');

-- list employee who works in department "D"

select e.emp_name, d.dept_id ,  d.dep_name from employees e inner join departments d 
on e.dep_id = d.dept_id 
where d.dep_name = "D";

-- Show employee and department names, but only for employees whose name starts with ‘A’ or ‘B’.

select e.emp_name, d.dep_name from employees e join departments d on e.dep_id = d.dept_id where
e.emp_name like 'A%' or d.dep_name like 'B%';

-- show the employee not belong to any department
select e.emp_name, d.dep_name from employees e left join departments d on e.dep_id = d.dept_id
where d.dep_name is null;

-- Show departments that do not have any employees
select d.dept_id,d.dep_name from employees e right join departments d on e.dep_id = d.dept_id
where e.emp_name is not null;

-- Display each department and the number of employees in it
select d.dep_name, count(e.emp_name) as emp_count from employees e right join departments d
on e.dep_id = d.dept_id group by d.dep_name having emp_count >= 1;