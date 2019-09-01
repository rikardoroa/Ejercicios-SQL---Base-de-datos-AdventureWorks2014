USE [AdventureWorksDW2014]
GO

INSERT INTO [dbo].[DimEmployee]
           ([ParentEmployeeKey]
           ,[EmployeeNationalIDAlternateKey]
           ,[ParentEmployeeNationalIDAlternateKey]
           ,[SalesTerritoryKey]
           ,[FirstName]
           ,[LastName]
           ,[MiddleName]
           ,[NameStyle]
           ,[Title]
           ,[HireDate]
           ,[BirthDate]
           ,[LoginID]
           ,[EmailAddress]
           ,[Phone]
           ,[MaritalStatus]
           ,[EmergencyContactName]
           ,[EmergencyContactPhone]
           ,[SalariedFlag]
           ,[Gender]
           ,[PayFrequency]
           ,[BaseRate]
           ,[VacationHours]
           ,[SickLeaveHours]
           ,[CurrentFlag]
           ,[SalesPersonFlag]
           ,[DepartmentName]
           ,[StartDate]
           ,[EndDate]
           ,[Status]
           ,[EmployeePhoto])
     VALUES
           (
		   15,
           '1A09',
           '3A0PQ',
           11,
           'rosmira',
           'DE LA CRUZ',
           'EDUARD',
           0,
           'Sales Representative',
           '2018-01-01',
           '1987-01-01',
           'adventure-works\eduard',
           'eduard@adventure-works.com',
           '190-555-2300',
           'M',
           'Ricardo Roa',
           '173-444-0788',
           1,
           'M',
           2,
           23.0769,
           30,
           40,
           1,
           1,
           'Production',
           '2010-12-29',
           '',
           'Current',
           convert(varbinary , Cast ('assfxc'as nvarchar(50))))
GO
