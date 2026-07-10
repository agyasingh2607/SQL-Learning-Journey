USE AdventureWorks2019
GO

SELECT [DepartmentID]
      ,[Name]
      ,[GroupName]
      ,[ModifiedDate]
  FROM [AdventureWorks2019].[HumanResources].[Department]
  ORDER BY GroupName DESC, [Name] --ASCENDING ORDER ALSO WRITE ASC