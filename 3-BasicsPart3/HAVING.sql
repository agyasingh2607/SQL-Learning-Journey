USE AdventureWorks2019
GO

SELECT GroupName as NameOfGroup,   
		MIN(DepartmentId) AS MinimumDepartmentId,
		Max(DepartmentId) MaxDepartmentId,
		COUNT(*),
		SUM(DepartmentID),
		AVG(CAST(DepartmentID AS DECIMAL(18,4)))

FROM [HumanResources].[Department]  dept  
--WHERE SUM(DepartmentID) > 15  
GROUP BY GroupName
HAVING SUM(DepartmentID) > 15 same as where just have to come after group by instead of before grp by -- just change where cluse to having, REMEBER all have specific order
ORDER BY COUNT(*) DESC  --all needed to be in same order otherwise will get syntax error



