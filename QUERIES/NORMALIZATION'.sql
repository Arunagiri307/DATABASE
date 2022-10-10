---1nf--
create table ap_dept22(
dept_name varchar(10),
dept_id int
)
insert into ap_DEPT22 values ('it,it,it','1')

create table ap_dept220(
dept_name varchar(10),
dept_id int
)
insert INTO ap_dept220 values ('it',1),('it',1),('it',1)

select*from ap_dept22
select*from ap_dept220

---2nf-----

create table ap_dept22(
dept_name varchar(10) primary key,
dept_id int
employee_name
)


create table ap_emplo22(
employee_name varchar(10),
dept_id
)
---3nf-----

create table ap_dept22(
dept_name varchar(10) primary key,
dept_id int
employee_name
)create table ap_dept220(
dept_id int
employee_name
)
create table ap_dept221(
dept_name varchar(10) primary key,
dept_id int

)