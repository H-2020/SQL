DROP TABLE Users;


CREATE TABLE Users
(
    UserId       INTEGER UNIQUE AUTO_INCREMENT,
    Email        VARCHAR(255) UNIQUE,
    Phone        INT(15) UNIQUE,
    SecurityCode VARCHAR(100),
    Activation   VARCHAR(100),

    PRIMARY KEY (UserId)


);


INSERT INTO Users
(Email,
 Phone,
 SecurityCode,
 Activation)
VALUES ('hilal.demir@student.intecbrussel.be', 0324992234, md5(1234), '3456'),
       ('yilmaz.mustafa@intecbrusssel.be', 030256214, md5(1245), 'dskdsldmdm3456'),
       ('Albert.einstein@intecbrusssel.be', 03025644, md5(2456), 'gggfggfgf3456'),
       ('isaac.newton@intecbrusssel.be', 0033333355, md5(7245), '3456gffggfgfgf'),
       ('leonardo.da.vinci@intecbrusssel.be', 0302445644, md5(1845), '34ggfgfgfg56'),
       ('alexander.bell@intecbrusssel.be', 03005555, md5(1243), '34gfgfgfgfgf56'),
       ('aristot@intecbrusssel.be', 0302445604, md5(2465), '3gfgfgfgf456'),
       ('galileo.galilei@intecbrusssel.be', 0302416445, md5(1785), '34gffgg56'),
       ('Louis.pastuer@intecbrusssel.be', 0302432445, md5(3485), '345gfgfgfgfg6'),
       ('marie.cruie@intecbrusssel.be', 0302412344, md5(9785), '3gghghhggh456'),
       ('nikola.tesla@intecbrusssel.be', 0302446789, md5(4356), '345dssdsss6'),
       ('charles.darwin@intecbrusssel.be', 030212345, md5(2895), '3ffgfgf456');

UPDATE Users
SET SecurityCode ='2021'
WHERE UserId = 2;


SELECT Email
FROM Users
WHERE Email LIKE 'Al%';

