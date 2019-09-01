

Use CentroMedico;


Create Table Pais(
Id Int Identity(1,1) Not Null,
IdPais  as Right ('CNP000' +  Cast (Id as Varchar(80)),80)  Persisted ,
Nombre_Pais Varchar(70) Not Null,
Constraint Pk_IdPais Primary Key(IdPais)
)

Create Table Pacientes(
    Id int Identity(1,1) Not Null,
    IdPaciente as Right ('PCN00000000000000'+ CAST(Id as Varchar(50)),50) Persisted,
    Nombre Varchar(50) Not Null,
    Apellido Varchar(50) Not Null,
    Domicilio Varchar(30) Not Null,
    Telefono Varchar(30) Not Null,
    Fecha_Nacimiento Date Not Null,
    IdPais Varchar(80) Not Null,
    Fecha_Registro Datetime 
    Constraint PK_Idpaciente Primary Key (Idpaciente)
    Constraint Fk_IdPais Foreign Key(IdPais) References Pais (IdPais)
    )


	
Insert Into Pais (Nombre_Pais) Values ('Colombia')
Insert Into Pais (Nombre_Pais) Values ('China')



Insert Into Pacientes
(Nombre,Apellido,Domicilio,Telefono,Fecha_Nacimiento,IdPais)Values
('Ricardo Rafael','Roa Merlano','Carrera 10 # 4-70','3013919941','1987-07-07','CNP0001'),
('Paola Esther','Cantillo Sierra','Carrera 10 # 4-70','3015231179','1988-07-17','CNP0001')



Update Pacientes Set Fecha_Registro=GETDATE() where IdPaciente='PCN000000000000001'
Update Pacientes Set Fecha_Registro=GETDATE() where IdPaciente='PCN000000000000002'



Select * From Pacientes
Select * From Pais