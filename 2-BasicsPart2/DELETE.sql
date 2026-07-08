USE AdventureWorks2019
GO

SELECT [DepartmentID]
      ,[Name]
      ,[GroupName]
      ,[ModifiedDate]
  FROM [HumanResources].[Department]
   WHERE DepartmentID = 7  --check before you run the delete command what it is going to give you

  DELETE FROM HumanResources.Department
  WHERE DepartmentID = 7    --it won't delete because we have foreign key reference in the other table


select * from HumanResources.EmployeeDepartmentHistory
WHERE DepartmentID = 7 

DELETE FROM HumanResources.EmployeeDepartmentHistory
WHERE DepartmentID = 7 