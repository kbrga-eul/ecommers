CREATE PROCEDURE [dbo].[procInsertProducts]
	(
	@PName nvarchar(MAX),
	@PPrice float,
	@PSellPrice float,
	@PBrandID bigint,
	@PCategoryID bigint,
	@PSubCatID bigint,
	@PGender bigint,
	@PDescription nvarchar(MAX),
	@PProductDetails nvarchar(MAX),
	@PMaterialCare nvarchar(MAX),
	@FreeDelivery int,
	@14DayRet int,
	@COD int
	)
AS
	insert into tblProducts values(@PName,@PPrice,@PSellPrice,@PBrandID,@PCategoryID,@PSubCatID,@PGender,@PDescription,@PProductDetails,@PMaterialCare,@FreeDelivery,@14DayRet,@COD)
	select SCOPE_IDENTITY()
RETURN 0