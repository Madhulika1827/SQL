-- 1 Print the employee with their Home address detail,First Name, Last name, AddressType = Home, Line1, Line2, City, State ( I want the name of the state here ), Postal Code and Country


USE AdventureWorks2017

SELECT 
PP.FirstName,LastName,
PAT.[Name] AS Addresstype,
PA.[AddressLine1] AS Line1,[AddressLine2] AS Line2,City,
PSP.[Name] AS state_name,
PA.[PostalCode],
PCR.[Name] AS Country

FROM

HumanResources.EmployeeDepartmentHistory HREDH INNER JOIN
Person.Person PP 
ON
HREDH.BusinessEntityID=PP.BusinessEntityID INNER JOIN

HumanResources.Department HRD 
ON
HRD.DepartmentID=HREDH.DepartmentID INNER JOIN

Person.BusinessEntityAddress PBEA 
ON
PBEA.BusinessEntityID=HREDH.BusinessEntityID INNER JOIN

[Person].[Address] PA 
ON 
PA.AddressID=PBEA.AddressID INNER JOIN

Person.StateProvince PSP 
ON 
PA.StateProvinceID=PSP.StateProvinceID INNER JOIN

[Person].[AddressType] PAT
ON
PAT.AddressTypeID=PBEA.AddressTypeID INNER JOIN

[Person].[CountryRegion] PCR 
ON 
PSP.CountryRegionCode=PCR.CountryRegionCode

WHERE PAT.[Name]='Home';