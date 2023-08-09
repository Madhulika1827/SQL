-- 6. Print the most popular product

USE AdventureWorks2017

SELECT TOP 1
PP.[Name] AS Product_Name, 
SUM(sod.[OrderQty]) AS Quantity

FROM
[Production].[Product] AS PP JOIN

[Sales].[SalesOrderDetail] SOD 
ON
PP.[ProductID]=SOD.[ProductID]

GROUP BY pp.[Name]


