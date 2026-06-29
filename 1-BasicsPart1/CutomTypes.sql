USE TestDatabase
GO

--CREATED A NEW STRING TYPE FROM VARCHAR
CREATE TYPE dbo.String FROM VARCHAR(255)

DECLARE @MyString dbo.string = 'Up to 255 unicode charecters that will take 1 byte each'

SELECT @MyString

--look at all the types in our database
SELECT * FROM sys.types