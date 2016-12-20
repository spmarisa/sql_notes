-- SQL NULL Values
-- NULL values represent missing unknown data.
-- By default, a table column can hold NULL values.

-- If a column in a table is optional, we can insert a new record or update an existing record without adding a value to this column.
-- This means that the field will be saved with a NULL value.

-- It is not possible to test for NULL values with comparison operators, such as =, <, or <>.
-- We will have to use the IS NULL and IS NOT NULL operators instead.

SELECT LastName,FirstName,Address FROM Persons
WHERE Address IS NULL

SELECT LastName,FirstName,Address FROM Persons
WHERE Address IS NOT NULL


-- SQL NULL Functions
-- SQL ISNULL(), NVL(), IFNULL() and COALESCE() Functions

SELECT ProductName,UnitPrice*(UnitsInStock+UnitsOnOrder)
FROM Products
-- In the example above, if any of the "UnitsOnOrder" values are NULL, the result is NULL.

-- MySQL does have an ISNULL() function. However, it works a little bit different from Microsoft's ISNULL() function.

-- In MySQL we can use the IFNULL() function, like this:

SELECT ProductName,UnitPrice*(UnitsInStock+IFNULL(UnitsOnOrder,0))
FROM Products

-- or we can use the COALESCE() function, like this:

SELECT ProductName,UnitPrice*(UnitsInStock+COALESCE(UnitsOnOrder,0))
FROM Products
