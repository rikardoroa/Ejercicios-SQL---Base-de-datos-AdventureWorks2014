Declare @Contador int, @ContadorA int
Declare @Contact Nvarchar(50)
Declare @country nvarchar(50)

set @Contador=0;
set @ContadorA=(Select Count(country)from Suppliers)

While (@Contador<=@ContadorA)
  Begin

    set @country= (select country from Suppliers where SupplierID=@Contador group by country)
      set @Contact=( Select Count(country) From Suppliers
        where Country in('usa') and SupplierID = @Contador  group by country)
  
  set @Contador=@Contador+1;

  print cast(@contact as nvarchar(50))+' ' + 'suppliers in'+' '+@country

End
