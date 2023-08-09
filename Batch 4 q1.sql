--1.Get the customers and their Sale value ( total due )

USE AdventureWorks2017

SELECT
PP.FirstName AS [NAME] ,
SC.CustomerID,
SUM(SS.TotalDue)  AS DUES

FROM
[Sales].[Customer] AS SC JOIN

[Sales].[SalesOrderHeader] AS SS
ON
SC.[CustomerID] =SS.[CustomerID] JOIN

Person.Person AS PP
ON
SC.CustomerID=PP.BusinessEntityID

GROUP BY SC.CustomerID, SC.[StoreID], PP.FirstName

ORDER BY DUES DESC;
