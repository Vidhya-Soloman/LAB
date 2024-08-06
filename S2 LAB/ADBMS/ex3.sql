create database ex3;
use ex3;

create table student(name varchar(50),student_number int primary key,class int,major varchar(50));
desc student;

create table course(course_name varchar(50),course_number varchar(50) primary key,credit_hours int,department varchar(50));
desc course;

create table section(section_identifier int primary key,course_number varchar(50),semester varchar(50),year int,instructor varchar(50),
foreign key(course_number)references course(course_number));
desc section;


create table grade_report(student_number int,section_identifier int,grade varchar(10),foreign key(student_number)references 
student(student_number),foreign key(section_identifier) references section(section_identifier));
desc grade_report;

create table prerequisite(course_number varchar(50),prerequisite_number varchar(50) primary key,foreign key(course_number)
references course(course_number));
desc prerequisite;

insert into student values('Smith',17,1,'CS');
insert into student values('Brown',8,2,'CS');

insert into course values('Intro to Computer Science','CS1310',4,'CS');
insert into course values('Data Structures','CS3320',4,'CS');
insert into course values('Discrete Mathematic','MATH2410',3,'MATH');
insert into course values('Database','CS3380',3,'CS');

insert into section values(85,'MATH2410','Fall',07,'King');
insert into section values(92,'CS1310','Fall',07,'Anderson');
insert into section values(102,'CS3320','Spring',08,'Knuth');
insert into section values(112,'MATH2410','Fall',08,'Chang');
insert into section values(119,'CS1310','Fall',08,'Anderson');
insert into section values(135,'CS3380','Fall',08,'Stone');

insert into grade_report values(17,112,'B');
insert into grade_report values(17,119,'C');
insert into grade_report values(8,85,'A');
insert into grade_report values(8,92,'A');
insert into grade_report values(8,102,'B');
insert into grade_report values(8,135,'A');

insert into prerequisite values('CS3380','CS3320');
insert into prerequisite values('CS3380','MATH2410');
insert into prerequisite values('CS3320','CS1310');



select s.name,c.course_name,g.grade from student s join grade_report g on s.student_number=g.student_number 
join section sc on sc.section_identifier=g.section_identifier
join course c on sc.course_number=c.course_number where s.name='Smith';


select s.name,g.grade from student s join grade_report g on s.student_number=g.student_number join section sc on sc.section_identifier=
g.section_identifier join course c on c.course_number=sc.course_number
where c.course_name='Database' and sc.semester='Fall' and sc.year=08;

select * from prerequisite p join course c on p.course_number=c.course_number
where course_name='Database';

create view seniors as select name from student where class=2 and major='CS';
drop view seniors;
select * from seniors;

select c.course_name from course c join section sc on c.course_number=sc.course_number
where sc.year=07 and 08 and sc.instructor='King';

select count(s.student_number) as number_of_students,c.course_number,sc.semester,sc.year from student s join grade_report g on s.student_number=
g.student_number join section sc on sc.section_identifier=g.section_identifier join course c on sc.course_number=c.course_number
where sc.instructor='King' group by(sc.section_identifier);

select s.name,c.course_number,c.course_name,c.credit_hours,sc.semester,sc.year,g.grade from student s
join grade_report g on s.student_number=g.student_number join section sc on g.section_identifier=sc.section_identifier
join course c on c.course_number=sc.course_number
where s.class=2 and s.major='CS';

update student set class=2 where name='Smith';
update student set class=2 where student_number=17;
select * from student;
set sql_safe_updates=0;

insert into student values('Johnson',25,1,'Math');
insert into course values('Knowledge Engineering','CS4390',3,'CS');
select * from course;

delete from student where name ='Smith';
set sql_safe_updates=0;



create table t1(id int primary key,name varchar(50));
create table t2(id int,rollno int primary key,mark int);
insert into t1 values(1,'A');
insert into t1 values(2,'B');
insert into t1 values(3,'C');
insert into t2 values(1,1,10);
insert into t2 values(2,2,9);
insert into t2 values(3,3,8);
alter table t2 add foreign key(id) references t1(id) on delete cascade;
select * from t1;
select * from t2;
 delete from t1 where id=1;
delete from t2 where id=2;
delete from t1 where id=3;

create table t3(id int,num int primary key,age int,foreign key(id) references t1(id)on delete cascade on update cascade);
desc t3;

call greater(10,2,40);
call evenodd(4);

call grade(20);
call numbers(-1);
call day('2001-10-31');
call factorial(5);
drop procedure factors;



create table employee(id int primary key,name varchar(50),designation varchar(50));
desc employee;

insert into employee values(1,'A','clerk');
insert into employee values(2,'B','manager');
select * from employee;
call emp(1);

create table product(pdtid int primary key,pname varchar(50),price int,quantity int);
desc product;
call insert_product(3,'pencil',-1,0);
select * from product;


create table emp(eid int primary key,ename varchar(50),age int,salary int);
desc emp;

create table manager(mid int primary key,mname varchar(50));
desc manager;

create table dept(did int primary key,budget int,mid int,foreign key(mid) references manager(mid));
desc dept;

create table works(eid int,did int,category varchar(50),foreign key (eid) references emp(eid),foreign key(did) 
references dept(did),primary key(eid,did));
desc works;

insert into emp values(1,'ABC',22,20000);
insert into emp values(2,'MNO',23,30000);
insert into emp values(3,'xyz',35,50000);
select * from emp;

insert into works values (1,101,'part time');
insert into works values (2,102,'full time');
insert into works values (3,103,'part time');

insert into dept values(101,1000000,100);
insert into dept values(102,1000000,200);
insert into dept values(103,2000000,300);



insert into manager values(100,'Sona');
insert into manager values(200,'Mohan');
insert into manager values(300,'Rohan');

select e.ename,e.age from emp e join works w on e.eid=w.eid join dept d on w.did=d.did where d.did=101;

select e.ename,d.did from emp e join works w on e.eid=w.eid join dept d on d.did=w.did where e.salary>30000;

select m.mid,e.ename from emp e join works w on e.eid=w.eid join dept d on w.did=d.did join manager m on d.mid=m.mid
where d.budget>1000000;

select count(eid) as part_time from works where category='part time';
select count(eid) as full_time from works where category='full time';

