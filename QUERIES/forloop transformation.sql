create table ap_source1
(
dept_id int,
dept_name varchar(20),
salary int,
location varchar(20)
)
insert into ap_source1 values(100,'sales',3425,'Bangalore'),(101,'hr',3425,'Bangalore'),(102,'it',3425,'Bangalore'),(103,'database',3425,'Bangalore')
create table ap_tgt
(
dept_id int,
dept_name varchar(20),
salary int,
location varchar(20)
)

select*from ap_tgt

update  ap_source1 set salary=76758 where dept_id=102 
create table ap_source23
(
dept_id int,
dept_name varchar(20),
salary int,
location varchar(20),
start_date date,
end_date date,
status varchar(20)
)
insert into ap_source23 values(100,'hr',54656,'bangalore',null,null,null)

create table ap_tgt23
(
dept_id int,
dept_name varchar(20),
salary int,
location varchar(20),
start_date date,
end_date date,
status varchar(20)
)