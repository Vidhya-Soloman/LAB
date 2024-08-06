create database demo;
use demo;
create table student(id int primary key,name varchar(50),age int);
create table mark(rollno int primary key,mark1 int,mark2 int,id int,foreign key(id) references student(id) on delete cascade);
desc student;
desc mark;
insert into student(id,name,age) values(1,"A",19),(2,"B",19),(3,"C",19),(4,"D",18);
select * from student;

insert into mark(rollno,mark1,mark2,id)values(1,20,20,1),(2,19,15,2),(3,20,14,3),(4,16,20,4);
select * from mark;
delete from mark where id=3;
update student set name="abc" where id=1;
