

create table rbibank1(
month_ varchar(100),
year_ float,
month_number float,
start_date date,
end_date	date,
bank_name varchar(100),
no_atms_on_site float,
no_atms_off_site float,
no_pos_on_line float,
no_pos_off_line float,
no_credit_cards float,
no_credit_cards2 float,
no_credit_cards3 float,
no_credit_cards4	float,
no_credit_cards5	float,
no_credit_cards6	float,
no_credit_cards7	float,
no_credit_cards8	float,
no_credit_cards9	float,
no_credit_cards10	float,
no_credit_cards11	float,
no_credit_cards12 float
)

select * from rbibank1
 


select count(no_atms_on_site) AS atm ,no_credit_cards
from rbibank1 
where no_credit_cards is not NULL 
group by no_credit_cards
having count(no_atms_on_site)>=3
order by no_credit_cards asc

select count(no_atms_off_site) as offfsite,no_atms_off_site
from rbibank1 
where no_atms_off_site is not NULL 
group by no_atms_off_site
having count(no_atms_off_site)>=1
order by no_atms_off_site asc
select * from Dim_Employees1 de 
update EMP_SCD2 set EMP_salary = 9000 where EMP_ID = 101
SELECT * FROM EMP_SCD2 es 