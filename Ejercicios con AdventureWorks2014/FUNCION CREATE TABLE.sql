

Create Table DetalleHC (
Id int identity(1,1)  Not Null,
IdHc Varchar(80)  Not Null,
IdPaciente Varchar(50) Not Null,
IdMedico Varchar(80)  Not Null,
Constraint Pk_Compuesta1 Primary Key (IdHc,IdPaciente,IdMedico),
Constraint Fk_IdPaciente  Foreign Key(IdPaciente) References Pacientes(IdPaciente),
Constraint Fk_IdMedico   Foreign Key(IdMedico)   References Medico(IdMedico),
Constraint Fk_IdHc   Foreign Key(IdHc)   References HistoriaPaciente(IdHc)
)



Create Table HistoriaPaciente(
Id int Identity(1,1) Not Null,
IdHc as Right ('HC000000000000' + cast (Id as Varchar(80)),80) Persisted,
Estado Bit Not Null,
Descripcion Varchar(1000) Not Null,
Constraint PK_IdHc Primary Key(IdHc)
)


ALTER TABLE HistoriaPaciente
add FechaHc Datetime

Select * From HistoriaPaciente
Update HistoriaPaciente set FechaHc=Getdate() Where IdHc='HC0000000000001'