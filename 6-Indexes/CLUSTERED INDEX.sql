USE AdventureWorks2019
GO

--select * FROM HumanResources.Department

--TO GET THIS CREATE TABLE THING - GO TO THE TABLE -> RIGHT CLICK -> SCRIPT TABLE AS -> CREATE TO -> NEW QUERY EDITOR WINDOW

DROP TABLE IF EXISTS [HumanResources].[Department_WithIndexes]

CREATE TABLE [HumanResources].[Department_WithIndexes](
	[DepartmentID] [smallint] IDENTITY(1,1) NOT NULL,
	[Name] [dbo].[Name] NOT NULL,
	[GroupName] [dbo].[Name] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
)

--CREATE INDEX    --DEFAULT NON CLUSTERED INDEX

--CREATE CLUSTERED INDEX cix_Department_WithIndexes_DepartmentID    --NEED TO MENTION IF WE WANT TO CREATE CLUSTERED INDEX
--	ON [HumanResources].[Department_WithIndexes] (DepartmentID)


--CREATE CLUSTERED INDEX cix_Department_WithIndexes_DepartmentID_Name  --IF WE WANT MORE THAN ONE FEILD
--	ON [HumanResources].[Department_WithIndexes] (DepartmentID, [Name])

--if we run both create cluster index queries then it will give us error , because we already have a cluster index, we can store ddata for this table in one specific order

CREATE CLUSTERED INDEX cix_Department_WithIndexes_Name  
	ON [HumanResources].[Department_WithIndexes] ([Name])

SELECT [DepartmentID] 
		,[Name]
		,[GroupName]
		,[ModifiedDate] FROM [HumanResources].[Department_WithIndexes]

--INSERT INTO [HumanResources].[Department_WithIndexes](   --START
--	[Name]
--	,[GroupName]
--	,[ModifiedDate])
	SELECT [DepartmentID] 
,[Name]
,[GroupName]
,[ModifiedDate] FROM [HumanResources].[Department]  --END RUN TO INSERT

--when we have have above two table we are not ordered by department id anymore in our table

