SELECT e.Name, d.DepartementName
FROM dbo.Employee as e
INNER JOIN dbo.Departements as d ON e.DepartementsID = d.DepartementsID;
