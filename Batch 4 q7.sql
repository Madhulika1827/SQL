--7.Print the products by their revenue

USE AdventureWorks2017

SELECT
PP.ProductID, [Name] AS Name_of_the_product,
SS.LineTotal
FROM 
[Production].[Product] PP JOIN

[Sales].[SalesOrderDetail] SS 
ON
PP.ProductID=SS.ProductID

ORDER BY SS.LineTotal DESC
