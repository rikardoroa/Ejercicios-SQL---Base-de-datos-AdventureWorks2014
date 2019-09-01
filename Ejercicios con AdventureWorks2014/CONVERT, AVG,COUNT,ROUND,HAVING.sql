Select StandardCost, convert(int, round(StandardCost, 0)) as PrecioT, *  from Dimproduct Where Standardcost IS NOT NULL

Select  *  from Dimproduct Where  convert(int, round(StandardCost, 0))=654

----------------------------------------------------------------------------
Select Avg(StandardCost) as PromedioTotal  from Dimproduct Where  convert(int, round(StandardCost, 0))=654 or convert(int, round(StandardCost, 0))=12
Select StandardCost from Dimproduct Where  convert(int, round(StandardCost, 0))=654 or convert(int, round(StandardCost, 0))=12
--------------------------------------------------------------------------
Select StandardCost  from Dimproduct Where  convert(int, round(StandardCost, 0))=654 or convert(int, round(StandardCost, 0))=12
Group by StandardCost
Having Count(StandardCost)>=1

----------------------------------------------------------------------------------------
Select count(StandardCost) As Conteo, StandardCost
from Dimproduct 
Where  convert(int, round(StandardCost, 0))=654 
or convert(int, round(StandardCost, 0))=12
Group by StandardCost
Having Count(StandardCost)>=1
-------------------------------------------------------
Select Count(StandardCost)As 'Conteo',StandardCost from Dimproduct
Where StandardCost IS NOT NULL  
Group By StandardCost
Having Count(StandardCost)>=12
ORDER BY Count(StandardCost) Asc


Select Count(StandardCost)As 'Conteo',StandardCost from Dimproduct
Where StandardCost IS NOT NULL  
Group By StandardCost
