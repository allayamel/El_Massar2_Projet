USE [El_Massardb2]
GO
/****** Object:  Table [dbo].[agence]    Script Date: 28/02/2022 14:19:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[agence](
	[Id_agence] [int] NOT NULL,
	[nom] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_agence] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[categorie_chambre]    Script Date: 28/02/2022 14:19:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categorie_chambre](
	[CodeCategorie] [int] NOT NULL,
	[description] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[CodeCategorie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[categorie_hotel]    Script Date: 28/02/2022 14:19:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categorie_hotel](
	[NombreEtoile] [int] NOT NULL,
	[caracteristique] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[NombreEtoile] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chambre]    Script Date: 28/02/2022 14:19:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chambre](
	[NumeroChambre] [int] NOT NULL,
	[NumeroTel] [varchar](100) NULL,
	[code_unique] [int] NOT NULL,
	[CodeCategorie] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[NumeroChambre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[client]    Script Date: 28/02/2022 14:19:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[client](
	[Id_client] [int] NOT NULL,
	[nom] [varchar](100) NULL,
	[prenom] [varchar](100) NULL,
	[adresse] [varchar](100) NULL,
	[ville] [varchar](100) NULL,
	[code_postal] [varchar](100) NULL,
	[pays] [varchar](100) NULL,
	[tel] [varchar](100) NULL,
	[email] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_client] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[consommation]    Script Date: 28/02/2022 14:19:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[consommation](
	[NumeroConso] [int] NOT NULL,
	[DateConso] [datetime] NULL,
	[HeureConso] [time](7) NULL,
	[code_unique] [int] NOT NULL,
	[Id_client] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[NumeroConso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[facture]    Script Date: 28/02/2022 14:19:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[facture](
	[Id_facture] [int] NOT NULL,
	[prix] [float] NULL,
	[quantite] [int] NULL,
	[code_unique] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_facture] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hotel]    Script Date: 28/02/2022 14:19:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hotel](
	[code_unique] [int] NOT NULL,
	[nom] [varchar](100) NULL,
	[adresse] [varchar](100) NULL,
	[CPH] [varchar](100) NULL,
	[tel] [varchar](100) NULL,
	[NombreEtoile] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[code_unique] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[prestation]    Script Date: 28/02/2022 14:19:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[prestation](
	[CodePrest] [int] NOT NULL,
	[designation] [varchar](100) NULL,
	[code_unique] [int] NOT NULL,
	[Id_client] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CodePrest] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reservation]    Script Date: 28/02/2022 14:19:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reservation](
	[NumeroReservation] [int] NOT NULL,
	[DateDebut] [datetime] NULL,
	[DateFin] [datetime] NULL,
	[DatePayeArrhes] [datetime] NULL,
	[MontantArrhes] [float] NULL,
	[Id_agence] [int] NOT NULL,
	[Id_client] [int] NOT NULL,
	[NumeroChambre] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[NumeroReservation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[chambre]  WITH CHECK ADD FOREIGN KEY([code_unique])
REFERENCES [dbo].[hotel] ([code_unique])
GO
ALTER TABLE [dbo].[chambre]  WITH CHECK ADD FOREIGN KEY([CodeCategorie])
REFERENCES [dbo].[categorie_chambre] ([CodeCategorie])
GO
ALTER TABLE [dbo].[consommation]  WITH CHECK ADD FOREIGN KEY([code_unique])
REFERENCES [dbo].[hotel] ([code_unique])
GO
ALTER TABLE [dbo].[consommation]  WITH CHECK ADD FOREIGN KEY([Id_client])
REFERENCES [dbo].[client] ([Id_client])
GO
ALTER TABLE [dbo].[facture]  WITH CHECK ADD FOREIGN KEY([code_unique])
REFERENCES [dbo].[hotel] ([code_unique])
GO
ALTER TABLE [dbo].[hotel]  WITH CHECK ADD FOREIGN KEY([NombreEtoile])
REFERENCES [dbo].[categorie_hotel] ([NombreEtoile])
GO
ALTER TABLE [dbo].[prestation]  WITH CHECK ADD FOREIGN KEY([code_unique])
REFERENCES [dbo].[hotel] ([code_unique])
GO
ALTER TABLE [dbo].[prestation]  WITH CHECK ADD FOREIGN KEY([Id_client])
REFERENCES [dbo].[client] ([Id_client])
GO
ALTER TABLE [dbo].[reservation]  WITH CHECK ADD FOREIGN KEY([Id_agence])
REFERENCES [dbo].[agence] ([Id_agence])
GO
ALTER TABLE [dbo].[reservation]  WITH CHECK ADD FOREIGN KEY([Id_client])
REFERENCES [dbo].[client] ([Id_client])
GO
ALTER TABLE [dbo].[reservation]  WITH CHECK ADD FOREIGN KEY([NumeroChambre])
REFERENCES [dbo].[chambre] ([NumeroChambre])
GO
