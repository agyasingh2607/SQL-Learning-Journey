USE AdventureWorks2019
GO

--WE HAVE UPDATED DATA THROUGH LAST 24 OUR, BUT WE NEED ONLY LAST HOUR INFO AND WANT TO FILER LAST 23 HOUR
--WE ONLY HAVE TWO STACKS WITH EXCEPT STATEMENT


SELECT [Department].[DepartmentID]
      ,[Department].[Name] 
      ,[Department].[GroupName]
      ,[Department].[ModifiedDate]
FROM HumanResources.Department AS Department
EXCEPT
SELECT [Department].[DepartmentID]  * 10 --WILL GET ALL THE RESULT BECAUSE THIS ID FEILD IS NOT GOING TO MATCH - KEEP, SO NO MATCH FEILD KEEP
      ,[Department].[Name]
      ,[Department].[GroupName]
      ,[Department].[ModifiedDate]
FROM HumanResources.Department AS Department
	WHERE GroupName = 'Executive General and Administration' --WILL GET EVERYTHING EXCEPT THIS, WE DO HAVE MATCH IT WILL FILTER IT OUT

