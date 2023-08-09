--4. Print the count of employees that are living in Texas state.

USE AdventureWorks2017

SELECT
COUNT(*)  AS Employees_in_Texas

FROM
[Person].[Address] AS PA INNER JOIN

[Person].[StateProvince] AS PSP 
ON 
PA.StateProvinceID=PSP.StateProvinceID

WHERE PSP.[Name]='Texas'


