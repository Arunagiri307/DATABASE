
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
