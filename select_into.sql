-- The SELECT INTO statement copies data from one table and inserts it into a new table.
SELECT *
INTO newtable [IN externaldb]
FROM table1;

SELECT column_name(s)
INTO newtable [IN externaldb]
FROM table1;

-- The new table will be created with the column-names and types as defined in the SELECT statement.
-- You can apply new names using the AS clause.
SELECT *
INTO CustomersBackup2013
FROM Customers;

SELECT *
INTO CustomersBackup2013 IN 'Backup.mdb'
FROM Customers;

SELECT *
INTO CustomersBackup2013
FROM Customers
WHERE Country='Germany';

-- Copy data from more than one table into the new table:

SELECT Customers.CustomerName, Orders.OrderID
INTO CustomersOrderBackup2013
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID=Orders.CustomerID;
