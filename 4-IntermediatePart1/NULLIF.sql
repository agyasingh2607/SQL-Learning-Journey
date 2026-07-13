USE AdventureWorks2019
GO

SELECT [Person].[BusinessEntityID]
	  ,NULLIF([Person].[MiddleName], 'A') -- Returns NULL if the values match; otherwise returns the first value. Commonly used to ignore specific values or replace them later with a default value.
      ,ISNULL(NULLIF([Person].[MiddleName], 'A'), [Person].[Title])
	  ,[Person].[PersonType]
      ,[Person].[NameStyle]
      ,[Person].[Title]
      ,ISNULL(Title, '')  
      ,[Person].[FirstName]
      ,[Person].[MiddleName]
      ,ISNULL([Person].[MiddleName], 'No MiddleName') 
      ,ISNULL([Person].[MiddleName], [Person].[FirstName]) AS ISNULLONE 
      ,COALESCE([Person].[MiddleName], [Person].[FirstName]) AS COALESCEONE 
      ,COALESCE([Person].[MiddleName], [Person].[Title], '') AS COALESCEmultiplevalue 
      ,[Person].[LastName]
FROM Person.Person AS Person
	WHERE ISNULL(Title, '') <> 'MR.'  