SELECT 
    C.custid, 
    COUNT(O.orderid) AS numorders, 
    SUM(OD.quantity) AS totalqty
FROM Sales.Customers AS C
JOIN Sales.Orders AS O ON C.custid = O.custid
JOIN Sales.OrderDetails AS OD ON O.orderid = OD.orderid
GROUP BY C.custid;