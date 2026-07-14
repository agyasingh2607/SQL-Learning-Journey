USE AdventureWorks2019
GO

--OPPOSITE OF INNER JOIN
--SIDE OF TABLES DOESN'T MATTER - BEACUSE IT GOING TO RETURN FULL RECORDS FROM BOTH THE TABLES
--INCLUDE RECORDS FROM BOTH THE TABLES, WEATHER WE HAVE MATCH OR NOT
--wE DON'T EVEN NEED A MATCH TO INCLUDE FROM BOTH THE TABLES

SELECT [EmployeeDepartmentHistory].[BusinessEntityID]
      ,[EmployeeDepartmentHistory].[DepartmentID]
      ,[EmployeeDepartmentHistory].[ShiftID]
      ,[EmployeeDepartmentHistory].[StartDate]
      ,[EmployeeDepartmentHistory].[EndDate] 
	  ,[Person].[FirstName]
	  ,[Person].[MiddleName]
	  ,[Person].LastName
FROM HumanResources.EmployeeDepartmentHistory AS EmployeeDepartmentHistory
	--OUTER JOIN Person.Person AS Person
	FULL OUTER JOIN Person.Person AS Person --SAME WORK BUT WORK SAME IN SQL, other sql language we need to call it right outer join
	--ON  Person.BusinessEntityID = EmployeeDepartmentHistory.BusinessEntityID    --1900 SOME RECORDS
	ON 1=0			 --(NOT MATCH)  --EVEN IF WE DON'T JOIN IT WILL ALSO RETURN RECORDS FROM BOTH THE TABLES SOME 20000 SOME DATA

--BUT IF WE FLIP THESE Tables

--FROM Person.Person AS Person 
	--FULL OUTER JOIN HumanResources.EmployeeDepartmentHistory AS EmployeeDepartmentHistory
	--ON  Person.BusinessEntityID = EmployeeDepartmentHistory.BusinessEntityID      --STILL GET SAME 19000 SOME RECORDS


































