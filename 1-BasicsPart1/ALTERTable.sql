USE TestDatabase
GO

--IF WE RUN HERE IT WILL GIVE US ERROR BECAUSE THE VALUE IS EMPTY
ALTER TABLE Inventory.Furniture ADD Subcategory VARCHAR(50) NOT NULL DEFAULT('')

 --get an error for constraint dependency
ALTER TABLE Inventory.Furniture DROP COLUMN Subcategory

--we need to drop this constraint first THAN DROP THE COLUMN
ALTER TABLE Inventory.Furniture DROP CONSTRAINT DF__Furniture__Subca__5070F446

--WE CAN LET IT BE NULLABLE ALSO AND we can drop them directly because no constraint is created
ALTER TABLE Inventory.Furniture ADD Subcategory VARCHAR(50)

--nullable but have default
ALTER TABLE Inventory.Furniture ADD Subcategory VARCHAR(50) NULL DEFAULT('')

--Add a constraint 
ALTER TABLE Inventory.Furniture ADD CONSTRAINT DF__Furniture__Subcategory DEFAULT('') FOR Subcategory 

--alter the coulmn type but can not replace because it's dependent on constraint
ALTER TABLE Inventory.Furniture ALTER COLUMN Subcategory NVARCHAR(150) NOT NULL --not possible

--instead we do this
UPDATE Inventory.Furniture SET Subcategory = DEFAULT


SELECT * FROM Inventory.Furniture 