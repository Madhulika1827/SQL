--4.Print the number of employees by their shift [ Number of employees working day, evening, and night]

USE AdventureWorks2017 

SELECT
HRS.[Name] AS Shift_Name,
COUNT(*) AS Employees

FROM
HumanResources.EmployeeDepartmentHistory AS HRED INNER JOIN

HumanResources.[Shift] HRS
ON
HRED.ShiftID=HRS.ShiftID

GROUP BY HRS.[Name]