USE [Registration_Users]
GO

/****** Object:  Table [dbo].[Users]    Script Date: 13.05.2021 0:33:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Users](
	[userID] [int] IDENTITY(1,1) NOT NULL,
	[passwrd] [nvarchar](max) NOT NULL,
	[IDRole] [int] NOT NULL,
	[IDPerson] [int] NOT NULL,
	[phoneNumber] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Person] FOREIGN KEY([IDPerson])
REFERENCES [dbo].[Person] ([IDPerson])
GO

ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Person]
GO

ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Role] FOREIGN KEY([IDRole])
REFERENCES [dbo].[Role] ([IdRole])
GO

ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Role]
GO


