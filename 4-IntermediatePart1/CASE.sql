USE AdventureWorks2019
GO

SELECT
       [FirstName]
      ,[MiddleName]
      ,[LastName],
      CASE
		--WHEN MiddleName IS NOT NULL
		 WHEN [MiddleName] ='A'					--ORDER DOES MATTER
				THEN 2
		  WHEN ([MiddleName] IS NOT NULL)
				THEN 1
		  ELSE 0 
	END,
	 CASE
		--WHEN MiddleName IS NOT NULL
		WHEN [MiddleName] ='A'
				THEN 2
		  WHEN ([MiddleName] IS NOT NULL)
				THEN 1
	END,  
	CASE   --REAL WORLD EXAMPLE
		--WHEN MiddleName IS NOT NULL  
		
		  WHEN ([MiddleName] IS NOT NULL)
				THEN 1
		 ELSE 0
	END  AS HasMiddleName,
	 CASE     --NESTED CASE EXAMPLE
		  WHEN ([MiddleName] IS NOT NULL)
				THEN 
					CASE WHEN MiddleName = 'A'
						THEN 2 
						ELSE 1 
					END
		ELSE 0
	END


FROM [Person].[Person]



--BOTH BELOW CODE GIVE US THE SAME RESULT
SELECT 
	SUM(CASE   --REAL WORLD EXAMPLE
		--WHEN MiddleName IS NOT NULL  
		
		  WHEN ([MiddleName] IS NOT NULL)
				THEN 1
		 ELSE 0
	END)  AS HasMiddleName,
	SUM(CASE   --REAL WORLD EXAMPLE
		--WHEN MiddleName IS NOT NULL  
		
		  WHEN ([MiddleName] IS  NULL)
				THEN 1
		 ELSE 0
	END)  AS DONTHasMiddleName
	FROM [Person].[Person]



SELECT COUNT(*)
FROM Person.Person
WHERE MiddleName IS NOT NULL