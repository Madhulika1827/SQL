--1.Print Name of the employee, Department name, StartDate, EndDate - Ordered by Employee, StartDate ascendingUSE AdventureWorks2017SELECT
PP.[FirstName] AS Name_of_the_employee,
HRD.[Name] AS Department_name,
HREDH.[StartDate],[EndDate]

FROM
Person.person PP INNER JOIN

HumanResources.EmployeeDepartmentHistory HREDH
ON
PP.BusinessEntityID=HREDH.BusinessEntityID LEFT JOIN

HumanResources.Department HRD 
ON
HRD.DepartmentID=HREDH.DepartmentID

ORDER BY StartDate ASC;