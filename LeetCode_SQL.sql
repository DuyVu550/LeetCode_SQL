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
select user_id as buyer_id, join_date, count(buyer_id) as orders_in_2019
from Users
left join Orders on Users.user_id = Orders.buyer_id and year(order_date) = 2019
group by user_id





 


