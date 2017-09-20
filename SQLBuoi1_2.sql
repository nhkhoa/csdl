USE ONLINE_SHOP
GO
-- XOA
IF OBJECT_ID('uspcau1','P') IS NOT NULL
	DROP PROC uspcau1
GO

CREATE PROC	uspcau1
	@a INT = 5, 
	@b INT = 6

AS
	
	RETURN (@a + @b)
GO


-----THUC THI
DECLARE @tong INT  , @x INT = 5 , @y INT = 10
EXEC @tong = uspcau1-- @x , @y
PRINT N'K?t qu? là :' + CAST(@tong AS NVARCHAR)

---------------------------------------------------
--- TINH TONG @ SO THUC
-- XOA
IF OBJECT_ID('uspcau1','P') IS NOT NULL
	DROP PROC uspcau1
GO

CREATE PROC	uspcau1
	@a FLOAT = 5.1, 
	@b FLOAT = 6.2,
	@tong FLOAT = 0 OUT

AS
	
	SET @tong = (@a + @b)
GO


-----THUC THI
DECLARE @tong FLOAT  , @x FLOAT = 5.2 , @y FLOAT = 10.5
EXEC uspcau1 @x , @y , @tong OUT
PRINT N'K?t qu? là :' + CAST(@tong AS NVARCHAR)