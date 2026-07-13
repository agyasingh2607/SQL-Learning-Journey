USE AdventureWorks2019
GO

SELECT [Person].[BusinessEntityID]
      ,[Person].[PersonType]
      ,[Person].[NameStyle]
      ,[Person].[Title]
	  ,ISNULL(Title, '')  --converted all null values to empty string
      ,[Person].[FirstName]
      ,[Person].[MiddleName]
	  ,ISNULL([Person].[MiddleName],'No MiddleName') -- Instead of an empty string, we can provide a default value.
      ,ISNULL([Person].[MiddleName],[Person].[FirstName]) AS ISNULLONE -- Instead of a fixed value, we can also use another column as the replacement.
	 ,COALESCE([Person].[MiddleName],[Person].[FirstName]) AS COALESCEONE  -- Returns the same result as ISNULL in this case.
	 ,COALESCE([Person].[MiddleName], [Person].[Title], '') AS COALESCEmultiplevalue  -- Checks each value from left to right and returns the first non-NULL value. If all are NULL, it returns an empty string.
	 ,[Person].[LastName]
FROM Person.Person AS Person
	--WHERE Title <> 'MR.' -- Returns all records except 'MR.'. However, NULL values are NOT returned because NULL cannot be compared using <>.
	--WHERE Title = 'MR.'   -- Returns only records where Title is 'MR.'. NULL values are still excluded because NULL cannot be compared using =.
	WHERE ISNULL(Title,'') <> 'MR.'  -- Replaces NULL with an empty string first, then compares it with 'MR.'. Since '' is not equal to 'MR.', rows with NULL titles are also included in the result.

	








