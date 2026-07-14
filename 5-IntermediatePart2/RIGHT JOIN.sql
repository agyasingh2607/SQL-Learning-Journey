USE AdventureWorks2019
GO

--RIGHT OUTER JOIN / RIGHT JOIN    --SAME THING
--OPPOSITE OF OUR LEFT JOIN

--all record from RIGHT table(even if don't have match on LEFT table) + matching record from LEFT table
--if we don't have match than will see nulll values for the feilds from our left side table


SELECT [EmployeeDepartmentHistory].[BusinessEntityID]
      ,[EmployeeDepartmentHistory].[DepartmentID]
      ,[EmployeeDepartmentHistory].[ShiftID]
      ,[EmployeeDepartmentHistory].[StartDate]
      ,[EmployeeDepartmentHistory].[EndDate] 
	  ,[Person].[FirstName]
	  ,[Person].[MiddleName]
	  ,[Person].LastName
FROM HumanResources.EmployeeDepartmentHistory AS EmployeeDepartmentHistory
	--RIGHT JOIN Person.Person AS Person
	RIGHT OUTER JOIN Person.Person AS Person --SAME WORK BUT WORK SAME IN SQL, other sql language we need to call it right outer join
	ON  Person.BusinessEntityID = EmployeeDepartmentHistory.BusinessEntityID     --1900 SOMETHING ROWS FROM PERSON TABLE

--BUT IF WE FLIP THESE Tables

--FROM Person.Person AS Person 
--	RIGHT JOIN HumanResources.EmployeeDepartmentHistory AS EmployeeDepartmentHistory
--	ON  Person.BusinessEntityID = EmployeeDepartmentHistory.BusinessEntityID      --BACK TO OUR 116 RECORDS FROM RIGHT TABLE

