DROP TABLE event;


CREATE TABLE event
(
    EventId      INTEGER UNIQUE AUTO_INCREMENT,
    UserId       INTEGER not null,
    EventDate    DATE,
    CheckInTime  TIME,
    CheckOutTime TIME,

    PRIMARY KEY (EventId),
    CONSTRAINT FKUsersToEvent FOREIGN KEY (UserId) REFERENCES users (UserId)
);

INSERT INTO event
(UserId,
 EventDate,
 CheckInTime,
 CheckOutTime)
VALUES
       (1, '2021-10-11', '08:45:00', null),
       (2, '2021-10-11', '08:48:00', '16:50:01'),
       (3, '2021-10-11', '08:50:00', null),
       (4, '2021-10-11', '08:55:00', null),
       (5, '2021-10-11', '09:00:00', '17:01:14'),
       (6, '2021-10-11', '09:00:00', null),
       (7, '2021-10-11', '09:01:00', '17:02:30'),
       (8, '2021-10-11', '09:02:00', null),
       (9, '2021-10-11', '09:04:00', null),
       (10, '2021-10-11', '09:08:00', null),
       (11, '2021-10-11', '09:12:00', '17:14:05'),
       (12, '2021-09-11', '09:12:00', '17:14:05') ;

UPDATE event
SET CheckOutTime='17:00:00'
WHERE CheckOutTime is null;

SELECT CURRENT_DATE;

SELECT CheckOutTime
FROM event
WHERE CheckOutTime<'17:00:00';

SELECT
       UserId,
       EventDate,
       CheckInTime,
       CheckOutTime
FROM event
ORDER BY EventDate;