USE AdventureWorks2019
GO

--Se desea saber cuales son los productos más vendidos y su correspondiente precio

SELECT pp.ProductID, pp.Name AS Producto, pp.ProductNumber AS Modelo, pp.ListPrice AS Precio_lista,
COUNT(ss.ProductID) AS Cantidad_vendido
FROM Production.Product pp
INNER JOIN Sales.SalesOrderDetail ss
ON pp.ProductID = ss.ProductID
GROUP BY ss.ProductID, pp.Name, pp.ProductID, pp.ProductNumber, pp.ListPrice
ORDER BY COUNT(ss.ProductID) DESC
