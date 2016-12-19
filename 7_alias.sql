-- SQL Aliases
-- SQL aliases are used to give a database table, or a column in a table, a temporary name.

-- SQL Alias Syntax for Columns
 SELECT column_name AS alias_name FROM table_name;
 SELECT id AS name FROM users;

-- SQL Alias Syntax for Tables
 SELECT column_name(s) FROM table_name AS alias_name;
 SELECT id FROM users AS name;

-- Alias Example for Table Columns
-- this  specifies two aliases, one for the first_name column and one for the last_name column.
-- Tip: It requires double quotation marks or square brackets if the column name contains spaces
 SELECT first_name AS fn, last_name AS ln FROM users;
 SELECT first_name AS fn, last_name AS 'l n' FROM users;

-- here we combine four columns (first_name, last_name, email, and id) and create an alias named "complete_name":
 SELECT id, CONCAT(first_name,', ',last_name,', ',email,', ',id) AS complete_name FROM users;

-- Alias Example for Tables
SELECT u.id, u.email, t.name
FROM users AS u, topics AS t
WHERE u.id=1 AND t.CustomerID =o.CustomerID;

SELECT o.OrderID, o.OrderDate, c.CustomerName
FROM Customers AS c, Orders AS o
WHERE c.CustomerName="Around the Horn" AND c.CustomerID=o.CustomerID;
