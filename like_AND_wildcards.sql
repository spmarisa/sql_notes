SELECT column_name(s) FROM table_name WHERE column_name LIKE pattern;

-- The following SQL statement selects all customers with an EMAIL starting with the letter "s":
select * from users where email like '%s';

-- The following SQL statement selects all customers with an EMAIL ending with the letter "s":
select * from users where email like 's%';

-- The following SQL statement selects all customers with an EMAIL containing the pattern "s":
select * from users where email like '%s%';


-- SQL Wildcard Characters
-- SQL Wildcard Characters
-- SQL Wildcard Characters
-- In SQL, wildcard characters are used with the SQL LIKE operator. SQL wildcards are used to search for data within a table.
%	            A substitute for zero or more characters

_	            A substitute for a single character

[charlist]	  Sets and ranges of characters to match

[^charlist]   Matches only a character NOT specified within the brackets
or
[!charlist]

-- Using the SQL % Wildcard
SELECT * FROM articles where title LIKE '%chiranjeevi%';

-- Using the SQL _ Wildcard
-- The following SQL statement selects all users with an EMAIL starting with any character, followed by "erlin":

SELECT * FROM users WHERE email LIKE '_erlin';

-- this selects all users with an EMAIL starting with "L", followed by any character, followed by "n", followed by any character, followed by "on"
SELECT * FROM users WHERE email LIKE 'L_n_on';

-- Using the SQL [charlist] Wildcard
-- this selects all users with an Email starting with "b", "s", or "p"
SELECT * FROM users WHERE email LIKE '[bsp]%';
-- this selects all users with an EMAIL starting with 'a', 'b', 'c' or 'd'
SELECT * FROM users WHERE email LIKE '[a-d]%';
-- this selects all users with an Email NOT starting with "b", "s", or "p"
SELECT * FROM users WHERE email LIKE '[!bsp]%';
