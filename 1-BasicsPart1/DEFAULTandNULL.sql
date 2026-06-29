USE TestDatabase
GO

--INVENTORY

DROP TABLE IF EXISTS Inventory.Furniture

CREATE TABLE Inventory.Furniture(
	FurnitureId INT IDENTITY(1,1),	
	FurnitureType VARCHAR(50) NULL,
	FurnitureName VARCHAR(50)NOT NULL, -- Throws an error if a NULL value is inserted.
	Price DECIMAL(18,4),  
	Quantity INT DEFAULT(0) NOT NULL, -- Cannot be NULL; defaults to 0 if no value is provided.
	ReleaseDate DATE,
	CreateDate DATETIME,
	UpdateDate DATETIME
)
-- Running this query creates a default constraint on the Quantity column.