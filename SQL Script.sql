DROP TABLE IF EXISTS games;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
	user_id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
	user_name VARCHAR(255) NOT NULL,
	age INTEGER NOT NULL
);

CREATE TABLE games (
	game_id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
	title VARCHAR(255) NOT NULL,
	description VARCHAR(1000) NOT NULL,
	maxplayers INTEGER NOT NULL,
	currentplayers INTEGER NOT NULL,
	gamemaster INT REFERENCES users(user_id) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO users(user_name, age)
VALUES ('Name1', 20);
INSERT INTO users(user_name, age)
VALUES ('Name2', 21);

INSERT INTO games(title, description, maxplayers, currentplayers, gamemaster)
VALUES ('Title1', 'Description1', 4, 0, 1);
INSERT INTO games(title, description, maxplayers, currentplayers, gamemaster)
VALUES ('Title2', 'Description2', 5, 0, 2);