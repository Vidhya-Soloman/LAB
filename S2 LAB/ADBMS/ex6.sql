create database ex6;
use ex6;
create table product(pdtid int primary key,pname varchar(50),price int,qtyinstock int);
desc product;

create table sale(saleid int primary key,deliveryaddress  varchar(50));
desc sale;

create table saleitem(saleid int,pdtid int,qty int,primary key(saleid,pdtid));
desc saleitem;

create trigger updatestock
after insert on saleitem
for each row
update product set qtyinstock=product.qtyinstock-new.qty
where pdtid=new.pdtid;

insert into product values(1,'pen',2,100);
insert into product values(2,'pencil',5,100);
select * from product;
insert into sale values(101,'ABC street');
insert into sale values(102,'xyz street');

insert into saleitem values(101,1,20);
insert into saleitem values(102,2,50);



