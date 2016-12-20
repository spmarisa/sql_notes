-- SQL Date Functions
-- The most difficult part when working with dates is to be sure that the format of the date you are trying to insert, matches the format of the date column in the database.
-- As long as your data contains only the date portion, your queries will work as expected. However, if a time portion is involved, it gets complicated.

-- MySQL Date Functions
NOW()	         Returns the current date and time
CURDATE()	     Returns the current date
CURTIME()	     Returns the current time
DATE()	       Extracts the date part of a date or date/time expression
EXTRACT()	     Returns a single part of a date/time
DATE_ADD()	   Adds a specified time interval to a date
DATE_SUB()	   Subtracts a specified time interval from a date
DATEDIFF()	   Returns the number of days between two dates
DATE_FORMAT()	 Displays date/time data in different formats


-- SQL Date Data Types
DATE - format YYYY-MM-DD
DATETIME - format: YYYY-MM-DD HH:MI:SS
TIMESTAMP - format: YYYY-MM-DD HH:MI:SS
YEAR - format YYYY or YY


-- SQL Working with Dates
SELECT * FROM Orders WHERE OrderDate='2008-11-11'
