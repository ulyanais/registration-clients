USE [Registration_Users]
GO

/****** Object:  Table [dbo].[Person]    Script Date: 13.05.2021 0:31:36 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Person](
	[IDPerson] [int] IDENTITY(111111,1) NOT NULL,
	[roleName] [nvarchar](max) NULL,
	[name] [varchar](max) NOT NULL,
	[surName] [varchar](max) NOT NULL,
	[patronymic] [varchar](max) NOT NULL,
	[Section] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Клиенты] PRIMARY KEY CLUSTERED 
(
	[IDPerson] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


