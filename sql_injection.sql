-- An SQL Injection can destroy your database.
-- When SQL is used to display data on a web page, it is common to let web users input their own search values.

-- as SQL statements are text only, with a little piece of computer code,
-- to dynamically change SQL statements to provide the user with selected data

txtUserId = getRequestString("UserId");
txtSQL = "SELECT * FROM Users WHERE UserId = " + txtUserId;
