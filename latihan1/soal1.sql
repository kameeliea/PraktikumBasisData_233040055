SELECT empid, firstname, lastname, titleofcourtesy,
CASE
		WHEN titleofcourtesy LIKE 'Mr.%' THEN 'Male'
		WHEN titleofcourtesy LIKE 'Ms.%' OR titlecourtesy LIKE 'Mrs.%' THEN 'Female'
		ELSE 'Unknown'
END AS gender
FROM HR.Employees
GO