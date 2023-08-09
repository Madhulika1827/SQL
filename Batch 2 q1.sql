
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