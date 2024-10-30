SELECT a.Name, b.DepartementName
FROM dbo.Employee as a
INNER JOIN dbo.Departements as b ON a.DepartementsID = b.DepartementsID;
