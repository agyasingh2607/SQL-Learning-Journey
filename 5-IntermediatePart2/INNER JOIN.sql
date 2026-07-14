USE AdventureWorks2019
GO

--Take Records which only exists in both tables
-- HumanResources.EmployeeDepartmentHistory INNER JOIN Person.Person

SELECT [EmployeeDepartmentHistory].[BusinessEntityID]
      ,[EmployeeDepartmentHistory].[DepartmentID]
      ,[EmployeeDepartmentHistory].[ShiftID]
      ,[EmployeeDepartmentHistory].[StartDate]
      ,[EmployeeDepartmentHistory].[EndDate] 
	  ,[Person].[FirstName]
	  ,[Person].[MiddleName]
	  ,[Person].LastName
FROM HumanResources.EmployeeDepartmentHistory AS EmployeeDepartmentHistory
	--INNER JOIN Person.Person    --in SQL SERVER - INNER JOIN IS SAME AS JOIN
	JOIN Person.Person AS Person
	ON  Person.BusinessEntityID = EmployeeDepartmentHistory.BusinessEntityID       --ON IS LIKE WHERE - COMPARES DATA FROM MULTIPLE TABLES

SELECT [EmployeeDepartmentHistory].[BusinessEntityID]
      ,[EmployeeDepartmentHistory].[DepartmentID]
      ,[EmployeeDepartmentHistory].[ShiftID]
      ,[EmployeeDepartmentHistory].[StartDate]
      ,[EmployeeDepartmentHistory].[EndDate] 
	  ,[Person].[FirstName]
	  ,[Person].[MiddleName]
	  ,[Person].LastName
FROM  Person.Person 
		INNER JOIN HumanResources.EmployeeDepartmentHistory
	ON  Person.BusinessEntityID = EmployeeDepartmentHistory.BusinessEntityID  -- EXACT SAME DATA BECAUSE ORDER OF TABLES DOESN'T MATTER IN JOIN OR INNER JOIN


SELECT * FROM Person.Person
WHERE PersonType = 'EM'

--POSITION OF TABLES IS GOING TO AFFECT THE OUTPUT IN OTHER JOINS BUT NOT IN INNER JOIN OR JOIN





















