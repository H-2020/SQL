create table if not exists employee
(
    employee_id     int      not null unique auto_increment,
    person_id       char(16) not null,
    department_id   int      not null,
    work_start_date date     not null,
    work_end_date   date     null,
    profile_photo   blob     null,

    primary key (employee_id),

    constraint person_to_employee_fk
        foreign key (person_id) references person (person_id)
);

INSERT INTO employee
( person_id     ,
 department_id  ,
 work_start_date ,
 work_end_date   ,
 profile_photo  )
 VALUES ('86.85.11-111.11',6,'2021-06-01','2022-06-01',null),
        ('52.04.15-444.44',7,'2000-09-01','2045-09-01',null),
        ('52.04.15-555.55',9,'2020-01-01','2025-01-01',null);
