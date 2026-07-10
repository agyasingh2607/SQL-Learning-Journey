USE AdventureWorks2019
GO

SELECT [DepartmentID]
      ,[Name]
      ,[GroupName]
      ,[ModifiedDate]
  FROM [AdventureWorks2019].[HumanResources].[Department]

  SELECT DISTINCT [NAME],
	[GroupName],
      [ModifiedDate]
  FROM [AdventureWorks2019].[HumanResources].[Department]