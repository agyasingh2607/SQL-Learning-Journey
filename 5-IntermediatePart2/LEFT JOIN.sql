USE AdventureWorks2019
GO

--LEFT OUTER JOIN /LEFT JOIN  --SAME THING

--all record from left table(even if don't have match on right table) + matching record from right table
--if we don't have match than will see nulll values for the feilds FROM OUR RIGHT TABLE
SELECT [EmployeeDepartmentHistory].[BusinessEntityID]
      ,[EmployeeDepartmentHistory].[DepartmentID]
      ,[EmployeeDepartmentHistory].[ShiftID]
      ,[EmployeeDepartmentHistory].[StartDate]
      ,[EmployeeDepartmentHistory].[EndDate] 
	  ,[Person].[FirstName]
	  ,[Person].[MiddleName]
	  ,[Person].LastName
--FROM HumanResources.EmployeeDepartmentHistory AS EmployeeDepartmentHistory
	--LEFT JOIN Person.Person AS Person
	--ON  Person.BusinessEntityID = EmployeeDepartmentHistory.BusinessEntityID   --SAME 116 ROWS BECAUSE WE HAVE ALL THE RECORDS IN LEFT TABLE WHICH MATCHES TO THE RIGHT TABLE SO LFT JOIN DIDN'T XCLUDE ANYTHING FROM LEFT TABLE

--BUT IF WE FLIP THESE Tables
FROM Person.Person AS Person 
	LEFT JOIN HumanResources.EmployeeDepartmentHistory AS EmployeeDepartmentHistory
	ON  Person.BusinessEntityID = EmployeeDepartmentHistory.BusinessEntityID   --WE have all the 19000 records of our person table and we get big block of null values because we don't have any record in our right table matching to it








