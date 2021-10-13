USE checkinoutdb;

DROP TABLE Department;


CREATE TABLE Department
(
    DepartmentId INTEGER UNIQUE AUTO_INCREMENT,
    Title TEXT(50) NOT NULL ,
    ParentDepartmentId INTEGER(100),

    PRIMARY KEY (DepartmentId)


);

insert into department
(Title, ParentDepartmentId)
values ('Instructors', null),
       ('Human Resources', null),
       ('Administration', null),
       ('IT Services', null),
       ('Accounting', null),
       ('Java', 1),
       ('C#', 1),
       ('JavaScript', 1),
       ('Python', 1),
       ('System and Networking', 1),
       ('Ethical Hacking', 1),
       ('Data Analysis', 1),
       ('Job Applications', 2),
       ('Personal Development ', 2),
       ('Financial Accounting', 5),
       ('Student Reimbursement', 5),
       ('Computer Hardware', 4)
;

SELECT
    DepartmentId,Title,ParentDepartmentId
FROM Department
WHERE Title='Java';