DROP TABLE IF EXISTS games;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
	id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
	email VARCHAR(255),
	firstname VARCHAR(255),
	lastname VARCHAR(255),
	password VARCHAR(255)
);

CREATE TABLE games (
	game_id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
	title VARCHAR(255) NOT NULL,
	description VARCHAR(1000) NOT NULL,
	maxplayers INTEGER NOT NULL,
	currentplayers INTEGER NOT NULL,
	gamemaster INT REFERENCES users(id) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO users(email, firstname, lastname, password)
VALUES ('Email1', 'Firstname1', 'Lastname1', 'Password1');
INSERT INTO users(email, firstname, lastname, password)
VALUES ('Email2', 'Firstname2', 'Lastname2', 'Password2');

INSERT INTO games(title, description, maxplayers, currentplayers, gamemaster)
VALUES ('Title1', 'Description1', 4, 0, 1);
INSERT INTO games(title, description, maxplayers, currentplayers, gamemaster)
VALUES ('Title2', 'Description2', 5, 0, 2);