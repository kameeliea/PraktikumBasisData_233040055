SELECT a.Salaries, b.Name
FROM dbo.Salaries as a
LEFT JOIN dbo.Employee as b ON a.EmployeeID = b.EmployeeID;
