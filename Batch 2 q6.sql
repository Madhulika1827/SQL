--6.Print the name of the CoutryRegion with the highest number of employees

USE AdventureWorks2017

SELECT TOP 1

COUNT(HRE.BusinessEntityID) AS No_of_employees, 
MAX(PCR.[Name]) AS Country_region

FROM
[Person].[CountryRegion] AS PCR JOIN

[Person].[StateProvince] AS PSP 
ON
PCR.CountryRegionCode=PSP.CountryRegionCode JOIN

[Person].[Address] AS PA 
ON
PSP.[StateProvinceID]=PA.StateProvinceID  JOIN

[Person].[BusinessEntityAddress] AS PBEA 
ON
PBEA.AddressID=PA.AddressID  JOIN

[HumanResources].[Employee] HRE ON HRE.BusinessEntityID=PBEA.BusinessEntityID

GROUP BY
PCR.[Name]

ORDER BY No_of_employees DESC;

