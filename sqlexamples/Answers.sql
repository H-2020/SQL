USE ORG;

#1.Lees all werknemers.
SELECT * FROM Worker;

#2.Lees alle werknemers die werken in het afdeling HR
SELECT FIRST_NAME
FROM Worker
WHERE DEPARTMENT='HR';

#3. Voeg het minst 4 werknemers toe.
INSERT INTO Worker
(FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT)
VALUES
       ('Leen','Dany',10000,'2012-09-09 09.00.00','HR'),
       ('Lena','Adriens',8000,'2012-07-09 10.00.00','Admin'),
       ('Nova','Droka',8000,'2012-10-03 13.00.00','HR'),
       ('Simon','Floran',8000,'2020-05-07 12.00.00','Account'),
       ('Flo','Adriens',8000,'2012-03-05 10.00.00','Account')
;

#4. Filter alle medewerkers die later dan 2020 bij de organisatie zijn gekomen
SELECT FIRST_NAME
FROM Worker
WHERE JOINING_DATE>'2020-01-01 00.00.00';

#5. Lees alle werknemers die 'admin' zijn en hun salaris groter of gelijk is aan 90000
SELECT FIRST_NAME
FROM Worker
WHERE DEPARTMENT='Admin' AND SALARY>=90000;

#6. Zoek alle bonussen van de werknemer met ID 1
SELECT *
FROM bonus
WHERE WORKER_REF_ID=1;

#7. Lees alle werknemers van wie het SALARIS tussen 100000 en 500000 ligt.
SELECT FIRST_NAME
FROM Worker
WHERE SALARY BETWEEN 100000 AND 500000;

#8. Schrijf een SQL-query om de huidige datum en tijd weer te geven.
SELECT CURRENT_TIMESTAMP;

#9. Schrijf een SQL-query om de top 3 records van een tabel weer te geven.
SELECT *
FROM Worker LIMIT 3;

#10. Voeg 3 nieuwe records naar title tabel toe.
INSERT INTO Title
(WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM)
VALUES (009, 'Manager', '2017-02-02 00:00:00'),
       (010, 'Executive', '2015-08-08 00:00:00'),
       (011, 'Executive', '2018-09-09 00:00:00');
#11. Update het salaris van Nikola Tesla naar 2000000.
UPDATE worker
SET SALARY=2000000
WHERE FIRST_NAME='Nikola';

#12.Creëer een opnieuw tabel met de volgende eigenschappen:
CREATE TABLE Address(

    AddressId INTEGER UNIQUE AUTO_INCREMENT,
    DoorNo       VARCHAR(255),
    HouseNo      VARCHAR(255),
    Street       VARCHAR(255),
    Municipality VARCHAR(255),
    PostCode     INTEGER(4) ,
    City         VARCHAR(255),
    Region       VARCHAR(255),
    Country      VARCHAR(255),
    PRIMARY KEY (AddressId)
);



