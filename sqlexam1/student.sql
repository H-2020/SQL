create table if not exists student
(
    student_id       int auto_increment,
    person_id        char(16) null,
    course_id        char(10) null,
    total_attendance double   null,

    primary key (student_id),

    constraint person_to_student_fk
        foreign key (person_id) references person (person_id)
);
INSERT INTO student
(person_id, course_id, total_attendance)
VALUES ('79.04.18-222.22','3',96.5),
       ('43.01.04-333.33','3',98.8),
       ('56.07.10-666.66','4',88.24);

INSERT INTO student
(person_id, course_id, total_attendance)
VALUES ('52.04.15-444.44','3',97.5),
       ('86.85.11-111.11','3',97.8);

DELETE FROM student
WHERE student_id=5;