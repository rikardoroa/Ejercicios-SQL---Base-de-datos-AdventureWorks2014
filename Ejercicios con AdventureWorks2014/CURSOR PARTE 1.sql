DECLARE @Firstname Varchar(50)
DECLARE @Lastname Varchar(50)
DEclare @HireDate  Date
Declare @Baserate Money
DECLARE @BIRTHDATE DATE
declare @resultado TABLE (  FirstName NVARCHAR(50)
                           ,LastName NVARCHAR(50)
						   ,HireDate date
						    ,BASERATE money 
							,BirthDate date )


DECLARE  BASERATE CURSOR
FOR

SELECT  FirstName,LastName,HireDate,BASERATE, BirthDate FROM DIMEMPLOYEE
 WHERE BASERATE =17.77 AND DATEDIFF(YEAR,BIRTHDATE,GETDATE())=33
   ORDER BY BASERATE ASC

OPEN BASERATE
 FETCH NEXT FROM BASERATE 
  INTO @Firstname,@Lastname,@Hiredate,@BASERATE	,@birthdate

   WHILE @@FETCH_STATUS=0
   BEGIN

  

	 FETCH NEXT FROM BASERATE
	  
       INTO @Firstname,@Lastname,@Hiredate,@BASERATE,@birthdate
	     Print @Firstname +','+ @Lastname +','+ Cast( @hiredate as Nvarchar(50))+','+ Cast(@Baserate as Nvarchar(50)) + ','+ Cast(@birthdate as Nvarchar)

		  INSERT INTO @RESULTADO VALUES(@Firstname,@Lastname,@Hiredate,@BASERATE,@birthdate)
		 
    END 
	        SELECT * FROM @RESULTADO   
CLOSE BASERATE;  
DEALLOCATE BASERATE; 

 