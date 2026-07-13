USE AdventureWorks2019
GO 

--AGGREGATE SOME STRING VALUES
SELECT [Department].[DepartmentID]
      ,[Department].[Name]
      ,[Department].[GroupName]
      ,[Department].[ModifiedDate]
FROM HumanResources.Department AS Department

SELECT DISTINCT
      [Department].[GroupName]
 FROM HumanResources.Department AS Department   --6 GROUPS

SELECT 
      [Department].[GroupName]
	  ,STRING_AGG([NAME], ', ') AS DepartmentInGroup
	  ,STRING_AGG([NAME], '; ') AS DepartmentInGroupForProgram
FROM HumanResources.Department AS Department   
GROUP BY  [Department].[GroupName]  -- we used groupby because we have to use aggregate function
