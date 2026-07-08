USE AdventureWorks2019
GO

DROP TABLE IF EXISTS [HumanResources].[DepartmentCopy]

SELECT TOP (1000) [DepartmentID]
      ,[Name]
      ,[GroupName]
      ,[ModifiedDate]
	  INTO [HumanResources].[DepartmentCopy]
  FROM [AdventureWorks2019].[HumanResources].[Department]
  WHERE DepartmentID > 5

TRUNCATE TABLE [HumanResources].[DepartmentCopy] --RESETTING THE ID AND WHOLE TABLE

DELETE FROM  [HumanResources].[DepartmentCopy] WHERE 1=1  --WHEN WE ENTER WE ENTER AT THE SAME ID

  select * from [HumanResources].[DepartmentCopy]  -- we need to use insert statement if we want to add more data

  INSERT INTO HumanResources.DepartmentCopy(
  [Name]
  ,[GroupName]
  ,[ModifiedDate]) VALUES ('Random Name', 'Random Group', '2023-08-15')