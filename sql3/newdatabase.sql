# create database  
CREATE DATABASE joinsdb;

# create tables 
CREATE TABLE joinsdb.users(
	
	user_id INT UNIQUE AUTO_INCREMENT,
	user_name CHAR(100) UNIQUE NOT NULL,
	pass_code VARCHAR(255) NOT NULL,
	
	PRIMARY KEY (user_id) 

);

CREATE TABLE joinsdb.notifications(

	notification_id INT UNIQUE AUTO_INCREMENT,
	subject VARCHAR(255) NOT NULL,
	content TEXT,
	from_user_id INT,
	to_user_id INT,
	
	PRIMARY KEY (notification_id),
	FOREIGN KEY (from_user_id) REFERENCES users(user_id),
	FOREIGN KEY (to_user_id) REFERENCES users(user_id)
);

# add column to users table
ALTER TABLE joinsdb.users
	ADD COLUMN activation BIGINT(255) NULL DEFAULT NULL AFTER pass_code;

# add column to users table
ALTER TABLE joinsdb.users
	ADD COLUMN random_number BIGINT(255) NULL DEFAULT 111 AFTER activation;
	
# add column to users table
ALTER TABLE joinsdb.users
	ADD COLUMN max_tries_login INT(1) NULL DEFAULT 3 AFTER random_number;
	

# insert record
INSERT INTO joinsdb.users 
(user_name, pass_code, activation) 
VALUES 
('justin', 'bieber', '456'),
('nikola', 'tesla', '888'),
('marie', 'curie', '999'),
('albert', 'einstein', '111'),
('thomas', 'edison', '222'),
('lady ada', 'lawrance', '333');

INSERT INTO joinsdb.users 
(user_name, pass_code) 
VALUES 
('zalon', 'dusk');

INSERT INTO joinsdb.notifications 
(subject, content, from_user_id, to_user_id) 
VALUES 
('Hello', 'hello word from joinsdb', 1, 2),
('Hola', 'hello word from joinsdb', 1, 3),
('Bonjour', 'hello word from joinsdb', 1, 4),
('Zdravstvuyte', 'hello word from joinsdb', 1, 5),
('Nǐn hǎo', 'hello word from joinsdb', 1, 6),
('ola', 'hello word from joinsdb', 1, 7),
('ni hao ma?', 'hello word from joinsdb', 2, 1),
('assalamualeykum', 'hello word from joinsdb', 2, 3),
('huyst', 'hello word from joinsdb', 2, 4),
('Bonjour', 'hello word from joinsdb', 2, 5),
('vdhuwhdqwj', 'hello word from joinsdb', 2, 6),
('ewuf qeuqwdwq', 'hello word from joinsdb', 2, 7),
('bfokwhebwqd dqdq', 'hello word from joinsdb', 3, 1),
('duhfvuıwefqe', 'hello word from joinsdb', 3, 2),
('bfgkoerhufgwefbw', 'hello word from joinsdb', 3, 4),
('goedemiddag', 'hello word from joinsdb', 3, 5),
('for', 'hello word from joinsdb', 3, 6),
('the', 'hello word from joinsdb', 3, 7),
('sweet', 'hello word from joinsdb', 4, 1),
('love', 'hello word from joinsdb', 4, 2),
('rememberd', 'hello word from joinsdb', 4, 3),
('such', 'hello word from joinsdb', 4, 5),
('wealth', 'hello word from joinsdb', 4, 6),
('brings', 'hello word from joinsdb', 4, 7),
('then I', 'hello word from joinsdb', 5, 1),
('scorn', 'hello word from joinsdb', 5, 2),
('to change', 'hello word from joinsdb', 5, 3),
('my state', 'hello word from joinsdb', 5, 4),
('with', 'hello word from joinsdb', 5, 6),
('kings', 'hello word from joinsdb', 5, 7),
('goedenavond', 'hello word from joinsdb', 6, 1),
('hello iedereen', 'hello word from joinsdb', 6, 2),
('koniciva', 'hello word from joinsdb', 6, 3),
('nazdrovya', 'hello word from joinsdb', 6, 4),
('dobro utra', 'hello word from joinsdb', 6, 5),
('nasılsın', 'hello word from joinsdb', 6, 7),
('ik ben er', 'hello word from joinsdb', 7, 1),
('warning', 'hello word from joinsdb', 7, 2),
('hello world', 'hello word from joinsdb', 7, 3),
('hallo java coders', 'hello word from joinsdb', 7, 4),
('you are accepted to Microsoft', 'hello word from joinsdb', 7, 5),
('you won 1.000.000 € please click the link ', 'hello word from joinsdb', 7, 6)
;

# select records

SELECT 
	users.user_id, 
	users.user_name, 
	users.pass_code, 
	users.activation, 
	users.random_number, 
	users.max_tries_login,
	notifications.notification_id,
	notifications.subject,
	notifications.content,
	notifications.from_user_id,
	notifications.to_user_id
	
FROM users, notifications;


