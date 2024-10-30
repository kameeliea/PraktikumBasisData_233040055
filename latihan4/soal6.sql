SELECT a.Name, b.ProjectName
FROM dbo.Employee as a
CROSS JOIN dbo.Projects as b;
