
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



