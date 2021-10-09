DROP TABLE Orders1;

CREATE TABLE Orders1
(
    OrderId     INTEGER UNIQUE AUTO_INCREMENT,
    CustomerId  INTEGER NOT NULL,
    OrderDate   DATE,
    OrderTime   TIME,
    TotalAmount DECIMAL(8, 2),

    PRIMARY KEY (OrderId),
    CONSTRAINT FKCustomerToOrderNTo1 FOREIGN KEY (CustomerID) REFERENCES Customers1 (CustomerId)
);


SELECT
    OrderId,CustomerId,OrderDate,OrderTime,TotalAmount

FROM Orders1
WHERE CustomerId=1;

INSERT INTO Orders1
( CustomerId, OrderDate,OrderTime,TotalAmount)
VALUES (1,'2021-10-09','15:00',10.20),
    (2,'2021-10-09','13:00',130.2),
    (3,'2021-10-10','12:00',250),
    (4,'2021-10-11','10:00',25),
    (5,'2021-10-12','09:00',126.82),
    (1,'2021-10-12','09:00',126.82),
    (1,'2021-10-12','09:00',126.82),
    (2,'2021-10-12','09:00',126.82),
    (3,'2021-10-12','09:00',126.823)

;