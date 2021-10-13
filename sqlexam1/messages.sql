DROP TABLE Messages;

CREATE TABLE Messages
(
    MessageId  INTEGER UNIQUE AUTO_INCREMENT,
    FromUserId INTEGER,
    ToUserId   INTEGER,
    Subject    VARCHAR(255),
    Content    TEXT,
    PRIMARY KEY (MessageId),
    FOREIGN KEY (FromUserId) REFERENCES users (UserId),
    FOREIGN KEY (ToUserId) REFERENCES users (UserId)
);

INSERT INTO Messages
    (FromUserId, ToUserId, Subject, Content)
VALUES (1, 3, 'from user 1 to 3', 'This is the text content.'),
       (2, 4, 'from user 2 to 4', 'This is the text content.'),
       (3, 5, 'from user 3 to 5', 'This is the text content.'),
       (2, 8, 'from user 2 to 8', 'This is the text content.'),
       (7, 9, 'from user 7 to 9', 'This is the text content .');

SELECT
    FromUserId, ToUserId, Subject, Content
FROM Messages
WHERE FromUserId=2;