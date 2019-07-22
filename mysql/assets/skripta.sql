CREATE DATABASE fbi CHARACTER SET utf8 COLLATE utf8_unicode_ci;

USE fbi;

CREATE TABLE `agents` (
	code INT(6) NOT NULL AUTO_INCREMENT,
	name VARCHAR(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
	area VARCHAR(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
	PRIMARY KEY (`code`)
);
	 
	 
INSERT INTO agents (name, area) VALUES ( 'Ramasundar', 'Bangalore');
INSERT INTO agents (name, area) VALUES ( 'Alex ', 'London');
INSERT INTO agents (name, area) VALUES ( 'Alford', 'New York');
INSERT INTO agents (name, area) VALUES ( 'Ravi Kumar', 'Bangalore');
INSERT INTO agents (name, area) VALUES ( 'Santakumar', 'Chennai');
INSERT INTO agents (name, area) VALUES ( 'Lucida', 'San Jose');
INSERT INTO agents (name, area) VALUES ( 'Anderson', 'Brisban');
INSERT INTO agents (name, area) VALUES ( 'Subbarao', 'Bangalore');
INSERT INTO agents (name, area) VALUES ( 'Mukesh', 'Mumbai');
INSERT INTO agents (name, area) VALUES ( 'McDen', 'London');
INSERT INTO agents (name, area) VALUES ( 'Ivan', 'Torento');
INSERT INTO agents (name, area) VALUES ( 'Benjamin', 'Hampshair');