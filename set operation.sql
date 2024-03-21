create database Company;
use company;
create table Dept1(
empid int primary key,
name varchar(255),
role varchar(255)
);
 insert into Dept1 (empid, name, role)
 values (1, 'A', 'engineer'),
		(2, 'B', 'salesman'),
        (3, 'C', 'manager'),
        (4, 'D', 'salesman'),
        (5, 'E', 'engineer');

select *from  Dept1;
 
 create table Dept2(
empid int primary key,
name varchar(255),
role varchar(255)
);

 insert into Dept2 (empid, name, role)
 values (3, 'C', 'manager'),
		(6, 'F', 'marketing'),
        (7, 'G', 'salesman');
        select *from  Dept2;