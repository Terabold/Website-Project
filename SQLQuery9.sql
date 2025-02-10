UPDATE tblUsers
SET city = 'NA'
WHERE city IS NULL OR city = '';
