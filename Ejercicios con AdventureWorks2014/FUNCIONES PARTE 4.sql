CREATE FUNCTION COMPARA()
RETURNS NVARCHAR(10)
AS
BEGIN

DECLARE @PALABRA1 NVARCHAR(10)
SET @PALABRA1='CANTILLO'
DECLARE @PALABRA2 NVARCHAR(10)
SET @PALABRA2='CANTILLO'
DECLARE @PALABRA NVARCHAR (10)

IF (@PALABRA1=@PALABRA2)
   
   SET @PALABRA=@PALABRA1

   ELSE
   SET @PALABRA='NADA'

RETURN @PALABRA
END



SELECT DBO.COMPARA ()

DROP FUNCTION COMPARA