-- The SQL UNION operator combines the result of two or more SELECT statements.
-- Notice that each SELECT statement within the UNION must have the same number of columns.
-- The columns must also have similar data types. Also, the columns in each SELECT statement must be in the same order.

SELECT column_name(s) FROM table1
UNION
SELECT column_name(s) FROM table2;


-- The UNION operator selects only distinct values by default. To allow duplicate values, use the ALL keyword with UNION

SELECT column_name(s) FROM table1
UNION ALL
SELECT column_name(s) FROM table2;

-- The column names in the result-set of a UNION are usually equal to the column names in the first SELECT statement in the UNION.

SELECT City FROM Customers
UNION
SELECT City FROM Suppliers
ORDER BY City;

SELECT City, Country FROM Customers
WHERE Country='Germany'
UNION ALL
SELECT City, Country FROM Suppliers
WHERE Country='Germany'
ORDER BY City;
