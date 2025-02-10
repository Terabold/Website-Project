SELECT COUNT(*) AS NumberOfUsersOver18
FROM tblUsers
WHERE DATEDIFF(YEAR, birthdate, GETDATE()) > 18;
