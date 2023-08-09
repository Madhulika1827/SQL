
--1.Print the names of the employees who have highest no of leaves

USE [AdventureWorks2017]

SELECT
PP.FirstName,
LastName,
HRE.VacationHours + HRE.SickLeaveHours AS Total_Hours

FROM
HumanResources.Employee AS HRE  INNER JOIN 
Person.Person AS PP 
ON 
HRE.BusinessEntityID=PP.BusinessEntityID

WHERE HRE.VacationHours + HRE.SickLeaveHours = 
(
SELECT MAX(VacationHours + SickLeaveHours)
FROM [HumanResources].[Employee]
);



