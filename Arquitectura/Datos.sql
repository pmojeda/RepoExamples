USE [CapaDatos]
GO
/****** Object:  Table [dbo].[Persona]    Script Date: 29/10/2016 11:57:07 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Persona](
	[IdPersona] [int] IDENTITY(1,1) NOT NULL,
	[IdTipoIdentificacion] [int] NOT NULL,
	[Identificacion] [varchar](20) NOT NULL,
	[Nombre] [varchar](20) NOT NULL,
	[Apellidos] [varchar](20) NOT NULL,
	[Correo] [varchar](50) NOT NULL,
	[Telefono] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Persona] PRIMARY KEY CLUSTERED 
(
	[IdPersona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TipoIdentificacion]    Script Date: 29/10/2016 11:57:07 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoIdentificacion](
	[IdTipoIdentificacion] [int] NOT NULL,
	[Codigo] [varchar](3) NOT NULL,
	[NombreTipoIdentificacion] [varchar](40) NOT NULL,
	[TipoPersona] [varchar](10) NOT NULL,
 CONSTRAINT [PK_TipoDocumento] PRIMARY KEY CLUSTERED 
(
	[IdTipoIdentificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Persona] ON 

GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (1, 1, N'394246', N'ANTONIO', N'GARCIA LORCA', N'antonio.garcia@sincorreo.com', N'315 99 99 800')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (2, 1, N'8582408', N'JOSE', N'GONZALEZ', N'jose.gonzalez@sincorreo.com', N'316 99 99 801')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (3, 1, N'2304601', N'MANUEL', N'RODRIGUEZ', N'manuel.rodriguez@sincorreo.com', N'317 99 99 802')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (4, 1, N'3250344', N'FRANCISCO', N'FERNANDEZ', N'francisco.fernandez@sincorreo.com', N'310 99 99 803')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (5, 1, N'2119780', N'JUAN', N'LOPEZ', N'juan.lopez@sincorreo.com', N'311 99 99 804')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (6, 1, N'519874', N'DAVID', N'MARTINEZ', N'david.martinez@sincorreo.com', N'312 99 99 805')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (7, 1, N'7158165', N'JOSE ANTONIO', N'SANCHEZ', N'joseantonio.sanchez@sincorreo.com', N'313 99 99 806')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (8, 1, N'5722999', N'JAVIER', N'PEREZ', N'javier.perez@sincorreo.com', N'314 99 99 807')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (9, 1, N'2082230', N'JOSE LUIS', N'GOMEZ', N'joseluis.gomez@sincorreo.com', N'320 99 99 808')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (10, 1, N'6073621', N'FRANCISCO JAVIER', N'MARTIN', N'franciscojavier.martin@sincorreo.com', N'315 99 99 809')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (11, 1, N'5371476', N'DANIEL', N'JIMENEZ', N'daniel.jimenez@sincorreo.com', N'316 99 99 810')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (12, 3, N'78621', N'JESUS', N'RUIZ', N'jesus.ruiz@sincorreo.com', N'317 99 99 811')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (13, 1, N'5975149', N'CARLOS', N'HERNANDEZ', N'carlos.hernandez@sincorreo.com', N'310 99 99 812')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (14, 1, N'8915690', N'MIGUEL', N'DIAZ', N'miguel.diaz@sincorreo.com', N'311 99 99 813')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (15, 1, N'8971083', N'ALEJANDRO', N'MORENO', N'alejandro.moreno@sincorreo.com', N'312 99 99 814')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (16, 1, N'6049477', N'JOSE MANUEL', N'MUÑOZ', N'josemanuel.muñoz@sincorreo.com', N'313 99 99 815')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (17, 3, N'8604901', N'RAFAEL', N'ALVAREZ', N'rafael.alvarez@sincorreo.com', N'314 99 99 816')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (18, 3, N'4656126', N'PEDRO', N'ROMERO', N'pedro.romero@sincorreo.com', N'320 99 99 817')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (19, 1, N'8513889', N'MIGUEL ANGEL', N'ALONSO', N'miguelangel.alonso@sincorreo.com', N'315 99 99 818')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (20, 1, N'9168283', N'ANGEL', N'GUTIERREZ', N'angel.gutierrez@sincorreo.com', N'316 99 99 819')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (21, 2, N'4377580', N'JOSE MARIA', N'NAVARRO', N'josemaria.navarro@sincorreo.com', N'317 99 99 820')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (22, 2, N'8280090', N'FERNANDO', N'TORRES', N'fernando.torres@sincorreo.com', N'310 99 99 821')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (23, 2, N'5000167', N'PABLO', N'DOMINGUEZ', N'pablo.dominguez@sincorreo.com', N'311 99 99 822')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (24, 1, N'8886598', N'LUIS', N'VAZQUEZ', N'luis.vazquez@sincorreo.com', N'312 99 99 823')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (25, 1, N'1703609', N'SERGIO', N'RAMOS', N'sergio.ramos@sincorreo.com', N'313 99 99 824')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (26, 2, N'6129478', N'JORGE', N'GIL', N'jorge.gil@sincorreo.com', N'314 99 99 825')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (27, 2, N'5361909', N'ALBERTO', N'RAMIREZ', N'alberto.ramirez@sincorreo.com', N'320 99 99 826')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (28, 1, N'597781', N'JUAN CARLOS', N'SERRANO', N'juancarlos.serrano@sincorreo.com', N'315 99 99 827')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (29, 3, N'53591', N'JUAN JOSE', N'BLANCO', N'juanjose.blanco@sincorreo.com', N'316 99 99 828')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (30, 1, N'408805', N'ALVARO', N'MOLINA', N'alvaro.molina@sincorreo.com', N'317 99 99 829')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (31, 1, N'3361660', N'DIEGO', N'MORALES', N'diego.morales@sincorreo.com', N'310 99 99 830')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (32, 2, N'8961522', N'ADRIAN', N'SUAREZ', N'adrian.suarez@sincorreo.com', N'311 99 99 831')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (33, 2, N'1760725', N'RAUL', N'ORTEGA', N'raul.ortega@sincorreo.com', N'312 99 99 832')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (34, 1, N'5416734', N'JUAN ANTONIO', N'DELGADO', N'juanantonio.delgado@sincorreo.com', N'313 99 99 833')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (35, 3, N'9722864', N'ENRIQUE', N'CASTRO', N'enrique.castro@sincorreo.com', N'314 99 99 834')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (36, 1, N'3833164', N'RAMON', N'ORTIZ', N'ramon.ortiz@sincorreo.com', N'320 99 99 835')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (37, 1, N'2035322', N'IVAN', N'RUBIO', N'ivan.rubio@sincorreo.com', N'315 99 99 836')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (38, 1, N'5252338', N'VICENTE', N'MARIN', N'vicente.marin@sincorreo.com', N'316 99 99 837')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (39, 2, N'6882684', N'RUBEN', N'SANZ', N'ruben.sanz@sincorreo.com', N'317 99 99 838')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (40, 1, N'1242553', N'OSCAR', N'NUÑEZ', N'oscar.nuñez@sincorreo.com', N'310 99 99 839')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (41, 1, N'7931455', N'ANDRES', N'IGLESIAS', N'andres.iglesias@sincorreo.com', N'311 99 99 840')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (42, 1, N'3764671', N'JOAQUIN', N'MEDINA', N'joaquin.medina@sincorreo.com', N'312 99 99 841')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (43, 2, N'418657', N'JUAN MANUEL', N'GARRIDO', N'juanmanuel.garrido@sincorreo.com', N'313 99 99 842')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (44, 2, N'6165760', N'SANTIAGO', N'CORTES', N'santiago.cortes@sincorreo.com', N'314 99 99 843')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (45, 1, N'591004', N'EDUARDO', N'CASTILLO', N'eduardo.castillo@sincorreo.com', N'320 99 99 844')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (46, 1, N'8223053', N'VICTOR', N'SANTOS', N'victor.santos@sincorreo.com', N'315 99 99 845')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (47, 2, N'168137', N'ROBERTO', N'LOZANO', N'roberto.lozano@sincorreo.com', N'316 99 99 846')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (48, 2, N'4289685', N'JAIME', N'GUERRERO', N'jaime.guerrero@sincorreo.com', N'317 99 99 847')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (49, 3, N'5617555', N'FRANCISCO JOSE', N'CANO', N'franciscojose.cano@sincorreo.com', N'310 99 99 848')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (50, 1, N'7389463', N'MARIO', N'PRIETO', N'mario.prieto@sincorreo.com', N'311 99 99 849')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (51, 3, N'756690', N'IGNACIO', N'MENDEZ', N'ignacio.mendez@sincorreo.com', N'312 99 99 850')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (52, 3, N'3694595', N'ALFONSO', N'CALVO', N'alfonso.calvo@sincorreo.com', N'313 99 99 851')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (53, 5, N'1842787', N'MARCOS', N'CRUZ', N'marcos.cruz@sincorreo.com', N'314 99 99 852')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (54, 1, N'28872', N'SALVADOR', N'GALLEGO', N'salvador.gallego@sincorreo.com', N'320 99 99 853')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (55, 1, N'4077026', N'RICARDO', N'VIDAL', N'ricardo.vidal@sincorreo.com', N'315 99 99 854')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (56, 1, N'6778846', N'JORDI', N'LEON', N'jordi.leon@sincorreo.com', N'316 99 99 855')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (57, 2, N'3213028', N'EMILIO', N'MARQUEZ', N'emilio.marquez@sincorreo.com', N'317 99 99 856')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (58, 1, N'9758514', N'JULIAN', N'HERRERA', N'julian.herrera@sincorreo.com', N'310 99 99 857')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (59, 2, N'3517127', N'GUILLERMO', N'PEÑA', N'guillermo.peña@sincorreo.com', N'311 99 99 858')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (60, 1, N'1014948', N'JULIO', N'FLORES', N'julio.flores@sincorreo.com', N'312 99 99 859')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (61, 1, N'7255656', N'GABRIEL', N'CABRERA', N'gabriel.cabrera@sincorreo.com', N'313 99 99 860')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (62, 1, N'6880602', N'TOMAS', N'CAMPOS', N'tomas.campos@sincorreo.com', N'314 99 99 861')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (63, 2, N'4798416', N'AGUSTIN', N'VEGA', N'agustin.vega@sincorreo.com', N'320 99 99 862')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (64, 1, N'8384671', N'JOSE MIGUEL', N'FUENTES', N'josemiguel.fuentes@sincorreo.com', N'315 99 99 863')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (65, 1, N'2968471', N'HUGO', N'DIEZ', N'hugo.diez@sincorreo.com', N'316 99 99 864')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (66, 3, N'9300808', N'MARC', N'CARRASCO', N'marc.carrasco@sincorreo.com', N'317 99 99 865')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (67, 3, N'7397639', N'GONZALO', N'CABALLERO', N'gonzalo.caballero@sincorreo.com', N'310 99 99 866')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (68, 3, N'9583991', N'JOSE RAMON', N'NIETO', N'joseramon.nieto@sincorreo.com', N'311 99 99 867')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (69, 2, N'9220219', N'MOHAMED', N'REYES', N'mohamed.reyes@sincorreo.com', N'312 99 99 868')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (70, 1, N'370092', N'FELIX', N'AGUILAR', N'felix.aguilar@sincorreo.com', N'313 99 99 869')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (71, 1, N'1031190', N'JOAN', N'PASCUAL', N'joan.pascual@sincorreo.com', N'314 99 99 870')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (72, 3, N'7623755', N'NICOLAS', N'HERRERO', N'nicolas.herrero@sincorreo.com', N'320 99 99 871')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (73, 5, N'3898416', N'ISMAEL', N'SANTANA', N'ismael.santana@sincorreo.com', N'315 99 99 872')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (74, 1, N'8103167', N'CRISTIAN', N'LORENZO', N'cristian.lorenzo@sincorreo.com', N'316 99 99 873')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (75, 1, N'3034819', N'SAMUEL', N'MONTERO', N'samuel.montero@sincorreo.com', N'317 99 99 874')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (76, 5, N'6761598', N'MARTIN', N'HIDALGO', N'martin.hidalgo@sincorreo.com', N'310 99 99 875')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (77, 1, N'9159352', N'JOSEP', N'GIMENEZ', N'josep.gimenez@sincorreo.com', N'311 99 99 876')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (78, 3, N'153243', N'MARIANO', N'IBAÑEZ', N'mariano.ibañez@sincorreo.com', N'312 99 99 877')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (79, 1, N'7433879', N'AITOR', N'FERRER', N'aitor.ferrer@sincorreo.com', N'313 99 99 878')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (80, 5, N'339411', N'JUAN FRANCISCO', N'DURAN', N'juanfrancisco.duran@sincorreo.com', N'314 99 99 879')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (81, 1, N'8577402', N'DOMINGO', N'SANTIAGO', N'domingo.santiago@sincorreo.com', N'320 99 99 880')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (82, 1, N'1857950', N'ALFREDO', N'VICENTE', N'alfredo.vicente@sincorreo.com', N'315 99 99 881')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (83, 1, N'7076642', N'JOSE CARLOS', N'BENITEZ', N'josecarlos.benitez@sincorreo.com', N'316 99 99 882')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (84, 1, N'6205803', N'SEBASTIAN', N'MORA', N'sebastian.mora@sincorreo.com', N'317 99 99 883')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (85, 1, N'5422773', N'HECTOR', N'ARIAS', N'hector.arias@sincorreo.com', N'310 99 99 884')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (86, 1, N'7508818', N'CESAR', N'VARGAS', N'cesar.vargas@sincorreo.com', N'311 99 99 885')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (87, 1, N'1533154', N'FELIPE', N'CARMONA', N'felipe.carmona@sincorreo.com', N'312 99 99 886')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (88, 1, N'5263079', N'IKER', N'CRESPO', N'iker.crespo@sincorreo.com', N'313 99 99 887')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (89, 2, N'6978109', N'JOSE ANGEL', N'ROMAN', N'joseangel.roman@sincorreo.com', N'314 99 99 888')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (90, 1, N'8589046', N'JOSE IGNACIO', N'PASTOR', N'joseignacio.pastor@sincorreo.com', N'320 99 99 889')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (91, 2, N'4611180', N'VICTOR MANUEL', N'SOTO', N'victormanuel.soto@sincorreo.com', N'315 99 99 890')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (92, 1, N'7698253', N'ALEX', N'SAEZ', N'alex.saez@sincorreo.com', N'316 99 99 891')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (93, 1, N'4627885', N'LUIS MIGUEL', N'VELASCO', N'luismiguel.velasco@sincorreo.com', N'317 99 99 892')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (94, 1, N'7732612', N'GREGORIO', N'MOYA', N'gregorio.moya@sincorreo.com', N'310 99 99 893')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (95, 1, N'8217891', N'RODRIGO', N'SOLER', N'rodrigo.soler@sincorreo.com', N'311 99 99 894')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (96, 3, N'4158656', N'JOSE FRANCISCO', N'ESTEBAN', N'josefrancisco.esteban@sincorreo.com', N'312 99 99 895')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (97, 2, N'5069010', N'LUCAS', N'PARRA', N'lucas.parra@sincorreo.com', N'313 99 99 896')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (98, 1, N'989436', N'JUAN LUIS', N'BRAVO', N'juanluis.bravo@sincorreo.com', N'314 99 99 897')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (99, 1, N'3711392', N'ALBERT', N'GALLARDO', N'albert.gallardo@sincorreo.com', N'320 99 99 898')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (100, 1, N'2384808', N'XAVIER', N'ROJAS', N'xavier.rojas@sincorreo.com', N'315 99 99 899')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (101, 1, N'1142718', N'MARIA CARMEN', N'GARCIA', N'mariacarmen.garcia@sincorreo.com', N'316 99 99 900')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (102, 2, N'3926207', N'MARIA', N'GONZALEZ', N'maria.gonzalez@sincorreo.com', N'317 99 99 901')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (103, 2, N'425573', N'CARMEN', N'RODRIGUEZ', N'carmen.rodriguez@sincorreo.com', N'310 99 99 902')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (104, 4, N'2590425', N'JOSEFA', N'FERNANDEZ', N'josefa.fernandez@sincorreo.com', N'311 99 99 903')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (105, 2, N'954625', N'ISABEL', N'LOPEZ', N'isabel.lopez@sincorreo.com', N'312 99 99 904')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (106, 1, N'2386357', N'ANA MARIA', N'MARTINEZ', N'anamaria.martinez@sincorreo.com', N'313 99 99 905')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (107, 2, N'9355457', N'MARIA PILAR', N'SANCHEZ', N'mariapilar.sanchez@sincorreo.com', N'314 99 99 906')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (108, 1, N'7350486', N'MARIA DOLORES', N'PEREZ', N'mariadolores.perez@sincorreo.com', N'320 99 99 907')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (109, 5, N'9301331', N'MARIA TERESA', N'GOMEZ', N'mariateresa.gomez@sincorreo.com', N'315 99 99 908')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (110, 2, N'7666460', N'ANA', N'MARTIN', N'ana.martin@sincorreo.com', N'316 99 99 909')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (111, 1, N'8576293', N'LAURA', N'JIMENEZ', N'laura.jimenez@sincorreo.com', N'317 99 99 910')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (112, 1, N'8176270', N'MARIA ANGELES', N'RUIZ', N'mariaangeles.ruiz@sincorreo.com', N'310 99 99 911')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (113, 4, N'1299002', N'CRISTINA', N'HERNANDEZ', N'cristina.hernandez@sincorreo.com', N'311 99 99 912')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (114, 4, N'3369641', N'FRANCISCA', N'DIAZ', N'francisca.diaz@sincorreo.com', N'312 99 99 913')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (115, 1, N'8615777', N'MARTA', N'MORENO', N'marta.moreno@sincorreo.com', N'313 99 99 914')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (116, 1, N'925627', N'ANTONIA', N'MUÑOZ', N'antonia.muñoz@sincorreo.com', N'314 99 99 915')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (117, 1, N'3079363', N'DOLORES', N'ALVAREZ', N'dolores.alvarez@sincorreo.com', N'320 99 99 916')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (118, 1, N'7828078', N'MARIA ISABEL', N'ROMERO', N'mariaisabel.romero@sincorreo.com', N'315 99 99 917')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (119, 2, N'599087', N'MARIA JOSE', N'ALONSO', N'mariajose.alonso@sincorreo.com', N'316 99 99 918')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (120, 1, N'599603', N'LUCIA', N'GUTIERREZ', N'lucia.gutierrez@sincorreo.com', N'317 99 99 919')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (121, 1, N'1237672', N'MARIA LUISA', N'NAVARRO', N'marialuisa.navarro@sincorreo.com', N'310 99 99 920')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (122, 1, N'2575686', N'SARA', N'TORRES', N'sara.torres@sincorreo.com', N'311 99 99 921')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (123, 1, N'4959627', N'ELENA', N'DOMINGUEZ', N'elena.dominguez@sincorreo.com', N'312 99 99 922')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (124, 2, N'4952418', N'PILAR', N'VAZQUEZ', N'pilar.vazquez@sincorreo.com', N'313 99 99 923')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (125, 5, N'1562855', N'PAULA', N'RAMOS', N'paula.ramos@sincorreo.com', N'314 99 99 924')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (126, 1, N'5471946', N'CONCEPCION', N'GIL', N'concepcion.gil@sincorreo.com', N'320 99 99 925')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (127, 1, N'7764335', N'MANUELA', N'RAMIREZ', N'manuela.ramirez@sincorreo.com', N'315 99 99 926')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (128, 1, N'1927504', N'ROSA MARIA', N'SERRANO', N'rosamaria.serrano@sincorreo.com', N'316 99 99 927')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (129, 4, N'2837465', N'RAQUEL', N'BLANCO', N'raquel.blanco@sincorreo.com', N'317 99 99 928')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (130, 1, N'1745472', N'MERCEDES', N'MOLINA', N'mercedes.molina@sincorreo.com', N'310 99 99 929')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (131, 1, N'8639333', N'MARIA JESUS', N'MORALES', N'mariajesus.morales@sincorreo.com', N'311 99 99 930')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (132, 4, N'7618669', N'ROSARIO', N'SUAREZ', N'rosario.suarez@sincorreo.com', N'312 99 99 931')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (133, 4, N'9710675', N'JUANA', N'ORTEGA', N'juana.ortega@sincorreo.com', N'313 99 99 932')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (134, 1, N'4458181', N'TERESA', N'DELGADO', N'teresa.delgado@sincorreo.com', N'314 99 99 933')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (135, 2, N'8065053', N'BEATRIZ', N'CASTRO', N'beatriz.castro@sincorreo.com', N'320 99 99 934')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (136, 4, N'1742014', N'ENCARNACION', N'ORTIZ', N'encarnacion.ortiz@sincorreo.com', N'315 99 99 935')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (137, 5, N'8385055', N'NURIA', N'RUBIO', N'nuria.rubio@sincorreo.com', N'316 99 99 936')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (138, 5, N'464297', N'SILVIA', N'MARIN', N'silvia.marin@sincorreo.com', N'317 99 99 937')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (139, 5, N'8676433', N'JULIA', N'SANZ', N'julia.sanz@sincorreo.com', N'310 99 99 938')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (140, 2, N'1565450', N'MONTSERRAT', N'NUÑEZ', N'montserrat.nuñez@sincorreo.com', N'311 99 99 939')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (141, 1, N'9361304', N'IRENE', N'IGLESIAS', N'irene.iglesias@sincorreo.com', N'312 99 99 940')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (142, 1, N'7506278', N'PATRICIA', N'MEDINA', N'patricia.medina@sincorreo.com', N'313 99 99 941')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (143, 5, N'7386293', N'ROSA', N'GARRIDO', N'rosa.garrido@sincorreo.com', N'314 99 99 942')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (144, 1, N'9117824', N'ALBA', N'CORTES', N'alba.cortes@sincorreo.com', N'320 99 99 943')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (145, 1, N'9796658', N'ANDREA', N'CASTILLO', N'andrea.castillo@sincorreo.com', N'315 99 99 944')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (146, 4, N'9088836', N'ROCIO', N'SANTOS', N'rocio.santos@sincorreo.com', N'316 99 99 945')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (147, 1, N'6269455', N'MONICA', N'LOZANO', N'monica.lozano@sincorreo.com', N'317 99 99 946')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (148, 1, N'245246', N'MARIA MAR', N'GUERRERO', N'mariamar.guerrero@sincorreo.com', N'310 99 99 947')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (149, 1, N'2174223', N'ANGELA', N'CANO', N'angela.cano@sincorreo.com', N'311 99 99 948')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (150, 5, N'5124675', N'ALICIA', N'PRIETO', N'alicia.prieto@sincorreo.com', N'312 99 99 949')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (151, 1, N'7286479', N'SONIA', N'MENDEZ', N'sonia.mendez@sincorreo.com', N'313 99 99 950')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (152, 1, N'8715678', N'SANDRA', N'CALVO', N'sandra.calvo@sincorreo.com', N'314 99 99 951')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (153, 2, N'2863555', N'SUSANA', N'CRUZ', N'susana.cruz@sincorreo.com', N'320 99 99 952')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (154, 4, N'3490161', N'MARINA', N'GALLEGO', N'marina.gallego@sincorreo.com', N'315 99 99 953')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (155, 1, N'4331619', N'MARGARITA', N'VIDAL', N'margarita.vidal@sincorreo.com', N'316 99 99 954')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (156, 1, N'4677200', N'YOLANDA', N'LEON', N'yolanda.leon@sincorreo.com', N'317 99 99 955')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (157, 1, N'76019', N'NATALIA', N'MARQUEZ', N'natalia.marquez@sincorreo.com', N'310 99 99 956')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (158, 1, N'5330734', N'MARIA JOSEFA', N'HERRERA', N'mariajosefa.herrera@sincorreo.com', N'311 99 99 957')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (159, 4, N'6534602', N'MARIA ROSARIO', N'PEÑA', N'mariarosario.peña@sincorreo.com', N'312 99 99 958')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (160, 2, N'7307749', N'INMACULADA', N'FLORES', N'inmaculada.flores@sincorreo.com', N'313 99 99 959')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (161, 1, N'4077311', N'EVA', N'CABRERA', N'eva.cabrera@sincorreo.com', N'314 99 99 960')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (162, 4, N'5229103', N'MARIA MERCEDES', N'CAMPOS', N'mariamercedes.campos@sincorreo.com', N'320 99 99 961')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (163, 5, N'6073549', N'ESTHER', N'VEGA', N'esther.vega@sincorreo.com', N'315 99 99 962')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (164, 1, N'164512', N'ANA ISABEL', N'FUENTES', N'anaisabel.fuentes@sincorreo.com', N'316 99 99 963')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (165, 1, N'9953065', N'CLAUDIA', N'DIEZ', N'claudia.diez@sincorreo.com', N'317 99 99 964')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (166, 1, N'7329270', N'ANGELES', N'CARRASCO', N'angeles.carrasco@sincorreo.com', N'310 99 99 965')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (167, 4, N'7521559', N'NOELIA', N'CABALLERO', N'noelia.caballero@sincorreo.com', N'311 99 99 966')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (168, 2, N'6118087', N'VERONICA', N'NIETO', N'veronica.nieto@sincorreo.com', N'312 99 99 967')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (169, 3, N'78217', N'CARLA', N'REYES', N'carla.reyes@sincorreo.com', N'313 99 99 968')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (170, 5, N'3910103', N'AMPARO', N'AGUILAR', N'amparo.aguilar@sincorreo.com', N'314 99 99 969')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (171, 1, N'9493074', N'CAROLINA', N'PASCUAL', N'carolina.pascual@sincorreo.com', N'320 99 99 970')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (172, 3, N'9349889', N'MARIA ROSA', N'HERRERO', N'mariarosa.herrero@sincorreo.com', N'315 99 99 971')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (173, 4, N'7384881', N'MARIA VICTORIA', N'SANTANA', N'mariavictoria.santana@sincorreo.com', N'316 99 99 972')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (174, 3, N'4299568', N'NEREA', N'LORENZO', N'nerea.lorenzo@sincorreo.com', N'317 99 99 973')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (175, 1, N'6946957', N'SOFIA', N'MONTERO', N'sofia.montero@sincorreo.com', N'310 99 99 974')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (176, 1, N'6841918', N'EVA MARIA', N'HIDALGO', N'evamaria.hidalgo@sincorreo.com', N'311 99 99 975')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (177, 1, N'4866509', N'MARIA CONCEPCION', N'GIMENEZ', N'mariaconcepcion.gimenez@sincorreo.com', N'312 99 99 976')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (178, 3, N'6503593', N'LORENA', N'IBAÑEZ', N'lorena.ibañez@sincorreo.com', N'313 99 99 977')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (179, 1, N'2665712', N'ANA BELEN', N'FERRER', N'anabelen.ferrer@sincorreo.com', N'314 99 99 978')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (180, 4, N'6756454', N'MIRIAM', N'DURAN', N'miriam.duran@sincorreo.com', N'320 99 99 979')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (181, 1, N'5291031', N'VICTORIA', N'SANTIAGO', N'victoria.santiago@sincorreo.com', N'315 99 99 980')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (182, 1, N'3289032', N'INES', N'VICENTE', N'ines.vicente@sincorreo.com', N'316 99 99 981')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (183, 4, N'6485074', N'MARIA ELENA', N'BENITEZ', N'mariaelena.benitez@sincorreo.com', N'317 99 99 982')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (184, 1, N'3414057', N'MARIA ANTONIA', N'MORA', N'mariaantonia.mora@sincorreo.com', N'310 99 99 983')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (185, 1, N'280438', N'CATALINA', N'ARIAS', N'catalina.arias@sincorreo.com', N'311 99 99 984')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (186, 1, N'5626012', N'CONSUELO', N'VARGAS', N'consuelo.vargas@sincorreo.com', N'312 99 99 985')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (187, 4, N'9204187', N'MARIA NIEVES', N'CARMONA', N'marianieves.carmona@sincorreo.com', N'313 99 99 986')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (188, 3, N'7213507', N'LIDIA', N'CRESPO', N'lidia.crespo@sincorreo.com', N'314 99 99 987')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (189, 1, N'8952375', N'EMILIA', N'ROMAN', N'emilia.roman@sincorreo.com', N'320 99 99 988')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (190, 1, N'655412', N'LUISA', N'PASTOR', N'luisa.pastor@sincorreo.com', N'315 99 99 989')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (191, 3, N'7394933', N'CELIA', N'SOTO', N'celia.soto@sincorreo.com', N'316 99 99 990')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (192, 1, N'4356904', N'GLORIA', N'SAEZ', N'gloria.saez@sincorreo.com', N'317 99 99 991')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (193, 1, N'2003672', N'OLGA', N'VELASCO', N'olga.velasco@sincorreo.com', N'310 99 99 992')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (194, 3, N'2321700', N'DANIELA', N'MOYA', N'daniela.moya@sincorreo.com', N'311 99 99 993')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (195, 1, N'2875171', N'AURORA', N'SOLER', N'aurora.soler@sincorreo.com', N'312 99 99 994')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (196, 1, N'4754358', N'ESPERANZA', N'ESTEBAN', N'esperanza.esteban@sincorreo.com', N'313 99 99 995')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (197, 4, N'4967618', N'MARIA SOLEDAD', N'PARRA', N'mariasoledad.parra@sincorreo.com', N'314 99 99 996')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (198, 4, N'8571801', N'ALEJANDRA', N'BRAVO', N'alejandra.bravo@sincorreo.com', N'320 99 99 997')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (199, 1, N'283638', N'MILAGROS', N'GALLARDO', N'milagros.gallardo@sincorreo.com', N'315 99 99 998')
GO
INSERT [dbo].[Persona] ([IdPersona], [IdTipoIdentificacion], [Identificacion], [Nombre], [Apellidos], [Correo], [Telefono]) VALUES (200, 1, N'7348972', N'JOSEFINA', N'ROJAS', N'josefina.rojas@sincorreo.com', N'316 99 99 999')
GO
SET IDENTITY_INSERT [dbo].[Persona] OFF
GO
INSERT [dbo].[TipoIdentificacion] ([IdTipoIdentificacion], [Codigo], [NombreTipoIdentificacion], [TipoPersona]) VALUES (1, N'CC', N'Cédula', N'Natural')
GO
INSERT [dbo].[TipoIdentificacion] ([IdTipoIdentificacion], [Codigo], [NombreTipoIdentificacion], [TipoPersona]) VALUES (2, N'CE', N'Cédula de extranjeria', N'Natural')
GO
INSERT [dbo].[TipoIdentificacion] ([IdTipoIdentificacion], [Codigo], [NombreTipoIdentificacion], [TipoPersona]) VALUES (3, N'PA', N'Pasaporte', N'Natural')
GO
INSERT [dbo].[TipoIdentificacion] ([IdTipoIdentificacion], [Codigo], [NombreTipoIdentificacion], [TipoPersona]) VALUES (4, N'RC', N'Registro civil', N'Natural')
GO
INSERT [dbo].[TipoIdentificacion] ([IdTipoIdentificacion], [Codigo], [NombreTipoIdentificacion], [TipoPersona]) VALUES (5, N'TI', N'Tarjeta de identidad', N'Natural')
GO
INSERT [dbo].[TipoIdentificacion] ([IdTipoIdentificacion], [Codigo], [NombreTipoIdentificacion], [TipoPersona]) VALUES (6, N'NIT', N'Número de identificación tributaria', N'Jurídica')
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Persona]    Script Date: 29/10/2016 11:57:07 a. m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Persona] ON [dbo].[Persona]
(
	[IdTipoIdentificacion] ASC,
	[Identificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Persona_1]    Script Date: 29/10/2016 11:57:07 a. m. ******/
CREATE NONCLUSTERED INDEX [IX_Persona_1] ON [dbo].[Persona]
(
	[Nombre] ASC,
	[Apellidos] ASC,
	[Correo] ASC,
	[Telefono] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_TipoIdentificacion]    Script Date: 29/10/2016 11:57:07 a. m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_TipoIdentificacion] ON [dbo].[TipoIdentificacion]
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Persona]  WITH CHECK ADD  CONSTRAINT [FK_Persona_TipoIdentificacion] FOREIGN KEY([IdTipoIdentificacion])
REFERENCES [dbo].[TipoIdentificacion] ([IdTipoIdentificacion])
GO
ALTER TABLE [dbo].[Persona] CHECK CONSTRAINT [FK_Persona_TipoIdentificacion]
GO
