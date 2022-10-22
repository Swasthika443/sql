create database flipzone_api
use flipzone_api
create table registration
(
id int primary key identity(1,1),
username varchar(25),
useremail varchar(40),
PASSWORD VARCHAR(25),
mobile varchar(25)
)
select* from registration