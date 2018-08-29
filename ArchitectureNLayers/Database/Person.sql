CREATE TABLE [dbo].[Person](
	[IdPerson] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Surname] [varchar](100) NOT NULL,
	[IdDocumentType] [int] NOT NULL,
	[DocumentNumber] [int] NOT NULL,
	[EMail] [varchar](50) NOT NULL,
	[PhoneNumbers] [varchar](50) NOT NULL,
	[Sex] [char](1) NOT NULL,
	[Birthdate] [date] NOT NULL,
	[IdMaritalStatus] [int] NULL,
	[Comments] [varchar](250) NOT NULL,
	[Created] [datetime] NOT NULL,
	[Updated] [datetime] NULL,
 CONSTRAINT [PK_Persona] PRIMARY KEY CLUSTERED 
(
	[IdPerson] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Person]  WITH CHECK ADD  CONSTRAINT [FK_Person_DocumentType] FOREIGN KEY([IdDocumentType])
REFERENCES [dbo].[DocumentType] ([IdDocumentType])
GO
ALTER TABLE [dbo].[Person] CHECK CONSTRAINT [FK_Person_DocumentType]
GO
ALTER TABLE [dbo].[Person]  WITH CHECK ADD  CONSTRAINT [FK_Person_MaritalStatus] FOREIGN KEY([IdMaritalStatus])
REFERENCES [dbo].[MaritalStatus] ([IdMaritalStatus])
GO
ALTER TABLE [dbo].[Person] CHECK CONSTRAINT [FK_Person_MaritalStatus]
GO

