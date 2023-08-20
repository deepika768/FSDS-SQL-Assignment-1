create database assignment1;
use assignment1;

##1

create table if not exists skills(
ID int,
technology varchar(20))

insert into skills values
(1,'DS'),
(1,'POWERBI'),
(1,'TABLEAU'),
(2,'PYTHON'),
(2,'POWERBI'),
(2,'SQL'),
(1,'SQL'),
(3,'POWERBI'),
(3,'PYTHON'),
(1,'PYTHON')

SELECT id
FROM skills
GROUP BY id
HAVING COUNT(DISTINCT technology) = (SELECT COUNT(DISTINCT technology) FROM skills);


##2

create table if not exists product_info(
product_id int,
product_name varchar(20));

insert into product_info values
(1001,'Blog'),
(1002,'Youtube'),
(1003,'Education');

select * from product_info;

create table if not exists product_info_likes(
user_id int,
product_id int,
liked_date date);

insert into product_info_likes values
(1,1001,'2023-08-19'),
(2,1002,'2023-01-18');

select * from product_info_likes;

select p1.product_id from product_info p1 
left join product_info_likes p2 on p1.product_id=p2.product_id
 where p1.product_id not in(select product_id from product_info_likes);