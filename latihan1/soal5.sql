SELECT
	Orders.orderid,
	Orders.orderdate,
	Orders.custid,
	Orders.empid
FROM Sales.Orders
WHERE 
    orderdate = (SELECT MAX(orderdate) FROM Sales.Orders);