
Use CentroMedico;

Create Table Especialidad(
Id Int Identity(1,1) Not Null,
IdEspecialidad as Right ('CNES000000'+ CAST(Id as Varchar(50)),50) Persisted,
Nombre_Especialidad Varchar(50) Not Null
Constraint Pk_IdEspecialidad Primary Key (IdEspecialidad)
)

Create Table Medico(
Id int Identity(1,1) Not Null,
IdMedico As Right ('MD000000000000' + Cast(Id as Varchar(80)),80) Persisted,
Nombre Varchar (50) Not Null,
Apellido Varchar (50) Not Null,
IdEspecialidad Varchar(50)Not Null,
Constraint Pk_IdMedico Primary Key(IdMedico),
Constraint Fk_IdEspecialidad Foreign Key(IdEspecialidad) References Especialidad(IdEspecialidad)
)

Insert Into Especialidad Values('Ginecologia'),('Cardiologia')
Insert Into Medico Values('Jhon','Mendez','CNES0000001'),('Rodolfo','Vergara','CNES0000002')


Select * From Medico
Select * From Especialidad