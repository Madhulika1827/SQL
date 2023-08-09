--2. Print the number of employees that don't have shipping address

USE AdventureWorks2017

SELECT COUNT(*) AS Emp_without_shipping_address

FROM
[Person].[BusinessEntityAddress] AS P INNER JOIN

Person.AddressType  PA 
ON
P.AddressTypeID = PA.AddressTypeID

WHERE PA.[Name] <> 'Shipping' OR P.AddressTypeID IS NULL

