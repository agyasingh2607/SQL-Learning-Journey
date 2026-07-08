USE AdventureWorks2019
GO

SELECT [DepartmentID]
      ,[Name]
      ,[GroupName]
      ,[ModifiedDate]
FROM HumanResources.Department
	--WHERE DepartmentID > 7
	--WHERE [Name] = 'Production Control'   --name in square bracket because name is a protected keyword in sql
	  --WHERE GroupName = 'Manufacturing'
	  --WHERE [Name] LIKE '%uction%'   --include, Production% - begin with, kind of faster, %Production - ends with, %uction% - include this but heavier for sql server
	  --WHERE DepartmentID = 7
		-- WHERE DepartmentID <> 7 --not equal to 7
		--WHERE GroupName <> 'Manufacturing' --!= - is alos going to work here technically but we use this in sql world
		--WHERE 1 = 1 or Null = Null you are actually not comparing anything
		--WHERE GroupName <> NULL --not equal to null - you won't get anything because if you compare to null it is always going to give you false
		--WHERE NULL IS NULL -- We are going to get everything
		--WHERE NULL IS NOT NULL -- nothing 
		 -- WHERE GroupName IS NOT NULL   --GET ALL THE value
		   --WHERE GroupName <> NULL-- GET NOTHING because we can not compare to null
		   --WHERE DepartmentID IN(7,11) --will get both two
		   --WHERE [Name] IN('Production','Information Services')
		   WHERE DepartmentID BETWEEN 7 AND 11
		   OR GroupName = 'Manufacturing'   -- we can also use AND or OR

