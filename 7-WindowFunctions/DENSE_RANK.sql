USE AdventureWorks2019
GO

 SELECT 
       [PersonType]
     -- ,[Title]
      ,[FirstName]
     -- ,[LastName]
	  ,DENSE_RANK() OVER (PARTITION BY PersonType ORDER BY PersonType, FirstName) AS PersonDenseRank  -- 1,2, 3,3,4,5,6 doesn't skip any number
	  ,RANK() OVER (PARTITION BY PersonType ORDER BY PersonType, FirstName) AS PersonRank  --1,2,3,3,5 - SKIP OVER A NUMBER 4
	  ,ROW_NUMBER() OVER (PARTITION BY PersonType ORDER BY PersonType, FirstName) AS PersonRow --1,2,3,4,5,6 to the copy also
FROM Person.Person






