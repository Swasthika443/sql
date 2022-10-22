use org;
create table worker(
WORKER_ID int NOT NULL PRIMARY KEY,
FIRST_NAME varchar(25),
LAST_NAME varchar(25),
SALARY int,
JOINING_DATE DATETIME,
DEPARTMENT varchar(25)
);
INSERT INTO Worker VALUES
(001, 'Monika', 'Arora', 100000, '2014-02-20 12:00:00', 'HR'),
(002, 'Niharika', 'Verma', 80000, '2014-06-11 09:00:00', 'Admin'),
(003, 'Vishal', 'Singhal', 300000, '2014-02-20 09:00:00', 'HR'),
(004, 'Amitabh', 'Singh', 500000, '2014-02-20 09:00:00', 'Admin'),
(005, 'Vivek', 'Bhati', 500000, '2014-06-11 09:00:00', 'Admin'),
(006, 'Vipul', 'Diwan', 200000, '2014-06-11 09:00:00', 'Account'),
(007, 'Satish', 'Kumar', 75000, '2014-01-20 09:00:00', 'Account'),
(008, 'Geetik','Chauhan', 90000, '2014-04-11 09:00:00', 'Admin');
select * from worker;

CREATE TABLE Bonus 
(WORKER_REF_ID INT,
BONUS_AMOUNT INT,
BONUS_DATE DATE, FOREIGN KEY (WORKER_REF_ID)REFERENCES Worker(WORKER_ID) ON DELETE CASCADE
);

INSERT INTO Bonus (WORKER_REF_ID, BONUS_AMOUNT, BONUS_DATE) VALUES
(001, 5000, '2016-02-20'),
(002, 3000, '2016-06-11'),
(003, 4000, '2016-02-20'),
(001, 4500, '2016-02-20'),
(002, 3500, '2016-06-11');

select * from bonus;

CREATE TABLE Title 
(WORKER_REF_ID INT,
WORKER_TITLE CHAR(25),
AFFECTED_FROM DATETIME,FOREIGN KEY (WORKER_REF_ID)REFERENCES Worker(WORKER_ID) ON DELETE CASCADE
);

INSERT INTO Title (WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES 
(001, 'Manager', '2016-02-20 00:00:00'), 
(002, 'Executive', '2016-06-11 00:00:00'), 
(008, 'Executive', '2016-06-11 00:00:00'), 
(005, 'Manager', '2016-06-11 00:00:00'), 
(004, 'Asst. Manager', '2016-06-11 00:00:00'), 
(007, 'Executive', '2016-06-11 00:00:00'), 
(006, 'Lead', '2016-06-11 00:00:00'), 
(003, 'Lead', '2016-06-11 00:00:00');
 select * from title;

 select FIRST_NAME as WORKER_NAME from worker;
 select upper(FIRST_NAME) as WORKER_NAME from worker;
 select distinct DEPARTMENT from worker;
 select FIRST_NAME , LEFT(FIRST_NAME, 3) from worker;
 select  distinct DEPARTMENT,LEN(DEPARTMENT) as 'Length' from Worker;
 select FIRST_NAME,LAST_NAME, CONCAT(FIRST_NAME, ' ', LAST_NAME) as COMPLETE_NAME from Worker;
 select * from Worker where FIRST_NAME='Vipul' or FIRST_NAME='Satish';
 select * from Worker where DEPARTMENT='Admin';
 select * from Worker where FIRST_NAME like '%a'
 select * from Worker where FIRST_NAME like '%a%'

 create database Evry
 use Evry;
 create table Trainee(
TID int not null PRIMARY KEY ,
NAME varchar(25),
Tage int
);
select * from Trainee

