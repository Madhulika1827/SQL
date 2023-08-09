--2 Print the names of the employees that took the second highest leaves

USE [AdventureWorks2017]

SELECT PP.FirstName, PP.LastName, 
SUM(HRE.VacationHours + HRE.SickLeaveHours) AS Total_Hours

FROM HumanResources.Employee HRE JOIN 
HumanResources.EmployeeDepartmentHistory EDH 
ON
HRE.BusinessEntityID = EDH.BusinessEntityID JOIN 
Person.Person PP 
ON
HRE.BusinessEntityID=PP.BusinessEntityID

WHERE EDH.EndDate IS NULL

GROUP BY PP.FirstName, PP.LastName

HAVING SUM(HRE.VacationHours + HRE.SickLeaveHours) =
(
	SELECT MAX(Total_Hours) FROM
  (
	SELECT SUM(HRE.VacationHours + HRE.SickLeaveHours)  Total_Hours
			
			FROM HumanResources.Employee HRE JOIN
			HumanResources.EmployeeDepartmentHistory EDH 
			ON
			HRE.BusinessEntityID = EDH.BusinessEntityID JOIN
			Person.Person PP 
			ON
			HRE.BusinessEntityID = PP.BusinessEntityID
			
			WHERE EDH.EndDate IS NULL
			
			GROUP BY PP.FirstName, PP.LastName
	) TOP1

WHERE Total_Hours < 
	(
	SELECT MAX(Total_Hours) FROM
		(
	SELECT SUM(HRE.VacationHours + HRE.SickLeaveHours)  Total_Hours

			FROM HumanResources.Employee HRE JOIN
			HumanResources.EmployeeDepartmentHistory EDH 
			ON
			HRE.BusinessEntityID = EDH.BusinessEntityID JOIN
			person.Person PP 
			ON
			PP.BusinessEntityID =HRE.BusinessEntityID

			WHERE EDH.EndDate IS NULL
			GROUP BY PP.FirstName, PP.LastName
		) TOP2
	)
)

