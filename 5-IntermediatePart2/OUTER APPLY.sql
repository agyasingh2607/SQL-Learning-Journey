--cover later

USE AdventureWorks2019
GO

--Very much like left join  
--OUTER - LEFT
--run a separate query and attach all the records get from that query to the row

SELECT EmployeesInDepartment.EmployeeCount, * FROM HumanResources.Department AS RootDepartment  --15 rows 
	--OUTER APPLY (SELECT * FROM HumanResources.Department AS NestedDepartment
	--WHERE NestedDepartment.DepartmentID = RootDepartment.DepartmentID) AS InnerDepartment  --225 rows

	OUTER APPLY(
		SELECT COUNT(*) AS EmployeeCount
			FROM HumanResources.EmployeeDepartmentHistory AS EmployeeCount
				WHERE EmployeeCount.DepartmentID =RootDepartment.DepartmentID 
	) AS EmployeesInDepartment

--if we do outer apply to this table that will get 225 rows- 15 to the power 2








