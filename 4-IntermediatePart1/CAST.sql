USE AdventureWorks2019
GO

DECLARE @SearchValue NVARCHAR(255)

SET @SearchValue = '3'
--SET @SearchValue = 'D8763459-8AA8-47CC-AFF7-C9079AF79033'  --tries to convert this to int but fails so error

SELECT [Person].[BusinessEntityID]
	 -- ,NULLIF([Person].[MiddleName], 'A')
     -- ,ISNULL(NULLIF([Person].[MiddleName], 'A'), [Person].[Title])
	 -- ,[Person].[PersonType]
     -- ,[Person].[NameStyle]
     -- ,[Person].[Title]
      --,ISNULL(Title, '')  
      ,[Person].[FirstName]
      ,[Person].[MiddleName]
      ,ISNULL([Person].[MiddleName], 'No MiddleName') 
      ,ISNULL([Person].[MiddleName], [Person].[FirstName]) AS ISNULLONE 
      ,COALESCE([Person].[MiddleName], [Person].[FirstName]) AS COALESCEONE 
      ,COALESCE([Person].[MiddleName], [Person].[Title], '') AS COALESCEmultiplevalue 
      ,[Person].[LastName]
	  ,[Person].[BusinessEntityID]
	  ,[Person].[rowguid]
FROM Person.Person AS Person
	WHERE CAST(Person.BusinessEntityID AS nvarchar(255)) = @SearchValue  --unable to get anything beacuse these values obveously not going to match
	OR CAST(Person.rowguid AS nvarchar(255) ) = @SearchValue  --will get one matching rowguid
	--WHERE BusinessEntityID = @SearchValue   --D8763459-8AA8-47CC-AFF7-C9079AF79033 (nvarchar) can not be converted to int