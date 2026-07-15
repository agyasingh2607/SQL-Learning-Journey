USE AdventureWorks2019
GO

--ORDER THAT WE STORE THE ROWS IN AND IT HAS TO BE UNIQUE. TELLS US THERE IS ONLY GOING TO BE ONE VALUE WITH QUICK ACCESS.

DROP TABLE IF EXISTS [HumanResources].[Department_WithIndexes]

CREATE TABLE [HumanResources].[Department_WithIndexes](
	[DepartmentID] [smallint] IDENTITY(1,1) NOT NULL PRIMARY KEY, --ALSO DONE BY CONSTRAINTAS SHOWN BELOW
	[Name] [dbo].[Name] NOT NULL,
	[GroupName] [dbo].[Name] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	--CONSTRAINT pk_DepartmentId PRIMARY KEY ([DepartmentID]) --BUT MOSTLY WE HAVE ONLY ONE FEILD SO WE CHOOSE TO DECLARE AS SHOWN IN ABOVE NOT LIKE THIS CONSTRAINT N ALL
	)

--ALTER TABLE [HumanResources].[Department_WithIndexes] 
--ADD CONSTRAINT pk_DepartmentId PRIMARY KEY ([DepartmentID])  --WE ALREADY HAVE COLOUMN AND JUST WANT TO PUT THAT CLUSTERED INDEX HERE

--CREATE CLUSTERED INDEX cix_Department_WithIndexes_GroupName_DepartmentID    
--	ON [HumanResources].[Department_WithIndexes] ([GroupName], DepartmentID)  


--CREATE NONCLUSTERED INDEX ix_Department_WithIndexes_Name 
--	ON [HumanResources].[Department_WithIndexes] ([Name]) INCLUDE([ModifiedDate]) --ONLY INCLUDE DEPARTMENT ID NOT GROUPNAME. not full copy of the table

CREATE NONCLUSTERED INDEX ix_Department_WithIndexes_Name 
	ON [HumanResources].[Department_WithIndexes] ([Name]) INCLUDE([ModifiedDate], [GroupName])  --use the name index instead of our primary key 

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
	

