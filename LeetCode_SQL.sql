create database LeetCode; 
use LeetCode; 
-- ------------
create table Users(
user_id int auto_increment primary key,
join_date date,
favorite_brand varchar(50)
);
-- ------------------
create table Orders(
 order_id int auto_increment primary key,
 order_date date,
 item_id int,
 buyer_id int,
 seller_id int
);
-- -----------------
create table Items(
item_id int auto_increment primary key,
item_brand varchar(50)
);
-- --------------------- Query
select user_id, join_date, count(buyer_id) as orders_in_2019
from users
left join orders on users.user_id = orders.buyer_id and year(order_date) = 2019
group by user_id





 


