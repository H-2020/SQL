CREATE TABLE Users
(
    # PRIMARY KEY FOR Users is UserId
        UserId INT UNIQUE AUTO_INCREMENT,
    FirstName VARCHAR(100),
    LastName  VARCHAR(100),
    Address   VARCHAR(255),
    City      VARCHAR(50)
);
#you cannot use custom-made datatype
CREATE TABLE Messages
(
    # PRIMARY KEY FOR Messages is MessageId
        MessageId INT UNIQUE AUTO_INCREMENT,
    # FOREIGN KEYS FOR Messages are FromUserId and ToUserId
        FromUserId INT,
    ToUserId INT,
    Subject  VARCHAR(255),
    Content  TEXT
);
