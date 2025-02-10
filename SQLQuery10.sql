UPDATE tblUsers
SET firstName = CONCAT(firstName, '_Minor')
WHERE DATEDIFF(YEAR, birthdate, GETDATE()) < 18
  AND firstName NOT LIKE '%_Minor';
