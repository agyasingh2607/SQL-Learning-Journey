USE AdventureWorks2019
GO

--PULLS THE FIRST ROW FROM OUR PARTITION AND SOME VALUE FROM THAT ROW

 SELECT 
       [PersonType]
     -- ,[Title]
      ,[FirstName]
     -- ,[LastName]
	   ,FIRST_VALUE([FirstName]) OVER (PARTITION BY PersonType ORDER BY PersonType, FirstName) AS FirstPersonsName --will see first feild value to all over till our partition and so on
FROM Person.Person






