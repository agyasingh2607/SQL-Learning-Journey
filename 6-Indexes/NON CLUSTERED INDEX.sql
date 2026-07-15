USE AdventureWorks2019
GO

--COPY OF THE TABLE, BUT ONLY HAVE THE FEILDS THAT WE SPECIFY - NAME, GROUPNAME, DEPARTMENTID, MODIFIED DATE

DROP TABLE IF EXISTS [HumanResources].[Department_WithIndexes]

CREATE TABLE [HumanResources].[Department_WithIndexes](
	[DepartmentID] [smallint] IDENTITY(1,1) NOT NULL,
	[Name] [dbo].[Name] NOT NULL,
	[GroupName] [dbo].[Name] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
)

--CREATE CLUSTERED INDEX cix_Department_WithIndexes_DepartmentID  
--	ON [HumanResources].[Department_WithIndexes] (DepartmentID, [Name])  --it doesn't really do anything because our DepartmentID is already unique it doesn't really care what the name feild is 

CREATE CLUSTERED INDEX cix_Department_WithIndexes_GroupName_DepartmentID  -- our GroupName is not unique.
	ON [HumanResources].[Department_WithIndexes] ([GroupName], DepartmentID)  --ordered by group name and inside each groupname it's ordered by department id


CREATE NONCLUSTERED INDEX ix_Department_WithIndexes_Name  --NONCLUSTERED INDEX IS BEING CREATED AND STORED IN THIS ORDER BUT IT'S BEING STORED OUTSIDE OF THE TABLE. WE CAN NOT ORDER IT IN MORE THAN ONE WAY, 
	ON [HumanResources].[Department_WithIndexes] ([Name]) INCLUDE([ModifiedDate]) -- IT JUST STORING THE NAME, GROUPNAME AND DEPARTMENT IDW

	--REMEMBER WE ARE RUNNING THE ABOVE TWO TOGETHER WHICH WE NEVER DID IN CLUSTERED INDEX
	--THIS DID NOT AFFECT THE ORDER AT ALL WHICH WE GOT FROM OUR FIRST CIX
	--ALSO ADD WHATEEVER IS THERE IN INCLUDE TOOUR NON CLUSTERED TABLE,

INSERT INTO [HumanResources].[Department_WithIndexes](   --START
	[Name]
	,[GroupName]
	,[ModifiedDate])
	SELECT
 [Name]
,[GroupName]
,[ModifiedDate] FROM [HumanResources].[Department] 

SELECT [DepartmentID] 
		,[Name]
		,[GroupName]
		,[ModifiedDate] FROM [HumanResources].[Department_WithIndexes]

--SELECT [DepartmentID] 
--,[Name]
--,[GroupName]
--,[ModifiedDate] FROM [HumanResources].[Department] 

