-- SQL CREATE INDEX Statement
-- The CREATE INDEX statement is used to create indexes in tables.
-- Indexes allow the database application to find data fast; without reading the whole table.
-- Updating a table with indexes takes more time than updating a table without (because the indexes also need an update).
-- So you should only create indexes on columns (and tables) that will be frequently searched against.
CREATE INDEX index_name
ON table_name (column_name)

CREATE UNIQUE INDEX index_name
ON table_name (column_name)

-- SQL DROP INDEX, DROP TABLE, and DROP DATABASE
-- Indexes, tables, and databases can easily be deleted/removed with the DROP statement.
DROP INDEX table_name.index_name

DROP TABLE table_name

DROP DATABASE database_name

-- The TRUNCATE TABLE Statement
-- What if we only want to delete the data inside the table, and not the table itself?
TRUNCATE TABLE table_name


-- The ALTER TABLE Statement
-- The ALTER TABLE statement is used to add, delete, or modify columns in an existing table.
ALTER TABLE table_name
MODIFY COLUMN column_name datatype

-- DROP COLUMN Example
ALTER TABLE Persons
DROP COLUMN DateOfBirth

-- SQL AUTO INCREMENT Field
-- Auto-increment allows a unique number to be generated when a new record is inserted into a table.
-- MySQL uses the AUTO_INCREMENT keyword to perform an auto-increment feature.
CREATE TABLE Persons
(
ID int NOT NULL AUTO_INCREMENT,
LastName varchar(255) NOT NULL,
FirstName varchar(255),
Address varchar(255),
City varchar(255),
PRIMARY KEY (ID)
)

-- To let the AUTO_INCREMENT sequence start with another value, use the following SQL statement:
ALTER TABLE Persons AUTO_INCREMENT=100
