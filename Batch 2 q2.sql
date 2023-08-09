--Print the Employees that are assigned to more than one department

USE AdventureWorks2017

SELECT COUNT(*) Employees_Assigned

FROM
(
SELECT BusinessEntityID , COUNT(*)  AS Total

FROM HumanResources.Employee

GROUP BY BusinessEntityID
) AS Total

WHERE Total >1;





