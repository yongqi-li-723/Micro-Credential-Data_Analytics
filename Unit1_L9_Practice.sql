/* 1. Create a table with the following parameters:
 CustomerID
 CustomerName
 Address
 City
 PostalCode
 Country
 Email
*/
CREATE TABLE Customer
(
    CustomerID integer NOT NULL,
    CustomerName varchar(50) NULL,
	Address varchar(50) NULL,
	City varchar(50) NULL,
	PostalCode integer NOT NULL,
    Country varchar(50) NULL,
	Email varchar(50) NULL,
    CONSTRAINT PK_Customer PRIMARY KEY (CustomerID)
)

-- 2. Insert 3 rows of data into these columns using INSERT. The data you insert should make sense for the column.
INSERT INTO CUSTOMER VALUES ('1', 'Yongqi Li', '1234 56TH ST', 'Brooklyn', '10000', 'US', 'yongqili@email.com'),
							('2', 'Lucas Law', '5678 9TH ST', 'Brooklyn', '10001', 'US', 'lucaslaw@email.com'),
							('3', 'Kevin Fang', '9876 54TH ST', 'Brooklyn', '10002', 'US', 'kevinfang@email.com')


-- 3. Use an UPDATE to modify any portion of the data
UPDATE CUSTOMER
SET CITY = 'New York' WHERE CUSTOMERID = '2'

-- 4. Finally, write a statement to delete one row of data.
DELETE FROM CUSTOMER
WHERE CUSTOMERID = '3'


