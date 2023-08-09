-- Print the number of employees that have Home + Billing addresses

USE AdventureWorks2017

SELECT COUNT(DISTINCT HRE.BusinessEntityID) AS Number_of_employees

FROM 
[HumanResources].[Employee] HRE JOIN

[Person].[BusinessEntityAddress] PBA
ON
PBA.BusinessEntityID=HRE.BusinessEntityID JOIN

[Person].[AddressType] PAT
ON
PBA.AddressTypeID=PAT.AddressTypeID

WHERE PAT.[Name] IN ('Home','Billing');
