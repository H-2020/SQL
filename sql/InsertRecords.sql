#CREATE RECORDS
INSERT INTO Users
( FirstName, LastName, Address, City)
VALUES
    ('Justin', 'Bieber', 'Somewhere in UK', 'London'),
    ('Nikola', 'Tesla', 'Somewhere in USA', 'New York'),
    ('Marie', 'Curie', 'Somewhere in France', 'Paris'),
    ('Yilmaz', 'Mustafa', 'Somewhere in Belgie', 'Brussel'),
    ('Albert', 'Einstein', 'Somewhere in France', 'Paris');

INSERT INTO Messages
(FromUserId, ToUserId, Subject, Content)
    VALUES
(1, 3,'from user 1 to user 3','This is the text content'),
(2, 1,'from user 2 to user 1','This is the text content'),
(1, 4,'from user 1 to user 4','This is the text content'),
(2, 3,'from user 2 to user 3','This is the text content'),
(2, 4,'from user 2 to user 4','This is the text content');
