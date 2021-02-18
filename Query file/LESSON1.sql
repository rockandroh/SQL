-- Things we do here
-- 1. Create Database 2. Create Table 3. Insert Values

create database mytest

use mytest

create table mytest
(
rollno int,
firstname varchar(50),
lastname varchar(50)
)

select rollno, firstname, lastname from mytest

insert into mytest(rollno, firstname, lastname)
values(1, 'Roh', 'Hyunwoo')

select rollno, firstname, lastname from mytest