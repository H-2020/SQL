DROP TABLE Customers1;

CREATE TABLE Customers1
(
    CustomerId INTEGER UNIQUE AUTO_INCREMENT,
    FirstName  VARCHAR(100) NOT NULL,
    LastName   VARCHAR(100) NOT NULL,
    AddressId  INTEGER      NOT NULL,
    PRIMARY KEY (CustomerId),
    CONSTRAINT FKAddressToCustomer FOREIGN KEY (AddressId) REFERENCES Addresses1 (AddressId)

);

INSERT INTO Customers1
( firstname, lastname, addressid)
VALUES ( 'Yilmaz','Mustafa',1    ),
       ('Justin','Bieber',2),
       ('Marie','Cruie',3),
       ('Albert','Einstein',4),
       ('Nikola','Tesla',5);