USE [Registration_Users]
GO

/****** Object:  Table [dbo].[schedule_training]    Script Date: 13.05.2021 0:32:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[schedule_training](
	[IDShedule] [int] IDENTITY(222222,1) NOT NULL,
	[section] [varchar](max) NOT NULL,
	[schedule] [datetime2](7) NOT NULL,
	[trainer] [varchar](max) NOT NULL,
 CONSTRAINT [PK_schedule_training] PRIMARY KEY CLUSTERED 
(
	[IDShedule] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


