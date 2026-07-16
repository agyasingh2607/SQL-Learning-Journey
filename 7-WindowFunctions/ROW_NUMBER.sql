USE AdventureWorks2019
GO
 --KEEP A TRACK OF ROW NUMBER WITHIN A CERTAIN PARTITION

 SELECT 
       [PersonType]
      ,[Title]
      ,[FirstName]
      ,[LastName]
	  ,ROW_NUMBER() OVER (PARTITION BY PersonType ORDER BY PersonType, FirstName)  ----1,2,3,4,5,6 to the copy also
FROM Person.Person




