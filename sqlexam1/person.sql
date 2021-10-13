DROP TABLE person;

create table if not exists person
(
    person_id     char(16)     not null unique,
    first_name    varchar(255) not null,
    last_name     varchar(255) not null,
    date_of_birth date         not null,
    gender        char DEFAULT 'U',
    nick_name     varchar(20)  null,
    UserId        int          not null,

    PRIMARY KEY (person_id),
    CONSTRAINT FKUsersToPerson FOREIGN KEY (UserId) REFERENCES users (UserId)
);

INSERT INTO person
(person_id,
 first_name,
 last_name,
 date_of_birth,
 gender,
 nick_name,
 UserId)
VALUES
       ('43.01.04-333.33','Sir Isaaac', 'Newton', '1643-01-04', 'm', 'greatest', 4),
       ('52.04.15-444.44', 'Leonardo', 'Da Vinci', '1452-04-15', 'm', 'artist', 5),
       ('52.04.15-555.55', 'Marie Sklodowske', 'Cruie', '1867-10-07', 'f', 'radioactiver', 10),
       ('56.07.10-666.66','Nikola','Tesla','1856-04-18','m','electroman',11),
       ('79.04.18-222.22','Albert','Einstein','1879-04-18','m','genius',3),
       ('86.85.11-111.11','Yilmaz','Mustafa','1986-03-11','m','chef',2);

UPDATE person
SET first_name='Hilal', last_name='Demir'
WHERE person_id='43.01.04-333.33';




