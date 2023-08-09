--5.Print the number of customers by Product

USE AdventureWorks2017

SELECT
PP.ProductID, [Name] AS Name_Of_the_Product,
COUNT(DISTINCT SS.CustomerID) AS Customers

FROM
[Sales].[SalesOrderDetail] AS SD INNER JOIN

[Production].[Product] AS PP 
ON 
SD.ProductID=PP.ProductID INNER JOIN

[Sales].[SalesOrderHeader] AS SS 
ON 
SD.SalesOrderID=SS.SalesOrderID

GROUP BY PP.ProductID, PP.[Name]

ORDER BY
Customers DESC

