BEGIN TRANSACTION


 UPDATE DIMPRODUCT SET WeightUnitMeasureCode=NULL


----------------------------------------------------------------------
BEGIN TRANSACTION


 UPDATE DIMPRODUCT SET WeightUnitMeasureCode='ROA' WHERE StandardCost IN(
 SELECT StandardCost FROM DimProduct WHERE StandardCost<1)


 ROLLBACK

-------------------------------------------------------------------------


 ----------------------------------------------------------------------
 BEGIN TRANSACTION

 UPDATE DIMPRODUCT SET WeightUnitMeasureCode='ROA'



 COMMIT TRANSACTION

 ----------------------------------------------------------------------------

 BEGIN TRANSACTION


 UPDATE DIMPRODUCT SET WeightUnitMeasureCode='CM' WHERE WeightUnitMeasureCode='ROA'


 ROLLBACK

 ----------------------------------------------------------------------------

 BEGIN TRANSACTION

 UPDATE AdventureWorksDW2014.DBO.DimProduct 
   set AdventureWorksDW2014.DBO.DimProduct.WeightUnitMeasureCode = Y.WeightUnitMeasureCode
     FROM AdventureWorksDW2014.DBO.DimProduct AS X INNER JOIN
	        AdventureWorksCopy.DBO.DimProduct AS Y ON
			Y.ProductAlternateKey = X.ProductAlternateKey
			   WHERE Y.ProductAlternateKey IS NOT NULL

 ROLLBACK

---------------------------------------------------------------

UPDATE AdventureWorksDW2014.DBO.DimEmployee  SET baserate=J.Baserate
	      from AdventureWorksCopy.dbo.DimEmployee as j 
		    inner join 
		    AdventureWorksDW2014.DBO.DimEmployee as t
               on
			     j.EmployeeKey= t.employeekey
				 