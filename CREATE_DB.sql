DROP DATABASE IF EXISTS DAT601_A1;
GO

CREATE DATABASE DAT601_A1;
GO

USE DAT601_A1;
GO

DROP TABLE IF EXISTS Customer;
CREATE TABLE Customer
(
	CustID		CHAR(10)	NOT NULL,
	CustName	CHAR(50)	NOT NULL,
	CustAddress	CHAR(50)	,
	CustCity	CHAR(50)	,
	CustContact	CHAR(50)	,
	CustPhone	CHAR(15)	,
	CustEmail	CHAR(255)	
);


INSERT INTO Customer(CustID,CustName,CustAddress,CustCity,CustPhone,CustContact,CustEmail)
VALUES('1000000001','Village Toys','200 Oak Lane','Wellington','09-389-2356','John Smith','sales@villagetoys.co.nz');

INSERT INTO Customer(CustID,CustName,CustAddress,CustCity,CustPhone,CustContact)
VALUES('1000000002','Kids Place','333 Tahunanui Drive','Nelson','03-545-6333','Michelle Green');

INSERT INTO Customer(CustID,CustName,CustAddress,CustCity,CustPhone,CustContact,CustEmail)
VALUES('1000000003','Fun4All','1 Sunny Place','Nelson','03-548-2285','Jim Jones','jjones@fun4all.co.nz');

INSERT INTO Customer(CustID,CustName,CustAddress,CustCity,CustPhone,CustContact,CustEmail)
VALUES('1000000004','Fun4All','829 Queen Street','Auckland','09-368-7894','Denise L. Stephens','dstephens@fun4all.co.nz');

INSERT INTO Customer(CustID,CustName,CustAddress,CustCity,CustPhone,CustContact)
VALUES('1000000005','The Toy Store','50 Papanui Road','Christchurch','04-345-4545','Kim Howard');


DROP TABLE IF EXISTS OrderEntry;
CREATE TABLE OrderEntry
(
	OrderID		INTEGER		NOT NULL,
	OrderDate	DATETIME	NOT NULL,
	CustID		CHAR(10)	NOT NULL
);


INSERT INTO OrderEntry(OrderID,OrderDate,CustID)
VALUES(20005,'1999/5/1','1000000001');

INSERT INTO OrderEntry(OrderID,OrderDate,CustID)
VALUES(20006,'1999/1/12','1000000003');

INSERT INTO OrderEntry(OrderID,OrderDate,CustID)
VALUES(20007,'1999/1/30','1000000004');

INSERT INTO OrderEntry(OrderID,OrderDate,CustID)
VALUES(20008,'1999/2/3','1000000005');

INSERT INTO OrderEntry(OrderID,OrderDate,CustID)
VALUES(20009, '1999/2/8','1000000001');


DROP TABLE IF EXISTS Vendor;
CREATE TABLE Vendor
(
	VendorID		CHAR(10)	NOT NULL,
	VendorName		CHAR(50)	NOT NULL,
	VendorAddress	CHAR(50)	,
	VendorCity		CHAR(50)	,
	VendorPhone		CHAR(15)
);

INSERT INTO Vendor(VendorID, VendorName, VendorAddress, VendorCity, VendorPhone)
VALUES('BRS01','Bears R Us','123 Main Street','Richmond','03-523-8871');

INSERT INTO Vendor(VendorID, VendorName, VendorAddress, VendorCity, VendorPhone)
VALUES('BRE02','Bear Emporium','500 Park Street','Auckland','06-396-8854');

INSERT INTO Vendor(VendorID, VendorName, VendorAddress, VendorCity, VendorPhone)
VALUES('DLL01','Doll House Inc.','555 High Street','Motueka','03-455-7898');

INSERT INTO Vendor(VendorID, VendorName, VendorAddress, VendorCity, VendorPhone)
VALUES('FRB01','Furball Inc.','1 Clifford Avenue','Nelson','03-546-9978');


DROP TABLE IF EXISTS Product;
CREATE TABLE Product
(
	ProductID		CHAR(10)	NOT NULL,
	VendorID		CHAR(10)	NOT NULL,
	ProductName		CHAR(255)	NOT NULL,
	ProductPrice	DECIMAL(8,2)NOT NULL,
	ProductDesc		VARCHAR(100)		
);


INSERT INTO Product(ProductID, VendorID, ProductName, ProductPrice, ProductDesc)
VALUES('BR01', 'BRS01', '8 inch teddy bear',5.99,'8 inch teddy bear, comes with cap and jacket');

INSERT INTO Product(ProductID, VendorID, ProductName, ProductPrice, ProductDesc)
VALUES('BR02', 'BRS01', '12 inch teddy bear',8.99,'12 inch teddy bear, comes with cap and jacket');

INSERT INTO Product(ProductID, VendorID, ProductName, ProductPrice, ProductDesc)
VALUES('BR03', 'BRS01', '18 inch teddy bear',11.99,'18 inch teddy bear, comes with cap and jacket');

INSERT INTO Product(ProductID, VendorID, ProductName, ProductPrice, ProductDesc)
VALUES('BNBG01', 'DLL01', 'Fish bean bag toy',3.49,'Fish bean bag toy, complete with bean bag worms with which to feed it');

INSERT INTO Product(ProductID, VendorID, ProductName, ProductPrice, ProductDesc)
VALUES('BNBG02', 'DLL01', 'Bird bean bag toy',3.49,'Bird bean bag toy, eggs are not included');

INSERT INTO Product(ProductID, VendorID, ProductName, ProductPrice, ProductDesc)
VALUES('BNBG03', 'DLL01', 'Rabbit bean bag toy',3.49,'Rabbit bean bag toy, comes with bean bag carrots');

INSERT INTO Product(ProductID, VendorID, ProductName, ProductPrice, ProductDesc)
VALUES('RGAN01', 'DLL01', 'Raggedy Ann',4.99,'18 inch Raggedy Ann doll');

DROP TABLE IF EXISTS OrderItem;
CREATE TABLE OrderItem
(
	OrderID		INTEGER		NOT NULL,
	OrderItem	INTEGER		NOT NULL,
	ProductID	CHAR(10)	NOT NULL,
	Quantity	INTEGER		NOT NULL,
	ItemPrice	DECIMAL(8,2)NOT NULL
);

INSERT INTO OrderItem(OrderID,OrderItem,ProductID,Quantity,ItemPrice)
VALUES(20005,1,'BR01',100,5.49);

INSERT INTO OrderItem(OrderID,OrderItem,ProductID,Quantity,ItemPrice)
VALUES(20005,2,'BR03',100,10.99);

INSERT INTO OrderItem(OrderID,OrderItem,ProductID,Quantity,ItemPrice)
VALUES(20006,1,'BR01',20,5.99);

INSERT INTO OrderItem(OrderID,OrderItem,ProductID,Quantity,ItemPrice)
VALUES(20006,2,'BR02',10,8.99);

INSERT INTO OrderItem(OrderID,OrderItem,ProductID,Quantity,ItemPrice)
VALUES(20006,3,'BR03',10,11.99);

INSERT INTO OrderItem(OrderID,OrderItem,ProductID,Quantity,ItemPrice)
VALUES(20007,1,'BR03',50,11.49);

INSERT INTO OrderItem(OrderID,OrderItem,ProductID,Quantity,ItemPrice)
VALUES(20007,2,'BNBG01',100,2.99);

INSERT INTO OrderItem(OrderID,OrderItem,ProductID,Quantity,ItemPrice)
VALUES(20007,3,'BNBG02',100,2.99);

INSERT INTO OrderItem(OrderID,OrderItem,ProductID,Quantity,ItemPrice)
VALUES(20007,4,'BNBG03',100,2.99);

INSERT INTO OrderItem(OrderID,OrderItem,ProductID,Quantity,ItemPrice)
VALUES(20007,5,'RGAN01',50,4.49);

INSERT INTO OrderItem(OrderID,OrderItem,ProductID,Quantity,ItemPrice)
VALUES(20008,1,'RGAN01',5,4.99);

INSERT INTO OrderItem(OrderID,OrderItem,ProductID,Quantity,ItemPrice)
VALUES(20008,2,'BR03',5,11.99);

INSERT INTO OrderItem(OrderID,OrderItem,ProductID,Quantity,ItemPrice)
VALUES(20008,3,'BNBG01',10,3.49);

INSERT INTO OrderItem(OrderID,OrderItem,ProductID,Quantity,ItemPrice)
VALUES(20008,4,'BNBG02',10,3.49);

INSERT INTO OrderItem(OrderID,OrderItem,ProductID,Quantity,ItemPrice)
VALUES(20008,5,'BNBG03',10,3.49);

INSERT INTO OrderItem(OrderID,OrderItem,ProductID,Quantity,ItemPrice)
VALUES(20009,1,'BNBG01',250,2.49);

INSERT INTO OrderItem(OrderID,OrderItem,ProductID,Quantity,ItemPrice)
VALUES(20009,2,'BNBG02',250,2.49);

INSERT INTO OrderItem(OrderID,OrderItem,ProductID,Quantity,ItemPrice)
VALUES(20009,3,'BNBG03',250,2.49);





ALTER TABLE OrderEntry
ADD CONSTRAINT FK_OrderEntry_Customer
FOREIGN KEY (CustID) REFERENCES Customer(CustID);

ALTER TABLE Product
ADD CONSTRAINT FK_Product_Vendor
FOREIGN KEY (VendorID) REFERENCES Vendor(VendorID);

ALTER TABLE OrderItem
ADD CONSTRAINT FK_OrderItem_Product
FOREIGN KEY (ProductID) REFERENCES Product(ProductID);

ALTER TABLE OrderItem
ADD CONSTRAINT fk_OrderItem_OrderEntry
FOREIGN KEY (OrderID) REFERENCES OrderEntry(OrderID);



-- QUERY 1
SELECT VendorID, ProductName
FROM Product
WHERE VendorID <> 'DLL01';

-- QUERY 2
SELECT ProductName, ProductPrice
FROM Product
WHERE ProductPrice BETWEEN 5.00 AND 10.00;

-- QUERY 3
SELECT ProductName, ProductPrice
FROM Product
WHERE (VendorID = 'DLL01' OR VendorID = 'BRS01')
AND ProductPrice >= 10.00

-- QUERY 4
SELECT AVG(ProductPrice)
AS AverageProductPrice
FROM Product;


-- QUERY 5
SELECT COUNT(*) AS CustomerAmount
FROM Customer;

-- QUERY 6
SELECT COUNT(CustEmail) AS CustWithEmails
FROM Customer;

-- QUERY 7
SELECT COUNT(ProductID) AS ProductType, AVG(ProductPrice) AS AveragePrice, MIN(ProductPrice) AS MinPrice, MAX(ProductPrice) AS MaxPrice
FROM Product;



-- JOIN 1
SELECT Vendor.VendorName, Product.ProductName, Product.ProductPrice
FROM Vendor
JOIN Product ON Vendor.VendorID = Product.VendorID;

-- JOIN 2
-- the data provided in this join is correct - the assignment outline gave us incorrect result expectation for 'raggedy ann' (quantity 5 is for ID 20008 - which isnt correct for this join)
SELECT Product.ProductName, Vendor.VendorName, Product.ProductPrice, OrderItem.Quantity
FROM OrderItem
JOIN Product ON OrderItem.ProductID = Product.ProductID
JOIN Vendor ON Product.VendorID = Vendor.VendorID
WHERE OrderID = '20007'

-- this is how i found whether i was correct or not - figured out what the order ID is for raggedy ann and see if the answer i had was correct
SELECT OrderItem.OrderItem, OrderItem.OrderID, Product.ProductName, Product.ProductID
FROM OrderItem
JOIN Product ON OrderItem.ProductID = Product.ProductID
WHERE ProductName = 'Raggedy Ann';


-- SUBQUERY 1
SELECT OrderID
FROM OrderItem
WHERE ProductID = 'RGAN01';

SELECT CustID
FROM OrderEntry
WHERE OrderID = (
SELECT OrderID
FROM OrderItem
WHERE ProductID = 'RGAN01'
);

SELECT CustName, CustContact
FROM Customer
WHERE CustID IN (
	SELECT CustID
	FROM OrderEntry
	WHERE OrderID IN (
		SELECT OrderID
		FROM OrderItem
		WHERE ProductID = 'RGAN01'
	)
);


-- SUBQUERY 2

SELECT CustName, CustCity
FROM Customer;

--

SELECT 
	CustName, 
	CustCity, 
	COUNT (OrderID) AS AllOrders
FROM Customer
LEFT JOIN OrderEntry ON Customer.CustID = OrderEntry.CustID
GROUP BY Customer.CustName, Customer.CustCity
ORDER BY Customer.CustName;

-- COMBINED QUERY 1
SELECT C.CustName, C.CustContact, C.CustEmail
FROM Customer C
WHERE C.CustCity IN ('Nelson', 'Wellington')

UNION 

SELECT C.CustName, C.CustContact, C.CustEmail
FROM Customer C
WHERE C.CustName = 'Fun4All'

ORDER BY C.CustName, C.CustContact;


-- VIEW 1
-- https://www.w3schools.com/sql/sql_view.asp 

IF EXISTS (SELECT * FROM sys.views WHERE name = 'vProductCustomer')
BEGIN
    DROP VIEW vProductCustomer;
END

GO
CREATE VIEW vProductCustomer AS
SELECT 
	Customer.CustID, 
	Customer.CustName, 
	Customer.CustContact, 
	OrderItem.ProductID
FROM Customer 
JOIN OrderEntry ON Customer.CustID = OrderEntry.CustID
JOIN OrderItem ON OrderEntry.OrderID = OrderItem.OrderID  
JOIN Product ON Product.ProductID = OrderItem.ProductID  

GO

SELECT CustName, CustContact
FROM vProductCustomer
WHERE ProductID = 'RGAN01'


-- VIEW 2

INSERT INTO Customer(CustID, CustName, CustPhone)
VALUES ('100000006', 'The Toy Emporium', '09-546-8552');

GO
CREATE VIEW vCustomerMailingLabel AS
SELECT Customer.CustName, Customer.CustAddress, Customer.CustCity, Customer.CustPhone
FROM Customer;

GO

SELECT * FROM vCustomerMailingLabel;
GO
CREATE VIEW vFilterCustomer AS
SELECT CustName, CustAddress, CustCity, CustPhone
FROM vCustomerMailingLabel
WHERE CustAddress IS NOT NULL AND CustCity IS NOT NULL;

GO


SELECT CustName, CustAddress, CustCity, CustPhone
FROM vFilterCustomer;
