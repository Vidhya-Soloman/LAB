create database t;
use t;

#CREATING FIRST TABLE
#STUDENT TABLE
create table student(stud_id int primary key,stud_name varchar(50),age int,email varchar(50));
desc student;

create table teacher(teacher_id int primary key,teacher_name varchar(50),course varchar(50),age int);
desc teacher;

create table mark(stud_id int,teacher_id int,subject varchar(50),mark1 int,mark2 int,foreign key(stud_id) references 
student(stud_id)on delete cascade on update cascade,foreign key(teacher_id) references teacher(teacher_id) on delete cascade
on update cascade,primary key(stud_id,teacher_id));
desc mark;

#INSERTING VALUES TO STUDENT TABLE
insert into student values(1,"Anu",18,"anu@gmail.com");
insert into student values(2,"Renu",18,"renu@gmail.com");
insert into student values(3,"Rithis",19,"rith@gmail.com");
insert into student values(4,"Diya",19,"diya@gmail.com");
update student set stud_name="Rithish" where stud_id=3;
select * from student;

#INSERTING VALUES TO TEACHER TABLE
insert into teacher values(100,"Mini","Chemistry",48);
insert into teacher values(101,"Suja","Maths",36);
insert into teacher values(102,"Jaya","Social",40);
insert into teacher values(103,"Girija","Tamil",50);
select * from teacher;

insert into mark values(1,100,"Chemistry",20,20);
insert into mark values(2,100,"Chemistry",17,19);
insert into mark values(3,100,"Chemistry",18,19);
insert into mark values(4,100,"Chemistry",20,10);

insert into mark values(1,101,"Maths",15,13);
insert into mark values(2,101,"Maths",19,13);
insert into mark values(3,101,"Maths",10,13);
insert into mark values(4,101,"Maths",10,10);

insert into mark values(1,102,"Social",20,20);
insert into mark values(2,102,"Social",19,16);
insert into mark values(3,102,"Social",15,19);
insert into mark values(4,102,"Social",16,18);

insert into mark values(1,103,"Tamil",20,20);
insert into mark values(2,103,"Tamil",18,19);
insert into mark values(3,103,"Tamil",20,18);
insert into mark values(4,103,"Tamil",20,20);

select * from mark;

select count(stud_id) from mark group by(subject);

select s.stud_name from student s join mark m on s.stud_id=m.stud_id
where m.subject="Maths";

select s.stud_name,s.stud_id from student s join mark m on s.stud_id=m.stud_id
join teacher t on t.teacher_id=m.teacher_id
where t.teacher_name="Jaya";

select count(s.stud_id) as number_of_students,m.subject from student s join 
mark m on s.stud_id=m.stud_id group by(m.subject);

delete from student where stud_id=4;

delete from teacher where teacher_id=103;


select s.stud_name from student s join mark m on s.stud_id=m.stud_id where subject="Maths" order by m.mark1 desc; 
call prime(9);
call factorial(3);
call palindrome(133);

call armstrong(135);

select * from student where stud_name!="Anu";
select distinct subject from mark where mark1>15;


select s.stud_name, sum(m.mark1) as AVERAGE from student s
join mark m on s.stud_id=m.stud_id group by(s.stud_id) having sum(m.mark1)>15;

select s.stud_name from student s join mark m on s.stud_id=m.stud_id where subject="Maths" order by(m.mark1) limit 1;






