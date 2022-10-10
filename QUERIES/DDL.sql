create table dlithe.dbo.ap_dept
(
 dept_id int primary key,
 dept_name varchar(100),
 dept_salary int,
 foreign key(dept_id)
 );
SELECT * FROM ap_dept

insert into ap_dept values(1,'trainee software engineer',15000)
insert into ap_dept values(2,'data analyst',14000)
insert into ap_dept values(3,'bigdata analyst',44000)


create table dlithe.dbo.ap_location(
location_name varchar(200) not null,
City_name varchar(200) unique,
pincode int primary key
);

select*from ap_location

insert into ap_location values('global village','bangalore',653111)
insert into ap_location values('jp nagar','chennei',653113)
insert into ap_location values('mg road','hydrabad',653112)

create table dlithe.dbo.ap_employee1(
employee_id int primary key,
employee_name varchar(100),
dept_id INT references ap_dept(dept_id)
);

insert into ap_employee1 values(1,'arun',1)
insert into ap_employee1 values(2,'ankith',2)
insert into ap_employee1 values(3,'sweekar',3)
select*from ap_employee1
drop table ap_employee
