-- The INSERT INTO SELECT statement copies data from one table and inserts it into an existing table.
-- The INSERT INTO SELECT statement selects data from one table and inserts it into an existing table.
-- Any existing rows in the target table are unaffected.

INSERT INTO table2
SELECT * FROM table1;

INSERT INTO table2
(column_name(s))
SELECT column_name(s)
FROM table1;


INSERT INTO Customers (CustomerName, Country)
SELECT SupplierName, Country FROM Suppliers;

INSERT INTO Customers (CustomerName, Country)
SELECT SupplierName, Country FROM Suppliers
WHERE Country='Germany';
