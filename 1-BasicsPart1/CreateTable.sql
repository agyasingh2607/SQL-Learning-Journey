USE TestDatabase
GO

--INVENTORY

DROP TABLE IF EXISTS Inventory.Furniture

CREATE TABLE Inventory.Furniture(
	FurnitureId INT IDENTITY(1,1),	-- This ID field is an identity column that automatically generates values starting from 1 and increases by 1 for each new record.
	FurnitureType VARCHAR(50),
	FurnitureName VARCHAR(50),
	Price DECIMAL(18,4),  -- 18 - total number of digits, 4 - no. of digits after decimal
	Quantity INT,
	ReleaseDate DATE,
	CreateDate DATETIME,
	UpdateDate DATETIME
)