-- An SQL JOIN clause is used to combine rows from two or more tables, based on a common field between them.
-- INNER JOIN
-- LEFT JOIN
-- RIGHT JOIN
-- FULL JOIN


-- SQL INNER JOIN Keyword
-- The INNER JOIN keyword selects all rows from both tables as long as there is a match between the columns in both tables.

SELECT column_name(s) FROM table1 INNER JOIN table2 ON table1.column_name=table2.column_name;
SELECT column_name(s) FROM table1 INNER JOIN table2 ON table1.column_name1=table2.column_name1 ORDER BY table1.column_name2;

-- SQL LEFT JOIN keyword - LEFT OUTER JOIN
-- The LEFT JOIN keyword returns all rows from the left table (table1), with the matching rows in the right table (table2).
-- The result is NULL in the right side when there is no match.
SELECT column_name(s) FROM table1 LEFT JOIN table2 ON table1.column_name=table2.column_name;


-- SQL RIGHT JOIN
-- The RIGHT JOIN keyword returns all rows from the right table (table2), with the matching rows in the left table (table1).
-- The result is NULL in the left side when there is no match.
SELECT column_name(s) FROM table1 RIGHT JOIN table2 ON table1.column_name=table2.column_name;


-- SQL FULL OUTER JOIN
-- The FULL OUTER JOIN keyword returns all rows from the left table (table1) and from the right table (table2).
SELECT column_name(s) FROM table1 FULL OUTER JOIN table2 ON table1.column_name=table2.column_name;
