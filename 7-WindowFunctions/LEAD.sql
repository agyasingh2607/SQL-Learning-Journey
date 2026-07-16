USE AdventureWorks2019
GO

--LEAD IS GOING TO DO THE EXACT OPPOSITE OF LAG

 SELECT 
       [PersonType]
     -- ,[Title]
      ,[FirstName]
     -- ,[LastName]
	  ,LEAD([FirstName]) OVER (ORDER BY PersonType, FirstName) AS NextPersonsNameNoPartition --ONLY ONE NULL AAT THE END OF THE TABLE
	  ,LEAD([FirstName]) OVER (PARTITION BY PersonType ORDER BY PersonType, FirstName) AS NextPersonsName  --will get next row data and the last one filled with NULL
FROM Person.Person






