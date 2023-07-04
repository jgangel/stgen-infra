DECLARE @Names TABLE
(name NVARCHAR(50))
INSERT INTO @Names (name)
VALUES('Bessie'),('Brownie'),('Buttercup'),('Clarabelle'),('Dottie'),('Guinness'),('Magic'),('Nellie'),('Penelope'),('Penny'),('Rosie'),('Snowflake'),('Sprinkles'),('Sugar')

DECLARE @Breeds TABLE
(name NVARCHAR(50))
INSERT INTO @Breeds (name)
VALUES('Angus'),('Brahman'),('Charolais'),('Dexter'),('Gelbvieh'),('Hereford'),('Holstein'),('Limousin'),('Shorthorn')

DECLARE @count INT
DECLARE @name NVARCHAR(50)
DECLARE @breed NVARCHAR(50)
DECLARE @birthDate DATE
DECLARE @sex BIT
DECLARE @price DECIMAL
DECLARE @status BIT

SET @count = 0
WHILE @count < 5000
BEGIN
	SET @name = (SELECT TOP 1 name FROM @Names ORDER BY NEWID());
	SET @breed = (SELECT TOP 1 name FROM @Breeds ORDER BY NEWID());
	SET @birthDate = DATEADD(day, -5000*RAND(), GETDATE());
	SET @sex = ROUND(RAND(), 0);
	SET @price = ROUND(RAND()*1000, 0);
	SET @status = ROUND(RAND(), 0);

	INSERT INTO Animal (Name, Breed, BirthDate, Sex, Price, Status)
	VALUES
	(@name, @breed, @birthDate, @sex, @price, @status)
	SET @count = @count + 1
END