SELECT e.empid, e.firstname, e.lastname
FROM 
	HR.Employees e
LEFT OUTER JOIN 
	Sales.Orders o ON e.empid = o.empid AND o.orderdate > '2008-05-01'
WHERE 
	o.orderid IS NULL;