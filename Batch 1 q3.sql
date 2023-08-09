--Print n th highest salary

USE [AdventureWorks2017]


SELECT
EMP.FirstName AS Name_of_the_employee,
PAY.Rate AS Salary, 
EMP.BusinessEntityID

FROM
[HumanResources].[EmployeePayHistory] PAY JOIN

Person.Person EMP 
ON 
PAY.BusinessEntityID = EMP.BusinessEntityID

WHERE (5-1) = 
(
	SELECT COUNT ( PAY1 .Rate)

	FROM 
	[HumanResources].[EmployeePayHistory] PAY1

	WHERE PAY1.Rate > PAY.Rate
)



