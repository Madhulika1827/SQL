--Print the number of employees that are not assigned to any deparment.

USE AdventureWorks2017

SELECT COUNT(*) AS Employees_not_assigned

FROM

HumanResources.Employee AS HRE JOIN
HumanResources.EmployeeDepartmentHistory AS HRED ON hre.BusinessEntityID=hred.BusinessEntityID

WHERE HRED.DepartmentID IS NULL;
