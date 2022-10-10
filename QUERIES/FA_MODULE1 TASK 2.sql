create table FA_INSURANCE (
PID	int,
AGE int,
GENDER	varchar(100),
CASTE_NAME varchar(100),
CATEGORY_CODE varchar(100),
CATEGORY_NAME varchar(100),
SURGERY_CODE	varchar(100),
SURGERY  varchar(255),
VILLAGE	  varchar(100),
MANDAL_NAME	 varchar(100),
DISTRICT_NAME	varchar(100),
PREAUTH_DATE	datetime,
PREAUTH_AMT	float,
CLAIM_DATE	datetime,
CLAIM_AMOUNT float,
HOSP_NAME	varchar(100),
HOSP_TYPE	varchar(100),
HOSP_DISTRICT varchar(100),
SURGERY_DATE datetime,
DISCHARGE_DATE	datetime,
Mortality_Y_N varchar(100),
MORTALITY_DATE	datetime,
SRC_REGISTRATION varchar(100)
)



CREATE TABLE FA_SALES_2 (
SupplierID	INT,
SupplierAddress	VARCHAR(100),
SupplierName	VARCHAR(100),
SupplierContactDetails	VARCHAR(100),
ProductID	FLOAT,
CarMaker	VARCHAR(100),
CarModel	VARCHAR(100),
CarColor	VARCHAR(100),
CarModelYear	INT,
CarPrice	FLOAT,
CustomerID	VARCHAR(100),
CustomerName	VARCHAR(100),
Gender	VARCHAR(100),
JobTitle	VARCHAR(100),
PhoneNumber VARCHAR(100),
EmailAddress	VARCHAR(100),
City	VARCHAR(100),
Country	VARCHAR(100),
CountryCode	VARCHAR(100),
State	VARCHAR(100),
CustomerAddress	VARCHAR(100),
OrderDate	INT,
OrderID	FLOAT,
ShipDate INT,
ShipMode	VARCHAR(100),
Shipping	VARCHAR(100),
PostalCode	INT,
Sales	FLOAT,
Quantity	INT,
Discount	VARCHAR(100),
CreditCardType	VARCHAR(100),
CreditCard	VARCHAR(100),
CustomerFeedback VARCHAR(100)
)





----DDL OPERATION OF SALES



---CREATE OPERATION--
CREATE TABLE FA_SALES_2 (
SupplierID	INT,
SupplierAddress	VARCHAR(100),
SupplierName	VARCHAR(100),
SupplierContactDetails	VARCHAR(100),
ProductID	FLOAT,
CarMaker	VARCHAR(100),
CarModel	VARCHAR(100),
CarColor	VARCHAR(100),
CarModelYear	INT,
CarPrice	FLOAT,
CustomerID	VARCHAR(100),
CustomerName	VARCHAR(100),
Gender	VARCHAR(100),
JobTitle	VARCHAR(100),
PhoneNumber VARCHAR(100),
EmailAddress	VARCHAR(100),
City	VARCHAR(100),
Country	VARCHAR(100),
CountryCode	VARCHAR(100),
State	VARCHAR(100),
CustomerAddress	VARCHAR(100),
OrderDate	INT,
OrderID	FLOAT,
ShipDate INT,
ShipMode	VARCHAR(100),
Shipping	VARCHAR(100),
PostalCode	INT,
Sales	FLOAT,
Quantity	INT,
Discount	VARCHAR(100),
CreditCardType	VARCHAR(100),
CreditCard	VARCHAR(100),
CustomerFeedback VARCHAR(100)
)
SELECT * FROM FA_SALES_2
select * from FA_INSURANCE 
---DML OPERATION

INSERT INTO FA_SALES_2 VALUES (559,'9087 Bonner dro','Trupe',471-08-6486,8876.0,'Infiniti','Q','Orange',2001,757878.29,63187-087,'Eveleen Rittelmeyer','Female' ,'Professor',602-153-9389,'erittelmeyerfd@hao123.com','Phoenix','United States','US','Arizona','1 Independence Circle',43483.0,54868-4381,43624.0,'First Class','Truck',21265.0,779769.27,1,0.58,'jcb',3553500000000000,'Good')
--ddl alter operation
alter table FA_SALES_2 alter column customerfeedback varchar(200)---increasing the datatype length
ALTER TABLE INSURANCE_AGGREGRATE_2 DROP COLUMN CLAIM_AMOUNT----DROP THE COLUMN
--update operation
update FA_SALES_2 set Suppliername ='arun' where supplierid=1

select*from FA_INSURANCE 
select*from FA_INSURANCE where CATEGORY_NAME = 'NEPHROLOGY' ;--SELECTING PARTICULAR DEPARTMENT
select*from FA_INSURANCE where CLAIM_AMOUNT>=29000;---CHECKING CLAIM AMOUNT GRETER THAN OR EQUAL TO 29000
select*from FA_INSURANCE where CLAIM_AMOUNT<=9000;---CHECKING CLAIM AMOUNT GRETER THAN OR EQUAL TO 9000
select*from FA_INSURANCE where CLAIM_AMOUNT!=9000;--CHECKING CLAIM AMOUNT NOT EQUAL TO 9000
select*from FA_INSURANCE where CLAIM_AMOUN<>12008; --NOT EQUAL TO OPERATION
----NULL OPERATIONS
select*from FA_INSURANCE where  CATEGORY_CODE  IS NULL
select*from FA_INSURANCE where CATEGORY_CODE IS NOT NULL
select*from FA_INSURANCE where  CATEGORY_CODE  IS NULL OR AGE IS NULL
select*from FA_INSURANCE where AGE IS NULL OR CATEGORY_CODE  IS NOT NULL
select*from FA_INSURANCE where CASTE_NAME IS NULL AND CATEGORY_NAME IS NULL
-----IN AND NOT IN OPERATIONS
select*from FA_INSURANCE where CATEGORY_CODE  IN('M6','M5')
select*from FA_INSURANCE where CATEGORY_CODE NOT IN(101,201,130,140)
----LIKE OPERATION
select*from FA_INSURANCE where HOSP_DISTRICT LIKE '%A%'AND MANDAL_NAME LIKE 'V%'
select*from FA_INSURANCE where MANDAL_NAME NOT LIKE '%A'
---BETWEEN OPERATION
select*from FA_INSURANCE where AGE BETWEEN 45 AND 57
select*from FA_INSURANCE where PREAUTH_DATE not like '%.'
----DISTINCT OPERATION--
select DISTINCT DISTRICT_NAME from FA_INSURANCE
-----UPPER,LOWER,TRIM AND STRING OPERATIONS
select UPPER(SupplierName) AS SUP_NAME,LOWER(SupplierAddress)AS SUP_ADDRESS,LEN(SupplierContactDetails) AS LEN
from FA_SALES_2
select rtrim(SupplierName) AS RTRIMO from FA_SALES_2 E---TRIMS THE EXTRA SPACES IN RIGHT SIDE
select ltrim(SUPPLIERNAME) from FA_SALES_2 E
select replace('arunagiri','giri','@') from FA_SALES_2 E
select SUBSTRING('Arunagiri',1,5) from FA_SALES_2 E
select SUBSTRING('arunagiri@307gmail.com',charindex('@','arunagiri@307gmail.com')+1,len('arunagiri@307gmail.com')) from FA_SALES_2 E
select CONCAT('arun','a','giri') FA_SALES_2 E--CONCATES TWO WORDS
------CASE OPERATION
select case when City <='Anchorage' then 'Truck'
when City ='Saint Cloud' then 'Air'
else 'others'
end as dname from FA_SALES_2 

SUM   --- ADDITION OF INTERGER NUMBER
AVG   ---SUM DIVIEDE NUMBER OF ELEMENTS
MIN   ---LOWEST VALUE OF THE DATA  
MAX   ---HIGHEST VALUES OF THE DATA
COUNT ---NUMBER OF ELEMENTS


---SQL query with all clause .

select sum(CLAIM_AMOUNT) as sum_claim from  FA_INSURANCE;
select avg(CLAIM_AMOUNT) from  FA_INSURANCE;
select min(CLAIM_AMOUNT) as min,max(CLAIM_AMOUNT) as max from  FA_INSURANCE;
select count(*) from FA_INSURANCE;
select count(3) from FA_INSURANCE;
select count(1)CATEGORY_CODE  from FA_INSURANCE
group by CATEGORY_CODE 
HAVING COUNT(1)>1;
----all clause function
SELECT COUNT(1),CLAIM_AMOUNT
FROM FA_INSURANCE 
WHERE HOSP_NAME IS NOT NULL
GROUP BY CLAIM_AMOUNT
HAVING COUNT(1)>2
ORDER BY CLAIM_AMOUNT ASC;

----Rank functions-------
---scenario to check which hospital is having highest claim amount using rank
SELECT RANK () OVER (PARTITION BY HOSP_NAME ORDER BY CLAIM_AMOUNT  DESC) AS DRNK,HOSP_NAME,CLAIM_AMOUNT
FROM fa_insurance

---CHECHKING DENSE RANK
SELECT * FROM (
SELECT DENSE_RANK () OVER (PARTITION BY PID ORDER BY CLAIM_AMOUNT  DESC) AS DRNK,PID,CLAIM_AMOUNT
FROM fa_insurance
WHERE PID = 454
)X
WHERE drnk = 1;

---ROW NUMBER
SELECT ROW_NUMBER  () OVER (PARTITION BY HOSP_NAME ORDER BY CLAIM_AMOUNT  DESC) AS ROWNUMBER,HOSP_NAME,CLAIM_AMOUNT
FROM fa_insurance
---COLUMN NAME CHANGING
EXEC SP_RENAME 'INSURANCE_AGGREGRATE.COUNT_AGE','TOTAL_COUNT','COLUMN'

DROP TABLE Incurance_Claim_State_Healths 

TRUNCATE TABLE Incurance_Claim_State_Health

DELETE CarSalesShipment_FA  WHERE SUPPLIERID = NULL

CREATE TABLE FA_DELEIVEY_TRUCK (
    GpsProvider varchar(255),
    BookingID varchar(255),
    Market/Regular varchar(255),
    BookingID_Date float,
    vehicle_no varchar(255),
    Origin_Location varchar(255),
    Destination_Location varchar(255),
    Org_lat_lon varchar(255),
    Des_lat_lon varchar(255),
    Data_Ping_time datetime,
    Planned_ETA datetime,
    Current_Location nvarchar(255),
    DestinationLocation varchar(255),
    actual_eta datetime,
    Curr_lat float,
    Curr_lon float,
    ontime varchar(255),
    delay varchar(255),
    OriginLocation_Code varchar(255),
    DestinationLocation_Code nvarchar(255),
    trip_start_date datetime,
    trip_end_date varchar(255),
    TRANSPORTATION_DISTANCE_IN_KM float,
    vehicleType varchar(255),
    Minimum_kms_to_be_covered_in_a_day varchar(255),
    Driver_Name varchar(255),
    Driver_MobileNo varchar(255),
    customerID varchar(255),
    customerNameCode varchar(255),
    supplierID varchar(255),
    supplierNameCode varchar(255),
    Material Shipped varchar(255),
    Delivery Mode varchar(255)
)
SELECT * FROM FA_DELEIVEY_TRUCK
---CREATION OF LOAN SOURCE
CREATE TABLE FA_LOAN (
    LoanNr_ChkDgt float,
    Name varchar(255),
    City varchar(255),
    State varchar(255),
    Zip float,
    Bank varchar(255),
    BankState varchar(255),
    NAICS float,
    ApprovalDate datetime,
    ApprovalFY float,
    Term float,
    NoEmp float,
    NewExisT float,
    CreateJob float,
    RetainedJob float,
    FranchiseCode float,
    UrbanRural float,
    RevLineCr varchar(255),
    LowDoc varchar(255),
    ChgOffDate datetime,
    DisbursementDate datetime,
    DisbursementGross varchar(255),
    BalanceGross varchar(255),
    MIS_Status varchar(255),
    ChgOffPrinGr varchar(255),
    GrAppv varchar(255),
    SBA_Appv varchar(255)
)