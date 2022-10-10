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



select*from DLITHE.DBO.S_HREMPLOYEES
select*from DLITHE.DBO.S_HREMPLOYEES where salary=8000;
select*from DLITHE.DBO.S_HREMPLOYEES where salary>=9000;
select*from DLITHE.DBO.S_HREMPLOYEES where salary<=9000;
select*from DLITHE.DBO.S_HREMPLOYEES where salary!=9000;
select*from DLITHE.DBO.S_HREMPLOYEES where salary<>12008;
select*from DLITHE.DBO.S_HREMPLOYEES where FIRST_NAME IS NULL
select*from DLITHE.DBO.S_HREMPLOYEES where FIRST_NAME IS NOT NULL
select*from DLITHE.DBO.S_HREMPLOYEES where FIRST_NAME IS NULL OR LAST_NAME IS NULL
select*from DLITHE.DBO.S_HREMPLOYEES where FIRST_NAME IS NULL OR LAST_NAME IS NOT NULL
select*from DLITHE.DBO.S_HREMPLOYEES where FIRST_NAME IS NULL AND LAST_NAME IS NULL
select*from DLITHE.DBO.S_HREMPLOYEES where FIRST_NAME IS NULL AND LAST_NAME IS NOT NULL
select*from DLITHE.DBO.S_HREMPLOYEES where EMPLOYEE_ID  IN(101,201,130,140)
select*from DLITHE.DBO.S_HREMPLOYEES where EMPLOYEE_ID NOT IN(101,201,130,140)
select*from DLITHE.DBO.S_HREMPLOYEES where FIRST_NAME LIKE '%A%'AND LAST_NAME LIKE 'V%'
select*from DLITHE.DBO.S_HREMPLOYEES where FIRST_NAME NOT LIKE '%A'
select*from DLITHE.DBO.S_HREMPLOYEES where SALARY BETWEEN 9000 AND 12000
select*from DLITHE.DBO.S_HREMPLOYEES where PHONE_NUMBER not like '%.'
select DISTINCT FIRST_NAME  from DLITHE.DBO.S_HREMPLOYEES



select UPPER(FIRST_NAME) AS FIRST_NAME,LOWER(LAST_NAME),LEN(FIRST_NAME)
from DLITHE.DBO.S_HREMPLOYEES
select rtrim(FIRST_NAME) from DLITHE.DBO.S_HREMPLOYEES
select ltrim(FIRST_NAME) from DLITHE.DBO.S_HREMPLOYEES
select replace('arunagiri','giri','@') from DLITHE.DBO.S_HREMPLOYEES
select SUBSTRING('Arunagiri',1,5) from DLITHE.DBO.S_HREMPLOYEES
select SUBSTRING('arunagiri@307gmail.com',charindex('@','arunagiri@307gmail.com')+1,len('arunagiri@307gmail.com')) from DLITHE.DBO.S_HREMPLOYEES
select CONCAT('arun','a','giri') from DLITHE.DBO.S_HREMPLOYEES

select case when SALARY <=3000 then '3.5lpa'
when SALARY>=5000 then '4lpa'
when SALARY !=10000 then '6lpa'
else 'others'
end as dname from DLITHE.DBO.S_HREMPLOYEES

SUM   --- ADDITION OF INTERGER NUMBER
AVG   ---SUM DIVIEDE NUMBER OF ELEMENTS
MIN   ---LOWEST VALUE OF THE DATA  
MAX   ---HIGHEST VALUES OF THE DATA
COUNT ---NUMBER OF ELEMENTS


SQL query with all clause .
SELECT COUNT(1),DEPARTMENT_ID
FROM DBO.S_HREMPLOYEES sh
WHERE DEPARTMENT_ID IS NOT NULL
GROUP BY DEPARTMENT_ID
HAVING COUNT(1)>1
ORDER BY DEPARTMENT_ID DESC;


select sum(salary) from  DLITHE.DBO.S_HREMPLOYEES;
select avg(salary) from  DLITHE.DBO.S_HREMPLOYEES;
select min(salary) as min,max(salary) as max from  DLITHE.DBO.S_HREMPLOYEES;
select count(*) from DLITHE.DBO.S_HREMPLOYEES;
select count(3) from DLITHE.DBO.S_HREMPLOYEES;
select count(1)DEPARTMENT_ID  from DLITHE.DBO.S_HREMPLOYEES
group by DEPARTMENT_ID  
HAVING COUNT(1)>1;

SELECT COUNT(2),DEPARTMENT_ID
FROM DBO.S_HREMPLOYEES sh
WHERE DEPARTMENT_ID IS NOT NULL
GROUP BY DEPARTMENT_ID
HAVING COUNT(2)>1
ORDER BY DEPARTMENT_ID DESC;

SELECT COUNT(1),DEPARTMENT_ID
FROM DBO.S_HREMPLOYEES sh
WHERE DEPARTMENT_ID IS NOT NULL
GROUP BY DEPARTMENT_ID
HAVING COUNT(1)>1
ORDER BY DEPARTMENT_ID ASC;

SELECT SUBSTRING('Arunagiri@gmail.com',charindex('@','Arunagiri@gmail.com'),len('Arunagiri@gmail.com')) 


SELECT * FROM (
SELECT DENSE_RANK () OVER (PARTITION BY DEPARTMENT_ID ORDER BY SALARY  DESC) AS DRNK,DEPARTMENT_ID,SALARY
FROM DBO.S_HREMPLOYEES sh 
WHERE DEPARTMENT_ID=90
)X
WHERE DRNK=1
SELECT * FROM(
SELECT DENSE_RANK () OVER (PARTITION BY DEPARTMENT_ID ORDER BY SALARY  DESC) AS DRNK,SALARY ,DEPARTMENT_ID  
FROM DLITHE.DBO.S_HREMPLOYEES sh
WHERE DEPARTMENT_ID = 100
)X
WHERE DRNK=3;




BEFORE STARTING THE NAY JOIN QUERY YOU SHOULD KNOW ABOUT COMMON CONDITIONAL COLUMN.


--INNER QUERY 

SELECT
    SH.DEPARTMENT_ID ,
	SH.EMPLOYEE_ID,
	SH2.DEPARTMENT_NAME,
	FIRST_NAME ,
	LAST_NAME
FROM
	DBO.S_HREMPLOYEES sh ,
	DBO.S_HRDEPARTMENTS sh2
WHERE
	SH.DEPARTMENT_ID = SH2.DEPARTMENT_ID;

SELECT
	SH.EMPLOYEE_ID,
	SH2.DEPARTMENT_NAME,
	FIRST_NAME ,
	LAST_NAME
FROM
	DBO.S_HREMPLOYEES sh
INNER JOIN DBO.S_HRDEPARTMENTS sh2 
ON
	SH.DEPARTMENT_ID = SH2.DEPARTMENT_ID;

SELECT
	*
FROM
	DBO.S_HREMPLOYEES sh ,
	DBO.S_HRDEPARTMENTS sh2,
	DBO.S_HRLOCATIONS sh3,
	dbo.S_HRJOBS sh4 
WHERE
	SH.DEPARTMENT_ID = SH2.DEPARTMENT_ID
AND SH2.LOCATION_ID=SH3.lOCATION_ID






SELECT
	SH.EMPLOYEE_ID,
	SH2.DEPARTMENT_NAME,
	FIRST_NAME ,
	LAST_NAME
FROM
	DBO.S_HREMPLOYEES sh ,
	DBO.S_HRDEPARTMENTS sh2
WHERE
	SH.DEPARTMENT_ID = SH2.DEPARTMENT_ID;








SELECT
	SH.EMPLOYEE_ID,
	SH2.DEPARTMENT_NAME,
	FIRST_NAME ,
	LAST_NAME
FROM
	DBO.S_HREMPLOYEES sh ,
	DBO.S_HRDEPARTMENTS sh2
WHERE
	SH.DEPARTMENT_ID = SH2.DEPARTMENT_ID;

SELECT 
 SH.EMPLOYEE_ID,
 SH2.DEPARTMENT_NAME,
 FIRST_NAME,
 LAST_NAME

from S_HREMPLOYEES sh ,S_HRDEPARTMENTS sh2 
WHERE SH.DEPARTMENT_ID = SH2.DEPARTMENT_ID
SELECT * FROM S_HREMPLOYEES sh3 
SELECT
	SH.EMPLOYEE_ID,
	SH2.DEPARTMENT_NAME,
	FIRST_NAME ,
	LAST_NAME,
	EMAIL
FROM
	DBO.S_HREMPLOYEES sh
LEFT JOIN DBO.S_HRDEPARTMENTS sh2 
ON
	SH.DEPARTMENT_ID = SH2.DEPARTMENT_ID;

SELECT * FROM S_HRDEPARTMENTS sh 

SELECT
sh.STREET_ADDRESS,
sh2.manager_id


FROM 
dbo.S_HRLOCATIONS sh 
left JOIN DBO.S_HRDEPARTMENTS sh2 ON
SH.LOCATION_ID=SH2.LOCATION_ID;


SELECT
	*
FROM
	DBO.S_HREMPLOYEES sh ,
	DBO.S_HRDEPARTMENTS sh2,
	DBO.S_HRLOCATIONS sh3,
	dbo.S_HRJOBS sh4 
WHERE
	SH.DEPARTMENT_ID = SH2.DEPARTMENT_ID
AND SH2.LOCATION_ID=SH3.lOCATION_ID





SELECT 
sh3.CITY,
sh2.MANAGER_ID 
FROM S_HRCOUNTRIES sh ,S_HRDEPARTMENTS sh2 ,S_HRLOCATIONS sh3 
where sh.COUNTRY_ID = sh3.COUNTRY_ID  AND sh3.LOCATION_ID = sh2.LOCATION_ID 







SELECT* FROM S_HRDEPARTMENTS sh3 
SELECT * FROM S_HREMPLOYEES sh4  WHERE DEPARTMENT_ID IN(SELECT DEPARTMENT_ID FROM S_HRDEPARTMENTS sh2)

SELECT * FROM S_HREMPLOYEES sh WHERE DEPARTMENT_ID  IN
(SELECT DEPARTMENT_ID FROM S_HRDEPARTMENTS sh2 WHERE SH.DEPARTMENT_ID=SH2.DEPARTMENT_ID)


SELECT * FROM S_HRDEPARTMENTS sh3 WHERE LOCATION_ID IN(SELECT LOCATION_ID FROM S_HRLOCATIONS sh  WHERE sh.LOCATION_ID  = sh3.LOCATION_ID)




ALTER  view ap_11
as 
select 
sh.department_name,
sh2.location_id,
sh.department_id

from S_HRDEPARTMENTS sh inner join S_HRLOCATIONS sh2 on sh.LOCATION_ID = sh2.LOCATION_ID 
select* from ap_11

insert into ap_11 values ('sales',211,99)




select ROW_NUMBER () over (PARTITION by department_id order by salary) as department_id,salary
from S_HREMPLOYEES sh 


select rank  () over (PARTITION by department_id order by salary) as department_id,salary
from S_HREMPLOYEES sh

select * from(
select DENSE_RANK  () over (PARTITION by department_id order by salary asc) as drnk,department_id,salary
from S_HREMPLOYEES sh
where department_id=100
)X
where drnk=1


select DENSE_RANK  () over (PARTITION by department_id order by salary asc) as drnk,department_id,salary
from S_HREMPLOYEES sh

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


select DENSE_RANK  () over (PARTITION by department_id order by salary asc) as drnk,department_id,salary
from S_HREMPLOYEES shs

select * from S_HREMPLOYEES sh 




