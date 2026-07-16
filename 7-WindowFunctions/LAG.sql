USE AdventureWorks2019
GO
--our data for the specified feild pushed one row down adding null to the starting by the partition

 SELECT 
       [PersonType]
     -- ,[Title]
      ,[FirstName]
     -- ,[LastName]
	  ,LAG([FirstName]) OVER (ORDER BY PersonType, FirstName) AS LastPersonNameNoPartition --we can also get rid of partition by removing it completly
	  ,LAG([FirstName]) OVER (PARTITION BY 0 ORDER BY PersonType, FirstName) AS LastPersonNameNoPartition --if you want lag for only one time, not partion wise than we can give 0 to our partition
	  ,LAG([FirstName]) OVER (PARTITION BY PersonType ORDER BY PersonType, FirstName) AS LastPersonName --it will push our feild one down n the first firstname value is going to be NULL, till your partition. than again same
	  ,NTILE(27) OVER (PARTITION BY PersonType ORDER BY PersonType, FirstName) AS PersonNTile --divde 1,1,1 11 times untill last few have 10 or 5 
	  ,DENSE_RANK() OVER (PARTITION BY PersonType ORDER BY PersonType, FirstName) AS PersonDenseRank  -- 1,2, 3,3,4,5,6 doesn't skip any number
	  ,RANK() OVER (PARTITION BY PersonType ORDER BY PersonType, FirstName) AS PersonRank  --1,2,3,3,5 - SKIP OVER A NUMBER 4
	  ,ROW_NUMBER() OVER (PARTITION BY PersonType ORDER BY PersonType, FirstName) AS PersonRow --1,2,3,4,5,6 to the copy also
FROM Person.Person






