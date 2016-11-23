SELECT column_name,column_name FROM table_name WHERE column_name operator value;
SELECT id, name FROM users WHERE email = 'example@example.com';
SELECT * FROM users WHERE email = 'example@example.com';

-- operators in where clause
=         equal
<>, !=    not equal
>         greater than
<         less than
>=        greater than or equal
<=        lessthan or equal
BETWEEN   between an inclusive range
LIKE      search for a pattern
IN        to specify multiple possible values for a column

-- AND & OR operators used to filter records based on more than one condition
SELECT column_name FROM table_name WHERE column_name operator value AND column_name operator value;
SELECT * FROM Customers WHERE Country='Germany' AND City='Berlin';

SELECT column_name FROM table_name WHERE column_name operator value OR column_name operator value;
SELECT * FROM Customers WHERE Country='Germany' OR City='Berlin';
SELECT * FROM Customers WHERE City='Germany' OR City='Berlin';

SELECT * FROM Customers WHERE Country='Germany' AND (City='Berlin' OR City='München');


-- order by keyword -  used to sort the result-set by one or more columns.
-- sorts the records in ascending order by default.
SELECT column_name FROM table_name ORDER BY column_name ASC|DESC, column_name ASC|DESC;

SELECT * FROM articles ORDER BY title;
SELECT * FROM articles ORDER BY title, created_at;

SELECT * FROM articles ORDER BY title DESC;
SELECT * FROM articles ORDER BY title ASC;

SELECT * FROM articles ORDER BY title ASC, created_at DESC;
