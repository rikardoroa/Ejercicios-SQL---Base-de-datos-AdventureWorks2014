Select * From Dimproduct Where Standardcost IS NOT NULL


Select  ISNULL(StandardCost,0), * From Dimproduct Where StandardCost <>0
