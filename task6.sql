create table cat_data(
	serial_no int,
	Breed varchar,
	Age int, 
	Weight int,
	Color varchar,
	Gender varchar
)

copy cat_data from 'C:\Program Files\PostgreSQL\16\backup\cats_dataset khushi.csv' DELIMITER ',' CSV Header;

select * from cat_data

create table all_data(
    serial_no int,
	center_id int,
	center_city	varchar,
	center_state varchar,
	score int
)

copy all_data from 'C:\Program Files\PostgreSQL\16\backup\all_data khushi.csv' DELIMITER ',' CSV Header;



select * from all_data



create table insurance(
	age int,
	gender varchar,
	children int,
	region varchar,
	Weight int
)

copy insurance from 'C:\Program Files\PostgreSQL\16\backup\insurance khushi.csv' DELIMITER ',' CSV Header;

select * from insurance

-------INNER JOIN-----
select * from all_data
select * from cat_data

select a.serial_no, a.score, c.serial_no, c.weight from all_data as a
inner join cat_data as c
on  a.score = c.weight
group by a.score, c.weight

---------RIGHT JOIN--------

select * from cat_data
select * from insurance

select c.age, i.age from cat_data as c
right join insurance as i
on c.age = i.age
order by c.age > 20 asc
limit 10


------LEFT JOIN-----

select * from cat_data
select * from insurance

select c.gender from cat_data as c
left join insurance as i
on c.gender = i.gender
group by c.gender
