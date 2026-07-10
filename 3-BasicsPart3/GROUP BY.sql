USE AdventureWorks2019
GO

SELECT [DepartmentID]
      ,[Name]
      ,[GroupName]
      ,[ModifiedDate]
  FROM [HumanResources].[Department]


SELECT  COUNT(DISTINCT GroupName)--COUNT(*) 
FROM [HumanResources].[Department]

SELECT GroupName,   --AGGREGATE FUNCTIONS
		COUNT(*),
		SUM(DepartmentID),
		AVG(CAST(DepartmentID AS DECIMAL(18,4)))
FROM [HumanResources].[Department]
GROUP BY GroupName
ORDER BY COUNT(*) DESC--GroupName