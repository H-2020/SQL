#READ RECORDS
SELECT
    UserId ,
    FirstName,
    LastName,
    Address,
    City
FROM Users;

#READ RECORDS
SELECT
    MessageId,
    FromUserId,
    ToUserId,
    Subject,
    Content
FROM Messages;