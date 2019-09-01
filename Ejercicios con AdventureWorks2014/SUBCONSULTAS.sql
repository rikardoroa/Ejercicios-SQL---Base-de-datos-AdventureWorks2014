Select  ISNULL(YearlyIncome,0), FirstName,Lastname, BirthDate,MaritalStatus, Phone,
SpanishEducation,EnglishEducation,
 DATEDIFF(Year,BirthDate,Getdate()) As Age
   From DimCustomer 
    where Birthdate in (Select Birthdate From DimCustomer Where DATEDIFF(Year,BirthDate,Getdate()) <=35) and 
	YearlyIncome <>0 and YearlyIncome <=50000 and  DATEDIFF(year,BirthDate,GetDate())<=60 and MaritalStatus ='S'


Select  ISNULL(YearlyIncome,0), r.FirstName,r.Lastname, r.BirthDate,r.MaritalStatus, r.Phone,
r.SpanishEducation,r.EnglishEducation,
DATEDIFF(Year,r.BirthDate,Getdate()) As Age
  From DimCustomer r
     inner join (Select distinct BirthDate From DimCustomer Where DATEDIFF(Year,BirthDate,Getdate()) <=35) as x
       on  r.BirthDate = x.Birthdate
        Where r.YearlyIncome <>0 and r.YearlyIncome <=50000 and  DATEDIFF(year,r.BirthDate,GetDate())<=60 and r.MaritalStatus ='S'



Select  ISNULL(YearlyIncome,0), FirstName,Lastname, r.BirthDate,MaritalStatus, Phone,
SpanishEducation,EnglishEducation,
DATEDIFF(Year,r.BirthDate,Getdate()) As Age
   From
    DimCustomer r ,
	(Select Distinct BirthDate From DimCustomer Where  DATEDIFF(Year,BirthDate,Getdate()) <=35 ) sq1
     where YearlyIncome <>0 and YearlyIncome <=50000 
	  and  DATEDIFF(year,r.BirthDate,GetDate())<=60 and MaritalStatus ='S' and r.BirthDate=sq1.BirthDate



	  
Select ISNULL(y.YearlyIncome,0) as Income, y.FirstName,y.Lastname, y.BirthDate,y.MaritalStatus, y.Phone,
y.SpanishEducation,y.EnglishEducation,
DATEDIFF(Year,y.BirthDate,Getdate()) As Age,
(Select distinct r.BirthDate From DimCustomer  r Where r.BirthDate=y.BirthDate   and DATEDIFF(Year, r.BirthDate,Getdate())<=60 ) As Fecha
   From
    DimCustomer y
     where YearlyIncome <>0 and YearlyIncome <=50000 
	  and  DATEDIFF(year,y.BirthDate,GetDate())<=35 and MaritalStatus ='S'