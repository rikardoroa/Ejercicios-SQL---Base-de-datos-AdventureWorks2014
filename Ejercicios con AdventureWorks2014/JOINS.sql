SELECT CONCAT(FIRSTNAME,',',LASTNAME) FROM DIMCUSTOMER
  INNER JOIN DIMGEOGRAPHY
  ON  DIMGEOGRAPHY.GEOGRAPHYKEY = DIMCUSTOMER.GeographyKey


  