--JUST A PRIMARY KEY WITH MORE THAN ONE FEILD

USE AdventureWorks2019
GO


DROP TABLE IF EXISTS [HumanResources].[Department_WithIndexes]

CREATE TABLE [HumanResources].[Department_WithIndexes](
	[DepartmentID] [smallint] IDENTITY(1,1) NOT NULL, 
	[Name] [dbo].[Name] NOT NULL,
	[GroupName] [dbo].[Name] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	CONSTRAINT pk_DepartmentId PRIMARY KEY ([DepartmentID], [GroupName])   --CREATED PRIMARY KEY USING MORE THAN ONE FEILD

	)

--ALTER TABLE [HumanResources].[Department_WithIndexes] 
--	ADD CONSTRAINT pk_DepartmentId PRIMARY KEY ([DepartmentID], [GroupName])  


CREATE NONCLUSTERED INDEX ix_Department_WithIndexes_Name 
	ON [HumanResources].[Department_WithIndexes] ([Name])-- INCLUDE([ModifiedDate]) 

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


--SORTED BY COMPOSITE KEY DEPANTMENTID AND THAN GROUP NAME, BUT DEPARTEMNTID IS UNIQUE SO WE ARE SORTED BASED ON DPID
	

