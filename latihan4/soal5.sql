SELECT a.name, b.name
FROM [dbo].[Employee] a
INNER JOIN [dbo].[Employee] b ON a.EmployeeID = b.ManagerID;
