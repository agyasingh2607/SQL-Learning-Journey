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