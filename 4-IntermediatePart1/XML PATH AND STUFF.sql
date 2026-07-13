USE AdventureWorks2019
GO 

--AGGREGATE SOME STRING VALUES
SELECT [Department].[DepartmentID]
      ,[Department].[Name]
      ,[Department].[GroupName]
      ,[Department].[ModifiedDate]
FROM HumanResources.Department AS Department

SELECT DISTINCT
      [Department].[GroupName]
 FROM HumanResources.Department AS Department   --6 GROUPS

SELECT 
      [Department].[GroupName]
	  ,STRING_AGG([NAME], ', ') AS DepartmentInGroup
	  ,STRING_AGG([NAME], '; ') AS DepartmentInGroupForProgram
FROM HumanResources.Department AS Department   
GROUP BY  [Department].[GroupName]  -- we used groupby because we have to use aggregate function


--XML PATH
SELECT --', ' + 
[Department].[Name]
,[Department].[GroupName]
FROM HumanResources.Department AS Department
	FOR XML PATH('Main')       --<Main><Name>Engineering</Name><GroupName>R and D</GroupName></Main>



SELECT ', ' + 
[Department].[Name]
,[Department].[GroupName]
FROM HumanResources.Department AS Department
	FOR XML PATH('Main')       --<Main>, Engineering<GroupName>R and D</GroupName></Main> --no tag name


SELECT ', ' + 
[Department].[Name]
, ', ' + [Department].[GroupName]
FROM HumanResources.Department AS Department
	FOR XML PATH('')     --, Engineering, R and D   

--STUFF - IS GOING TO REMOVE THE ,

SELECT DISTINCT
[Department].[GroupName]
,STUFF((SELECT ', ' +      --GETTING RID OF FIRST TWO CHARECTERS
[Department].[Name]
--, ', ' + [Department].[GroupName]
FROM HumanResources.Department AS DepartmentInner
	WHERE	[DepartmentInner].[GroupName] = [Department].[GroupName]
	FOR XML PATH('')),
	1, --START FROM 1 
	2,   --AND UPTO 2 
	'')   --REPLACE WITH 'INSTEAD OF ', '
FROM HumanResources.Department AS Department
 --WE ARE NOT USING GROUP BY STATEMEMT BEACUSE THE STUFF FUNCTION IS NOT AN AGGREGATE FUNCTION , WE CAN USE DISTINCT
 --STRIG AGG IS LOT FASTER AND STUFF,



--<name> </name>