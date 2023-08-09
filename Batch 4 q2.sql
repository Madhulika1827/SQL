--2. Get the names of the salespersons that did the highest sale

USE AdventureWorks2017

SELECT
PP.FirstName,LastName,
SP.BusinessEntityID , 
MAX(SS.TotalDue) AS HIGHEST_SALE

FROM 
[Sales].[SalesOrderHeader] SS JOIN
[Sales].[SalesPerson] SP 
ON
SS.TerritoryID=SP.TerritoryID  JOIN
[Person].[Person] PP 
ON
PP.BusinessEntityID=SP.[BusinessEntityID]

GROUP BY
PP.FirstName , SP.BusinessEntityID, PP.LastName

ORDER BY HIGHEST_SALE DESC;

