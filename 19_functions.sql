-- SQL Functions
-- SQL has many built-in functions for performing calculations on data.

-- SQL Aggregate Functions
-- SQL aggregate functions return a single value, calculated from values in a column.

-- AVG() - Returns the average value
SELECT AVG(column_name) FROM table_name
SELECT AVG(Price) AS PriceAverage FROM Products;

-- COUNT() - Returns the number of rows
SELECT COUNT(column_name) FROM table_name;
SELECT COUNT(*) FROM table_name;
SELECT COUNT(DISTINCT column_name) FROM table_name;
SELECT COUNT(*) AS NumberOfOrders FROM Orders;

-- FIRST() - Returns the first value
SELECT column_name FROM table_name
ORDER BY column_name ASC
LIMIT 1;

-- LAST() - Returns the last value
SELECT column_name FROM table_name
ORDER BY column_name DESC
LIMIT 1;

-- MAX() - Returns the largest value
SELECT MAX(column_name) FROM table_name;
SELECT MAX(Price) AS HighestPrice FROM Products;

-- MIN() - Returns the smallest value
SELECT MIN(column_name) FROM table_name;
SELECT MIN(Price) AS SmallestOrderPrice FROM Products;

-- SUM() - Returns the sum
SELECT SUM(column_name) FROM table_name;
SELECT SUM(Quantity) AS TotalItemsOrdered FROM OrderDetails;

-- SQL GROUP BY Statement
-- The GROUP BY statement is used in conjunction with the aggregate functions to group the result-set by one or more columns.
SELECT column_name, aggregate_function(column_name)
FROM table_name
WHERE column_name operator value
GROUP BY column_name;

SELECT Shippers.ShipperName,COUNT(Orders.OrderID) AS NumberOfOrders FROM Orders
LEFT JOIN Shippers
ON Orders.ShipperID=Shippers.ShipperID
GROUP BY ShipperName;

SELECT Shippers.ShipperName, Employees.LastName,
COUNT(Orders.OrderID) AS NumberOfOrders
FROM ((Orders
INNER JOIN Shippers
ON Orders.ShipperID=Shippers.ShipperID)
INNER JOIN Employees
ON Orders.EmployeeID=Employees.EmployeeID)
GROUP BY ShipperName,LastName;

-- SQL HAVING Clause
-- The HAVING clause was added to SQL because the WHERE keyword could not be used with aggregate functions.
SELECT column_name, aggregate_function(column_name)
FROM table_name
WHERE column_name operator value
GROUP BY column_name
HAVING aggregate_function(column_name) operator value;

SELECT Employees.LastName, COUNT(Orders.OrderID) AS NumberOfOrders FROM (Orders
INNER JOIN Employees
ON Orders.EmployeeID=Employees.EmployeeID)
GROUP BY LastName
HAVING COUNT(Orders.OrderID) > 10;

SELECT Employees.LastName, COUNT(Orders.OrderID) AS NumberOfOrders FROM Orders
INNER JOIN Employees
ON Orders.EmployeeID=Employees.EmployeeID
WHERE LastName='Davolio' OR LastName='Fuller'
GROUP BY LastName
HAVING COUNT(Orders.OrderID) > 25;

-- SQL Scalar functions
-- SQL scalar functions return a single value, based on the input value.


-- UCASE() - Converts a field to upper case
SELECT UCASE(column_name) FROM table_name;

SELECT UCASE(CustomerName) AS Customer, City
FROM Customers;

-- LCASE() - Converts a field to lower case
SELECT LCASE(column_name) FROM table_name;

SELECT LCASE(CustomerName) AS Customer, City
FROM Customers;


-- MID() - Extract characters from a text field
SELECT MID(column_name,start,length) AS some_name FROM table_name;

SELECT MID(City,1,4) AS ShortCity
FROM Customers;


-- LEN() - Returns the length of a text field
SELECT LEN(column_name) FROM table_name;

SELECT CustomerName,LEN(Address) as LengthOfAddress
FROM Customers;


-- ROUND() - Rounds a numeric field to the number of decimals specified
SELECT ROUND(column_name,decimals) FROM table_name;

SELECT ProductName, ROUND(Price,0) AS RoundedPrice
FROM Products;

-- NOW() - Returns the current system date and time
SELECT NOW() FROM table_name;

SELECT ProductName, Price, Now() AS PerDate
FROM Products;

-- FORMAT() - Formats how a field is to be displayed
SELECT FORMAT(column_name,format) FROM table_name;

SELECT ProductName, Price, FORMAT(Now(),'YYYY-MM-DD') AS PerDate
FROM Products;
