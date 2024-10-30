SELECT a.Name, b.ProjectName
FROM dbo.Employee as a
LEFT JOIN dbo.Projects as b ON a.EmployeeID = b.DepartementsID;
