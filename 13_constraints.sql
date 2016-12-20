-- SQL constraints
-- SQL constraints are used to specify rules for the data in a table.
-- If there is any violation between the constraint and the data action, the action is aborted by the constraint.
CREATE TABLE table_name
(
column_name1 data_type(size) constraint_name,
column_name2 data_type(size) constraint_name,
column_name3 data_type(size) constraint_name,
....
);

-- In SQL, we have the following constraints:
-- NOT NULL - Indicates that a column cannot store NULL value
-- UNIQUE - Ensures that each row for a column must have a unique value
-- PRIMARY KEY - A combination of a NOT NULL and UNIQUE. Ensures that a column (or combination of two or more columns) have a unique identity which helps to find a particular record in a table more easily and quickly
-- FOREIGN KEY - Ensure the referential integrity of the data in one table to match values in another table
-- CHECK - Ensures that the value in a column meets a specific condition
-- DEFAULT - Specifies a default value for a column

-- NOT NULL CONSTRAINT
-- By default, a table column can hold NULL values.
CREATE TABLE PersonsNotNull
(
P_Id int NOT NULL,
LastName varchar(255) NOT NULL,
FirstName varchar(255),
Address varchar(255),
City varchar(255)
)

-- UNIQUE CONSTRAINT
-- The UNIQUE constraint uniquely identifies each record in a database table.
CREATE TABLE Persons
(
P_Id int NOT NULL,
LastName varchar(255) NOT NULL,
FirstName varchar(255),
Address varchar(255),
City varchar(255),
UNIQUE (P_Id)
)

-- To allow naming of a UNIQUE constraint, and for defining a UNIQUE constraint on multiple columns, use the following SQL syntax:
CREATE TABLE Persons
(
P_Id int NOT NULL,
LastName varchar(255) NOT NULL,
FirstName varchar(255),
Address varchar(255),
City varchar(255),
CONSTRAINT uc_PersonID UNIQUE (P_Id,LastName)
)

-- To create a UNIQUE constraint on the "P_Id" column when the table is already created, use the following SQL:
ALTER TABLE Persons
ADD CONSTRAINT uc_PersonID UNIQUE (P_Id,LastName)

-- To drop a UNIQUE constraint, use the following SQL:
ALTER TABLE Persons
DROP INDEX uc_PersonID

-- PRIMARY KEY CONSTRAINT
-- The PRIMARY KEY constraint uniquely identifies each record in a database table.
-- Primary keys must contain UNIQUE values.
-- A primary key column cannot contain NULL values.
-- Most tables should have a primary key, and each table can have only ONE primary key.
CREATE TABLE Persons
(
P_Id int NOT NULL,
LastName varchar(255) NOT NULL,
FirstName varchar(255),
Address varchar(255),
City varchar(255),
PRIMARY KEY (P_Id)
)

-- To allow naming of a PRIMARY KEY constraint, and for defining a PRIMARY KEY constraint on multiple columns, use the following SQL syntax:
CREATE TABLE Persons
(
P_Id int NOT NULL,
LastName varchar(255) NOT NULL,
FirstName varchar(255),
Address varchar(255),
City varchar(255),
CONSTRAINT pk_PersonID PRIMARY KEY (P_Id,LastName)
)

-- To create a PRIMARY KEY constraint on the "P_Id" column when the table is already created, use the following SQL:
ALTER TABLE Persons
ADD CONSTRAINT pk_PersonID PRIMARY KEY (P_Id,LastName)

-- To drop a PRIMARY KEY constraint, use the following SQL:
ALTER TABLE Persons
DROP PRIMARY KEY

-- FOREIGN KEY Constraint
-- A FOREIGN KEY in one table points to a PRIMARY KEY in another table.
CREATE TABLE Orders
(
O_Id int NOT NULL,
OrderNo int NOT NULL,
P_Id int,
PRIMARY KEY (O_Id),
FOREIGN KEY (P_Id) REFERENCES Persons(P_Id)
)

-- To allow naming of a FOREIGN KEY constraint, and for defining a FOREIGN KEY constraint on multiple columns, use the following SQL syntax:
CREATE TABLE Orders
(
O_Id int NOT NULL,
OrderNo int NOT NULL,
P_Id int,
PRIMARY KEY (O_Id),
CONSTRAINT fk_PerOrders FOREIGN KEY (P_Id)
REFERENCES Persons(P_Id)
)

-- To create a FOREIGN KEY constraint on the "P_Id" column when the "Orders" table is already created, use the following SQL:
ALTER TABLE Orders
ADD CONSTRAINT fk_PerOrders
FOREIGN KEY (P_Id)
REFERENCES Persons(P_Id)

-- To drop a FOREIGN KEY constraint, use the following SQL:
ALTER TABLE Orders
DROP FOREIGN KEY fk_PerOrders

--SQL CHECK Constraint
-- The CHECK constraint is used to limit the value range that can be placed in a column.
-- If you define a CHECK constraint on a single column it allows only certain values for this column.
-- If you define a CHECK constraint on a table it can limit the values in certain columns based on values in other columns in the row.
CREATE TABLE Persons
(
P_Id int NOT NULL,
LastName varchar(255) NOT NULL,
FirstName varchar(255),
Address varchar(255),
City varchar(255),
CHECK (P_Id>0)
)

-- To allow naming of a CHECK constraint, and for defining a CHECK constraint on multiple columns, use the following SQL syntax:
CREATE TABLE Persons
(
P_Id int NOT NULL,
LastName varchar(255) NOT NULL,
FirstName varchar(255),
Address varchar(255),
City varchar(255),
CONSTRAINT chk_Person CHECK (P_Id>0 AND City='Sandnes')
)

-- To drop a CHECK constraint, use the following SQL:
ALTER TABLE Persons
DROP CHECK chk_Person


-- SQL DEFAULT Constraint
-- The DEFAULT constraint is used to insert a default value into a column.
-- The default value will be added to all new records, if no other value is specified.
CREATE TABLE Persons
(
P_Id int NOT NULL,
LastName varchar(255) NOT NULL,
FirstName varchar(255),
Address varchar(255),
City varchar(255) DEFAULT 'Sandnes'
)

-- The DEFAULT constraint can also be used to insert system values, by using functions like GETDATE():
CREATE TABLE Orders
(
O_Id int NOT NULL,
OrderNo int NOT NULL,
P_Id int,
OrderDate date DEFAULT GETDATE()
)

-- To create a DEFAULT constraint on the "City" column when the table is already created, use the following SQL:
ALTER TABLE Persons
ALTER City SET DEFAULT 'SANDNES'

-- To drop a DEFAULT constraint, use the following SQL:
ALTER TABLE Persons
ALTER City DROP DEFAULT
