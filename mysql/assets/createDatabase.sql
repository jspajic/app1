CREATE DATABASE agentregistry CHARACTER SET utf8 COLLATE utf8_unicode_ci;

USE agentregistry;

CREATE TABLE agent(
	id INT(6) NOT NULL AUTO_INCREMENT,
	name VARCHAR(64),
	username VARCHAR(64),
	email VARCHAR(64),
	password VARCHAR(64),
	PRIMARY KEY (id),
	UNIQUE(username,email)
);

CREATE TABLE player(
	id INT(6) NOT NULL AUTO_INCREMENT,
	name VARCHAR(64),
	age INTEGER(2),
	club VARCHAR(64),
	net_worth int(16),
	agentID INT(6),
	PRIMARY KEY (id),
	FOREIGN KEY (agentID) REFERENCES agent(id)
);

CREATE INDEX playerNameIndex ON player(name);


insert into agent (name, username, email, password) values ('Marco Croad','scroad0', 'scroad0@gmail.com','$2a$10$pZKDiysn/NdVa.wojMmWjetV5vdh5PK0Utf1dWaoo5pU0BufoQ7N2');
insert into agent (name, username, email, password) values ('Jessamyn Rilings','jrilings1', 'jrilings1@yahoo.com', '$2a$10$pZKDiysn/NdVa.wojMmWjetV5vdh5PK0Utf1dWaoo5pU0BufoQ7N2');
insert into agent (name, username, email, password) values ('Laraine Brearley','lbrearley2', 'lbrearley2@gmail.com', '$2a$10$pZKDiysn/NdVa.wojMmWjetV5vdh5PK0Utf1dWaoo5pU0BufoQ7N2');
insert into agent (name, username, email, password) values ('Blanche Gamlin','bgamlin3', 'bgamlin3@gmail.com', '$2a$10$pZKDiysn/NdVa.wojMmWjetV5vdh5PK0Utf1dWaoo5pU0BufoQ7N2');
insert into agent (name, username, email, password) values ('Ortensia Pott','opott4', 'opott4@yahoo.com', '$2a$10$pZKDiysn/NdVa.wojMmWjetV5vdh5PK0Utf1dWaoo5pU0BufoQ7N2');
insert into agent (name, username, email, password) values ('Jozo Spajic','jspajic', 'jspajic4@yahoo.com', '$2a$10$pZKDiysn/NdVa.wojMmWjetV5vdh5PK0Utf1dWaoo5pU0BufoQ7N2');
insert into player (name, age, club, net_worth, agentID) values ('Jenifer Bartot', 22, 'HNK Hajduk Split',600000,2);
insert into player (name, age, club, net_worth, agentID) values ('Terell Carrabot', 18, 'Paris Saint-Germain F.C.',3125000 ,3);
insert into player (name, age, club, net_worth, agentID) values ('Tevin Mate', 20, 'FC Bayern Munich',2000000 ,1);
insert into player (name, age, club, net_worth, agentID) values ('Julee Nolte', 17, 'HNK Gorica', 100000,3);
insert into player (name, age, club, net_worth, agentID) values ('Mirko Maric', 19, 'NK Osijek',150000 ,2);
insert into player (name, age, club, net_worth, agentID) values ('Haley Treace', 19, 'FC Red Bull Salzburg', 750000,4);
insert into player (name, age, club, net_worth, agentID) values ('Marko Jukic', 20, 'NK Široki Brijeg', 75000,1);
insert into player (name, age, club, net_worth, agentID) values ('Devora Fforde', 17, 'HŠK Zrinjski Mostar', 50000,5);
insert into player (name, age, club, net_worth, agentID) values ('Anthony Kem', 22, 'Chelsea F.C.',12000000 ,4);
insert into player (name, age, club, net_worth, agentID) values ('Tyler MacElholm', 22, 'FC Barcelona',5400000, 1);
insert into player (name, age, club, net_worth, agentID) values ('Dylan Burdess', 25, 'Real Madrid CF',3200000 ,2);
insert into player (name, age, club, net_worth, agentID) values ('Mario Petrovic', 24, 'HNK Hajduk Split', 50000,3);
insert into player (name, age, club, net_worth, agentID) values ('Tish Dampier', 22, 'Paris Saint-Germain F.C.', 6000000,4);
insert into player (name, age, club, net_worth, agentID) values ('Derek Steggles', 23, 'FC Bayern Munich',9000000 ,5);
insert into player (name, age, club, net_worth, agentID) values ('Corie Pietri', 18, 'HNK Gorica',30000 ,5);