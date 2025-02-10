SELECT 
    firstName, 
    lastName, 
    username,
    DATEDIFF(YEAR, birthdate, GETDATE()) AS Age
FROM 
    tblUsers
WHERE 
    (gender = 'Male' AND DATEDIFF(YEAR, birthdate, GETDATE()) > 30)
    OR
    (gender = 'Female' AND DATEDIFF(YEAR, birthdate, GETDATE()) < 20)
ORDER BY 
    Age DESC;
