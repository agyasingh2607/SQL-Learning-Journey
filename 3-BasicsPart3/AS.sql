USE AdventureWorks2019
GO

SELECT GroupName as NameOfGroup,   --AGGREGATE FUNCTIONS
		MIN(DepartmentId) AS MinimumDepartmentId,
		Max(DepartmentId) MaxDepartmentId,
		COUNT(*),
		SUM(DepartmentID),
		AVG(CAST(DepartmentID AS DECIMAL(18,4)))
--FROM [HumanResources].[Department] as dept
FROM [HumanResources].[Department]  dept  -- we can't have alies after the from
GROUP BY GroupName 
ORDER BY COUNT(*) DESC--GroupName



SELECT [Department].[DepartmentID]
      ,[Department].[Name]
      ,[Department].[GroupName]
      ,[Department].[ModifiedDate]
  FROM [HumanResources].[Department] AS Department   -- it's good to use table name as alias name eo that we can know what from which table which feild is coming when we use multiple table