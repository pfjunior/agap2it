CREATE DATABASE AgapTest;
GO

USE AgapTest;
Go

/****** Object: Table [dbo].[Zona]  ******/
CREATE TABLE [dbo].[Zona](
[Id] [uniqueidentifier] NOT NULL,
[Descricao] [nvarchar](25) NOT NULL,
CONSTRAINT [PK_Zona] PRIMARY KEY CLUSTERED
(
[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object: Table [dbo].[Casas] Script Date: 23/12/2021 20:48:26 ******/
CREATE TABLE [dbo].[Casas](
[Id] [uniqueidentifier] NOT NULL,
[Estado] [int] NULL,
[EdificioId] [uniqueidentifier] NULL,
CONSTRAINT [PK_casas] PRIMARY KEY CLUSTERED
(
[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object: Table [dbo].[Edificios] Script Date: 23/12/2021 20:48:26 ******/
CREATE TABLE [dbo].[Edificios](
[Id] [uniqueidentifier] NOT NULL,
[Estado] [int] NULL,
[E1100] [bit] NULL,
[E1200] [bit] NULL,
[Numero] [nvarchar](3) NULL,
[ZonaId] [uniqueidentifier] NULL,
CONSTRAINT [PK_Edificios] PRIMARY KEY CLUSTERED
(
[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object: Table [dbo].[Estado] Script Date: 23/12/2021 20:48:26 ******/
CREATE TABLE [dbo].[Estado](
[Id] [int] NOT NULL IDENTITY(1,1),
[Descricao] [nvarchar](1) NOT NULL,
CONSTRAINT [PK_Estados] PRIMARY KEY CLUSTERED
(
[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object: Table [dbo].[Projecto]  ******/
CREATE TABLE [dbo].[Projecto](
[Id] [uniqueidentifier] NOT NULL,
[Descricao] [nvarchar](25) NOT NULL,
CONSTRAINT [PK_Projecto] PRIMARY KEY CLUSTERED
(
[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object: Table [dbo].[Grupos] Script Date: 23/12/2021 20:48:26 ******/
CREATE TABLE [dbo].[Grupos](
[Id] [uniqueidentifier] NOT NULL,
[PerfilId] [int] NOT NULL,
[ZonaId] [uniqueidentifier] NULL,
[ProjectoId] [uniqueidentifier] NULL,
CONSTRAINT [PK_Grupos] PRIMARY KEY CLUSTERED
(
[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object: Table [dbo].[MensagemMoradores] Script Date: 23/12/2021 20:48:26 ******/
CREATE TABLE [dbo].[MensagemMoradores](
[MensagemId] [uniqueidentifier] NOT NULL,
[MoradorId] [uniqueidentifier] NOT NULL,
[ZonaId] [uniqueidentifier] NULL
) ON [PRIMARY]
GO

/****** Object: Table [dbo].[Mensagens] Script Date: 23/12/2021 20:48:26 ******/
CREATE TABLE [dbo].[Mensagens](
[Id] [uniqueidentifier] NOT NULL,
[Texto] [varchar](50) NOT NULL,
[ProjectoId] [uniqueidentifier] NULL,
CONSTRAINT [PK_Mensagens] PRIMARY KEY CLUSTERED
(
[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object: Table [dbo].[Moradores] Script Date: 23/12/2021 20:48:26 ******/
CREATE TABLE [dbo].[Moradores](
[Id] [uniqueidentifier] NOT NULL,
[nome] [varchar](100) NOT NULL,
CONSTRAINT [PK_Moradores] PRIMARY KEY CLUSTERED
(
[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object: Table [dbo].[Perfies] Script Date: 23/12/2021 20:48:26 ******/
CREATE TABLE [dbo].[Perfies](
[Id] [int] NOT NULL IDENTITY(1,1),
[Descricao] [nvarchar](1) NOT NULL,
CONSTRAINT [PK_Perfies] PRIMARY KEY CLUSTERED
(
[Id] ASC 
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Casas] WITH CHECK ADD CONSTRAINT [FK_Casas_Edificios] FOREIGN KEY([EdificioId])
REFERENCES [dbo].[Edificios] ([Id])
GO
ALTER TABLE [dbo].[Casas] CHECK CONSTRAINT [FK_Casas_Edificios]
GO
ALTER TABLE [dbo].[Casas] WITH CHECK ADD CONSTRAINT [FK_Casas_Estado] FOREIGN KEY([Estado])
REFERENCES [dbo].[Estado] ([Id])
GO
ALTER TABLE [dbo].[Casas] CHECK CONSTRAINT [FK_Casas_Estado]
GO
ALTER TABLE [dbo].[Edificios] WITH CHECK ADD CONSTRAINT [FK_Edificios_Estado] FOREIGN KEY([Estado])
REFERENCES [dbo].[Estado] ([Id])
GO
ALTER TABLE [dbo].[Edificios] CHECK CONSTRAINT [FK_Edificios_Estado]
GO
ALTER TABLE [dbo].[Edificios] WITH CHECK ADD CONSTRAINT [FK_Edificios_Zona] FOREIGN KEY([ZonaId])
REFERENCES [dbo].[Zona]([Id])
GO
ALTER TABLE [dbo].[Edificios] CHECK CONSTRAINT [FK_Edificios_Zona]
GO
ALTER TABLE [dbo].[Grupos] WITH CHECK ADD CONSTRAINT [FK_Grupos_Perfies] FOREIGN KEY([PerfilId])
REFERENCES [dbo].[Perfies] ([Id])
GO
ALTER TABLE [dbo].[Grupos] CHECK CONSTRAINT [FK_Grupos_Perfies]
GO
ALTER TABLE [dbo].[Grupos] WITH CHECK ADD CONSTRAINT [FK_Grupos_Projecto] FOREIGN KEY([ProjectoId])
REFERENCES [dbo].[Projecto]([Id])
GO
ALTER TABLE [dbo].[Grupos] CHECK CONSTRAINT [FK_Grupos_Projecto]
GO
ALTER TABLE [dbo].[Grupos] WITH CHECK ADD CONSTRAINT [FK_Grupos_Zona] FOREIGN KEY([ZonaId])
REFERENCES [dbo].[Zona]([Id])
GO
ALTER TABLE [dbo].[Grupos] CHECK CONSTRAINT [FK_Grupos_Zona]
GO
ALTER TABLE [dbo].[Mensagens] WITH CHECK ADD CONSTRAINT [FK_Mensagens_Projecto] FOREIGN KEY([ProjectoId])
REFERENCES [dbo].[Projecto]([Id])
GO
ALTER TABLE [dbo].[Mensagens] CHECK CONSTRAINT [FK_Mensagens_Projecto]
GO
ALTER TABLE [dbo].[MensagemMoradores] WITH CHECK ADD CONSTRAINT [FK_MensagemMoradores_Mensagens] FOREIGN KEY([MensagemId])
REFERENCES [dbo].[Mensagens] ([Id])
GO
ALTER TABLE [dbo].[MensagemMoradores] CHECK CONSTRAINT [FK_MensagemMoradores_Mensagens]
GO
ALTER TABLE [dbo].[MensagemMoradores] WITH CHECK ADD CONSTRAINT [FK_MensagemMoradores_Moradores] FOREIGN KEY([MoradorId])
REFERENCES [dbo].[Moradores] ([Id])
GO
ALTER TABLE [dbo].[MensagemMoradores] CHECK CONSTRAINT [FK_MensagemMoradores_Moradores]
GO
ALTER TABLE [dbo].[MensagemMoradores] WITH CHECK ADD CONSTRAINT [FK_MensagemMoradores_Zona] FOREIGN KEY([ZonaId])
REFERENCES [dbo].[Zona]([Id])
GO
ALTER TABLE [dbo].[MensagemMoradores] CHECK CONSTRAINT [FK_MensagemMoradores_Zona]
GO
