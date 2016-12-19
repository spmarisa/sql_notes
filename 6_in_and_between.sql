-- The IN Operator
-- The IN operator allows you to specify multiple values in a WHERE clause.

SELECT column_name(s) FROM table_name WHERE column_name IN (value1,value2,...);
SELECT * FROM users WHERE id IN (1, 4, 5);

-- The SQL BETWEEN Operator
-- The BETWEEN operator selects values within a range. The values can be numbers, text, or dates.

SELECT column_name(s) FROM table_name WHERE column_name BETWEEN value1 AND value2;
SELECT email, id FROM users WHERE id BETWEEN 1 and 10;

-- NOT BETWEEN Operator Example
SELECT column_name(s) FROM table_name WHERE column_name NOT BETWEEN value1 AND value2;
SELECT email, id FROM users WHERE id NOT BETWEEN 1 and 10;

-- BETWEEN Operator with IN Example
SELECT * FROM users WHERE (id BETWEEN 1 AND 20) AND NOT id IN (1,2,3);

-- BETWEEN Operator with Text Value Example
-- this selects all users with a email beginning with any of the letter BETWEEN 'C' and 'M':
SELECT * FROM users WHERE email BETWEEN 'C' AND 'M';

-- NOT BETWEEN Operator with Text Value Example
-- this selects all users with a email not beginning with any of the letter BETWEEN 'C' and 'M':
SELECT * FROM users WHERE email not BETWEEN 'C' AND 'M';

-- BETWEEN Operator with Date Value Example
SELECT * FROM users WHERE created_at BETWEEN '2015-05-14 09:45:26' AND '2015-05-18 10:26:20';
