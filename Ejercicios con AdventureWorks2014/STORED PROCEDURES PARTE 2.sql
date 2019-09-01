CREATE PROCEDURE  DimcustumersEdad

As


Select  ISNULL(YearlyIncome,0), FirstName,Lastname, r.BirthDate,MaritalStatus, Phone,
SpanishEducation,EnglishEducation,
DATEDIFF(Year,r.BirthDate,Getdate()) As Age
   From
    DimCustomer r ,
	(Select Distinct BirthDate From DimCustomer Where  DATEDIFF(Year,BirthDate,Getdate()) <=35 ) sq1
     where YearlyIncome <>0 and YearlyIncome <=50000 
	  and  DATEDIFF(year,r.BirthDate,GetDate())<=60 and MaritalStatus ='S' and r.BirthDate=sq1.BirthDate

Go


EXEC DimcustumersEdad

EXEC DimcustumersGanancias  @Ganancias=40000