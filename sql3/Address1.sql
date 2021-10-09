DROP TABLE Addresses1;

CREATE TABLE Addresses1
(
    AddressId    INTEGER UNIQUE AUTO_INCREMENT,
    DoorNo       VARCHAR(255),
    HouseNo      VARCHAR(255),
    Street       VARCHAR(255),
    Municipality VARCHAR(255),
    PostCode     INTEGER(4)   DEFAULT 1000,
    City         VARCHAR(255),
    Region       VARCHAR(255) DEFAULT 'Brussel',
    Country      VARCHAR(255) DEFAULT 'Belgie',

    PRIMARY KEY (AddressId)
);

INSERT INTO Addresses1
(DoorNo,
 HouseNo,
 Street,
 Municipality,
 PostCode,
 City)
VALUES ('1', '5', 'Bezigstraat', 'Tervuren', 106, 'Stad Brussel'),
       ('2', '7', 'Coffeestraat', 'Tervuren',100, 'Stad Brussel'),
       ('3', '10', 'Valleistraat', 'Wilsele',160, 'Stad Leuven'),
       ('5', '4', 'Dekenstraat', 'Tervuren',210, 'Stad Brussel');

INSERT INTO Addresses1
(DoorNo,
 HouseNo,
 Street,
 Municipality,

 City)
VALUES ('5', '25', 'Drukstraat', 'Leuven',  'Stad Brussel'),
       ('7', '10', 'Coffeestraat', 'Tervuren', 'Stad Brussel')
       ;
