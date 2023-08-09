--Number of sales by Online vs non-online

USE [AdventureWorks2017]

SELECT
CASE
	WHEN [OnlineOrderFlag] = 1
	THEN 'ONLINE'
	ELSE 'NON-ONLINE'
END TYPE,

COUNT(*) AS ORDERS

FROM 
[Sales].[SalesOrderHeader]

GROUP BY [OnlineOrderFlag]

