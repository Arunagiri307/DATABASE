-----------SOURCE SALES-----------


CREATE TABLE SALES_MODULE2 (
    SupplierID float,
    SupplierAddress varchar(255),
    SupplierName varchar(255),
    SupplierContactDetails varchar(255),
   ProductID float,
    CarMaker varchar(255),
    CarModel varchar(255),
    CarColor Varchar(255),
    CarModelYeaR float,
    CarPrice float,
    CustomerID varchar(255),
    CustomerName varchar(255),
    Gender varchar(255),
    PhoneNumber varchar(255),
    EmailAddress varchar(255),
    City varchar(255),
    Country varchar(255),
    CountryCode varchar(255),
    State varchar(255),
    CustomerAddress varchar(255),
    OrderDate float,
    OrderID varchar(255),
    ShipDate float,
    ShipMode varchar(255),
    Shipping varchar(255),
   PostalCode float,
    Sales float,
    Quantity float,
    Discount float,
    CreditCardType varchar(255),
    CreditCard float,
    CustomerFeedback varchar(255)
);

SELECT * FROM SALES_MODULE2
TRUNCATE TABLE SALES_MODULE2
UPDATE SALES_MODULE2 SET  SUPPLIERNAME ='ARUN' WHERE SupplierID =1
---------SCD1------------------

----------SCD2-------------------------------CINEMA TICKET SOURCE
-----SOURCE TABLE
CREATE TABLE TICKET_SCD2 (
    Film_Type varchar(255),
    film_code float,
    cinema_code float,
    total_sales float,
    tickets_sold float,
    tickets_out float,
    show_time float,
    occu_perc float,
    ticket_price float,
    ticket_use float,
    capacity float,
    date_ float,
    month_ float,
   quarter_ float,
    day_ float,
    START_DATE varchar(255),
    END_DAT varchar(255),
    STATUS varchar(255)
)
----TARGET TABLE
CREATE TABLE TICKET_SCD2_TARGET (
    Film_Type varchar(255),
    film_code float,
    cinema_code float,
    total_sales float,
    tickets_sold float,
    tickets_out float,
    show_time float,
    occu_perc float,
    ticket_price float,
    ticket_use float,
    capacity float,
    date_ float,
    month_ float,
   quarter_ float,
    day_ float,
    START_DATE varchar(255),
    END_DAT varchar(255),
    STATUS varchar(255)
)
SELECT * FROM TICKET_SCD2_TARGET

ALTER TABLE TICKET_SCD2_TARGET ALTER COLUMN  START_DATE DATETIME

UPDATE TICKET_SCD2 SET TICKETS_SOLD = 37 WHERE DAY = 5


------AGGREGRATE-------------------INSURANCE SOURCE--
SELECT * FROM FA_INSURANCE_M2

---SUM---COUNT---GROUPBY

----CHECKING THE TOTAL CLAIM AMOUNT GROUP BY GENDER--------
CREATE TABLE INSURANCE_AGGREGRATE  (
    SUM_CLAIM_AMOUNT float,
    COUNT_AGE DECIMAL(20,0),
    GENDER varchar(255)
)
SELECT * FROM INSURANCE_AGGREGRATE 
---------CHECKING THE HIGHEST CLIAM AMOUNT AND PERTH AMOUNT DISTRICT WISE------------
CREATE TABLE INSRUANCE_AGGREGRATE_1 (
    SUM_PREAUTH_AMT float,
    SUM_CLAIM_AMOUNT float,
    DISTRICT_NAME varchar(255)
)

SELECT * FROM INSRUANCE_AGGREGRATE_1
------CHECKING THE TOTAL CLIAM AMOUNT IN EACH HOSPITAL AND WHO CLIAMED---
CREATE TABLE INSURANCE_AGGREGRATE_2 (
    CLAIM_AMOUNT  float,
   CLAIM_AMOUNT float,
    GENDER varchar(255),
    HOSP_NAME varchar(255)
)
SELECT * FROM INSURANCE_AGGREGRATE_2
---------------CHECKING THE TOTAL NO.OF TICKETS SOLD FILM TYPE WISE------------------ SOURCE CINEMA TICKET

CREATE TABLE CINEMA_AGGREGRATE(
    Film_Type nvarchar(255),
    tickets_sold float,
)
SELECT * FROM CINEMA_AGGREGRATE

-----TOTAL SALES,MIN AND MAX TICKET SOLED--------
CREATE TABLE CINEMA_AGGRGRATE_DETAILS (
    Film_Type varchar(255),
    Tickets_sold float,
    Film_code float,
    Min_saled float,
    Max_saled float,
    Average_ticket_price float,
    ticket_use bigint
)
select * from CINEMA_AGGRGRATE_DETAILS
---------------------------------------------------------------------------------------

