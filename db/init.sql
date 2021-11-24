-- Docker database setup file

-- If the development database doesn't exist Hasura crashes
CREATE DATABASE hasura_development;
CREATE TABLE users (
	id integer PRIMARY KEY
	name datatype,
	email datatype
)
INSERT INTO users VALUES(1, 'Graham Hadgraft', 'graham@example.com')
