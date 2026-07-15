USE AdventureWorks2019
GO

DROP TABLE IF EXISTS [HumanResources].[Department_WithIndexes]

CREATE TABLE [HumanResources].[Department_WithIndexes](
	[DepartmentID] [smallint] IDENTITY(1,1) NOT NULL,
	[Name] [dbo].[Name] NOT NULL,
	[GroupName] [dbo].[Name] NOT NULL,
	--[GroupName] [dbo].[Name] NOT NULL UNIQUE,  --IT IS GOING TO GIVE ERROR WHEN WE TRY TO INSERT SAME VALUE FOR GROUPNAME MORE THAN ONE TIME BECAUSE WE HAVE DUPLICATES IN GROUPNAME  
	[ModifiedDate] [datetime] NOT NULL
	--CONSTRAINT uq_GroupName_Name UNIQUE([Name], [GroupName])  --WE ARE NOT ACTUALLY USING OUR CLUSTERED INDEX ANYMORE, IT'S ACTUALLY SORTED BY NAME SO WE ARE USING OUR NONCLUSTERED INDEX
)

--WE CAN ALSO DO THIS BY ALTERING TABLE
--ALTER TABLE [HumanResources].[Department_WithIndexes] ADD CONSTRAINT uq_GroupName_Name UNIQUE([Name], [GroupName])

--WE CAN ALSO PUT OUR UNQUE CONSTRAINT ON OUR CLUSTER INDEX
ALTER TABLE [HumanResources].[Department_WithIndexes]     --IT HAS EXACT EEFECT AS OUR KEYS, WILL SEE IN NEXT LECTURE
ADD CONSTRAINT uq_GroupName_DepartmentID UNIQUE([GroupName], DepartmentID)  --A KEY IS NOTHING BUT CLUSTERED INDEX THAT IS UNIQUE(PRIMARY)


CREATE CLUSTERED INDEX cix_Department_WithIndexes_GroupName_DepartmentID    
	ON [HumanResources].[Department_WithIndexes] ([GroupName], DepartmentID)  


CREATE NONCLUSTERED INDEX ix_Department_WithIndexes_Name 
	ON [HumanResources].[Department_WithIndexes] ([Name])-- INCLUDE([ModifiedDate]) --WHEN WE REMOVE INCLUDE BECAUSE IT WAS TAKING ALL THE FEILDS, IT WILL USE OUR CLUSTERED INDEX INSTEAD OF NON CLUSTER INDEX

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
		,[ModifiedDate] 
	FROM [HumanResources].[Department_WithIndexes]
	WITH(INDEX(cix_Department_WithIndexes_GroupName_DepartmentID)) --WE CAN ALSO CHOOSE WHICH ONE WE WANT TO RUN BUT NOT Recommended, IT WILL NOT USE WHICH ONE SUPPOSED TO AND SLOW THE QUERY DOWN