CREATE PROCEDURE UPDATEPRECIO
AS 

SELECT 
  ROUND(STANDARDCOST,1) AS PRECIO , PRODUCTKEY AS PRODUCTO
    INTO #R 
	 FROM DIMPRODUCT


 UPDATE DIMPRODUCT
   SET DIMPRODUCT.PRECIOREDONDEADO=B.PRECIO
    FROM DIMPRODUCT AS A INNER JOIN #R AS B
     ON B.PRODUCTO = A.ProductKey
	  WHERE A.ProductKey IS NOT NULL

   
GO

EXEC UPDATEPRECIO
