USE AdventureWorks2019
GO

--EXACTLY HAVE SAME DATA AS OUR ORIGINAL FEILD, 
--DOESN'T MAKE ANY SENSE BECAUSE - WHEN WINDOW OPEN FOR FIRST ROW ONLY, THAT IS THE LAST PERSON THAT ONLY EXISTS IT DON'T GO BY PARTION WINDOW OPEN
--WE WORKAROUND BY USING FIRST_VALUE WITH DESC ORDER

 SELECT 
       [PersonType]
     -- ,[Title]
      ,[FirstName]
     -- ,[LastName]
	 --how last value can theoritacally work but it is complex syntax
	  -- ,FIRST_VALUE([FirstName]) OVER (PARTITION BY PersonType ORDER BY PersonType DESC, FirstName DESC) AS LastPersonsName --IT'S CORRECT TILL FIRST PARTITION AND FROM SECOND WE HAVE DUPLICATES SO IT WAS SHOWING RANDOM VALUES
	   
	   ,LAST_VALUE([FirstName]) OVER (PARTITION BY PersonType --OPENING THE WINDOW ALL THE WAY
	   ORDER BY PersonType, FirstName
		ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING									--will give access to the entire window/records to the partition
	   ) AS LastPersonsName

	   --,LAST_VALUE([FirstName]) OVER (PARTITION BY PersonType ORDER BY PersonType, FirstName) AS LastPersonsName --doesn't work, EXACTLY HAVE SAME DATA AS REAL FEILD 
	   --,FIRST_VALUE([FirstName]) OVER (PARTITION BY PersonType ORDER BY PersonType, FirstName) AS FirstPersonsName --will see first feild value to all over till our partition and so on
FROM Person.Person






