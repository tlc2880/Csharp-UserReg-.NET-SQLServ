USE [UserRegistrationDB2]
GO
/****** Object:  Table [dbo].[tblUser]    Script Date: 11-Jul-2015 1:36:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblUser]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblUser](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[Contact] [varchar](50) NULL,
	[Address] [varchar](250) NULL,
	[Username] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
 CONSTRAINT [PK_tblUser] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[UserAdd]    Script Date: 11-Jul-2015 1:36:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserAdd]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[UserAdd] AS' 
END
GO
ALTER PROC [dbo].[UserAdd]
@FirstName varchar(50),
@LastName varchar(50),
@Contact varchar(50),
@Address varchar(250),
@Username varchar(50),
@Password varchar(50)
AS
	INSERT INTO tblUser(FirstName,LastName,Contact,Address,Username,Password)
	VALUES (@FirstName,@LastName,@Contact,@Address,@Username,@Password)

GO
USE [master]
GO
ALTER DATABASE [UserRegistrationDB2] SET  READ_WRITE 
GO
