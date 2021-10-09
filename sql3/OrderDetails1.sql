DROP TABLE OrderDetails1;

CREATE TABLE OrderDetails1
(

    OrderId INTEGER,
    ItemId  INTEGER,

    CONSTRAINT PKOrderToOrderDetailsMtoN FOREIGN KEY (OrderId)
        REFERENCES orders1 (OrderId),
    CONSTRAINT PKItemToOrderDetailsMtoN FOREIGN KEY (ItemId)
        REFERENCES items1 (ItemId)
);
#filter all records, items from order 1
SELECT OrderId, ItemId
FROM OrderDetails1
WHERE OrderId = 1;

#filter all records where item 1 is ordered
SELECT OrderId, ItemId
FROM OrderDetails1
WHERE ItemId = 1;

INSERT INTO OrderDetails1
    (OrderId, ItemId)
VALUES (1, 1),
       (1, 2),
       (1, 3),
       (2, 1),
       (3, 2),
       (3, 3),
       (3, 4);