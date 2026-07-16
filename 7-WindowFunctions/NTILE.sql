USE AdventureWorks2019
GO

--NTILE(n) divides the rows into n groups as evenly as possible. If the rows cannot be divided equally, SQL Server distributes the remaining rows one by one to the first groups. Therefore, the earlier groups may contain one more row than the later groups.
--275 ÷ 27 = 10 remainder 5 - These 5 extra rows go to the first 5 tiles.

 SELECT 
       [PersonType]
     -- ,[Title]
      ,[FirstName]
     -- ,[LastName]
	  ,NTILE(27) OVER (PARTITION BY PersonType ORDER BY PersonType, FirstName) AS PersonNTile --divde 1,1,1 11 times untill last few have 10 or 5 
	  ,DENSE_RANK() OVER (PARTITION BY PersonType ORDER BY PersonType, FirstName) AS PersonDenseRank  -- 1,2, 3,3,4,5,6 doesn't skip any number
	  ,RANK() OVER (PARTITION BY PersonType ORDER BY PersonType, FirstName) AS PersonRank  --1,2,3,3,5 - SKIP OVER A NUMBER 4
	  ,ROW_NUMBER() OVER (PARTITION BY PersonType ORDER BY PersonType, FirstName) AS PersonRow --1,2,3,4,5,6 to the copy also
FROM Person.Person






