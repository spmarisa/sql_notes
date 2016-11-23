-- The INSERT INTO statement is used to insert new records in a table.

INSERT INTO table_name VALUES (value1,value2,value3,...);
INSERT INTO table_name (column1,column2,column3,...) VALUES (value1,value2,value3,...);

INSERT INTO Customers (CustomerName, City, Country) VALUES ('Cardinal', 'Stavanger', 'Norway');
INSERT INTO articles (title, body) VALUES ('RDBMS', 'learning syntax');

-- The UPDATE statement is used to update records in a table.

UPDATE table_name SET column1=value1,column2=value2,... WHERE some_column=some_value;
UPDATE articles SET title='relational db', body='syntax seems fine' WHERE id=2;

UPDATE articles SET title='SQL', body='SQL and NOSQL' --(this updates all the columns of all the records)

-- The DELETE statement is used to delete records in a table.

DELETE FROM table_name WHERE some_column=some_value;
DELETE * FROM table_name;

DELETE FROM articles WHERE id=2;

DELETE FROM articles; --(if you omit the WHERE clause, all the records will be deleted)


-- The LIMIT clause is used to specify the number of records to return.
SELECT column_name(s) FROM table_name LIMIT number;
SELECT * FROM users LIMIT 5;
