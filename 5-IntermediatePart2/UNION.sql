USE AdventureWorks2019
GO

--take 2 different select statements, which are totally different from each other and join the result of one select statement to the other from top to bottom
--USEFULL FOR REPORTING

SELECT [Department].[DepartmentID]
      ,[Department].[Name]
      ,[Department].[GroupName]
      ,[Department].[ModifiedDate]
FROM HumanResources.Department AS Department

--UNION   --bydefault get rid of duplicate, 15 RECORDS
UNION ALL  --30 RECORDS WITH ALL DUPLICATE ROWS

SELECT [Department].[DepartmentID]
      ,[Department].[Name]
      ,[Department].[GroupName]
      ,[Department].[ModifiedDate]
FROM HumanResources.Department AS Department

--when we run this will get two different tables if not union



SELECT [Department].[DepartmentID]
      ,'QA: ' + [Department].[Name] AS DepartmentName
      ,[Department].[GroupName]
      ,[Department].[ModifiedDate]
FROM HumanResources.Department AS Department
	WHERE GroupName = 'Quality Assurance'   
UNION ALL  
SELECT [Department].[DepartmentID] * 10  
      ,'EGA: ' + [Department].[Name]
      ,[Department].[GroupName]
      ,[Department].[ModifiedDate]
FROM HumanResources.Department AS Department
	WHERE GroupName = 'Executive General and Administration'

UNION ALL  

SELECT [Department].[DepartmentID] * 100  
      ,'RD: ' + [Department].[Name]
      ,[Department].[GroupName]
      ,[Department].[ModifiedDate]
FROM HumanResources.Department AS Department
	WHERE GroupName = 'R and D'

--WE CAN ALSO GO WITH THIS MULTIPLE TIMES
