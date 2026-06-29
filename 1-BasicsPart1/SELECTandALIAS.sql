USE TestDatabase
GO

SELECT * FROM Inventory.Furniture

SELECT [FurnitureId]
      ,[FurnitureType]  -- Specify the columns to be displayed in the result set.
      ,[FurnitureName]
      ,[CreateDate]
      ,[UpdateDate]
FROM Inventory.Furniture

--Alias
SELECT [Furniture1].[FurnitureId]
      ,[Furniture1].[FurnitureType]
      ,[Furniture1].[FurnitureName]
      ,[Furniture1].[Price]
      ,[Furniture1].[Quantity]
      ,[Furniture1].[ReleaseDate]
      ,[Furniture1].[CreateDate]
      ,[Furniture1].[UpdateDate]
FROM Inventory.Furniture AS Furniture1