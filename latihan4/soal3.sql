SELECT a.ProjectName, b.DepartementName
FROM dbo.Projects as a
LEFT JOIN dbo.Departements as b ON a.DepartementsID = b.DepartementsID;
