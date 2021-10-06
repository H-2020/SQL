#UPDATE Messages
UPDATE Messages
SET Content='Updated content',
    FromUserId=5,
    Subject='update subject'
WHERE MessageID=1;

UPDATE Messages
SET ToUserId=1,
    Subject='New update'
WHERE FromUserId=2;

#UPDATE Users
UPDATE Users
SET FirstName='Leen',
    LastName='Darl'
WHERE UserId=12;