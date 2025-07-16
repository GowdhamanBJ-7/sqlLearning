use world;
SHOW databases;
show tables;

select * from city;

select * from city where ID > 100 and ID <= 200;

select * from city where ID > 100 and ID <= 110 order by population;

select count(*) from city;
select sum(population) as total_population from city;

select avg(population) from city;

select min(population) from city where population > 300;
