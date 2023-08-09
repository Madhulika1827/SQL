--4. Number of sales by their status

USE AdventureWorks2017

SELECT
[Status],
COUNT(*) as No_Of_Sales

FROM
[Sales].[SalesOrderHeader]

GROUP BY [Status]
