CREATE FUNCTION THISNAME (@GEOGRAPHYKEY INT)
RETURNS NVARCHAR(50)
AS
BEGIN
DECLARE @MINAME NVARCHAR(50)
SELECT @MINAME=(FIRSTNAME+' '+LASTNAME) FROM DIMCUSTOMER
   WHERE GeographyKey=@GEOGRAPHYKEY
	 RETURN @MINAME	
END

GO


SELECT DBO.THISNAME(GeographyKey) FROM DimCustomer
