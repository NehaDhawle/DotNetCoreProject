USE [master]
GO
/****** Object:  Database [Softpos]    Script Date: 13-05-2022 16:58:52 ******/
CREATE DATABASE [Softpos]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Softpos', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQL2014\MSSQL\DATA\Softpos.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Softpos_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQL2014\MSSQL\DATA\Softpos_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Softpos] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Softpos].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Softpos] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Softpos] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Softpos] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Softpos] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Softpos] SET ARITHABORT OFF 
GO
ALTER DATABASE [Softpos] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Softpos] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Softpos] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Softpos] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Softpos] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Softpos] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Softpos] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Softpos] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Softpos] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Softpos] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Softpos] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Softpos] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Softpos] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Softpos] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Softpos] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Softpos] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Softpos] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Softpos] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Softpos] SET  MULTI_USER 
GO
ALTER DATABASE [Softpos] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Softpos] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Softpos] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Softpos] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Softpos] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Softpos', N'ON'
GO
USE [Softpos]
GO
/****** Object:  User [KCSITGLOBAL\sachin.bhalerao]    Script Date: 13-05-2022 16:58:55 ******/
CREATE USER [KCSITGLOBAL\sachin.bhalerao] FOR LOGIN [KCSITGLOBAL\sachin.bhalerao] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [KCSITGLOBAL\rakesh.jadhav]    Script Date: 13-05-2022 16:58:55 ******/
CREATE USER [KCSITGLOBAL\rakesh.jadhav] FOR LOGIN [KCSITGLOBAL\rakesh.jadhav] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [KCSITGLOBAL\neha.dhawle]    Script Date: 13-05-2022 16:58:55 ******/
CREATE USER [KCSITGLOBAL\neha.dhawle] FOR LOGIN [KCSITGLOBAL\neha.dhawle] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [KCSITGLOBAL\iisadmin]    Script Date: 13-05-2022 16:58:55 ******/
CREATE USER [KCSITGLOBAL\iisadmin] FOR LOGIN [KCSITGLOBAL\iisadmin] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [KCSITGLOBAL\dhruvin.lad]    Script Date: 13-05-2022 16:58:55 ******/
CREATE USER [KCSITGLOBAL\dhruvin.lad] FOR LOGIN [KCSITGLOBAL\dhruvin.lad] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [KCSITGLOBAL\chintan.thaker]    Script Date: 13-05-2022 16:58:55 ******/
CREATE USER [KCSITGLOBAL\chintan.thaker] FOR LOGIN [KCSITGLOBAL\chintan.thaker] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [KCSITGLOBAL\sachin.bhalerao]
GO
ALTER ROLE [db_owner] ADD MEMBER [KCSITGLOBAL\rakesh.jadhav]
GO
ALTER ROLE [db_owner] ADD MEMBER [KCSITGLOBAL\neha.dhawle]
GO
ALTER ROLE [db_owner] ADD MEMBER [KCSITGLOBAL\iisadmin]
GO
ALTER ROLE [db_owner] ADD MEMBER [KCSITGLOBAL\dhruvin.lad]
GO
ALTER ROLE [db_owner] ADD MEMBER [KCSITGLOBAL\chintan.thaker]
GO
/****** Object:  Table [dbo].[tblCryptoPayment]    Script Date: 13-05-2022 16:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCryptoPayment](
	[CryptoID] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](200) NULL,
	[CreatedOn] [nvarchar](200) NULL,
	[CryptoAmount] [nvarchar](200) NULL,
	[CryptoAmountRemainingToPay] [nvarchar](200) NULL,
	[CryptoCurrencyRate] [nvarchar](200) NULL,
	[Currency] [nvarchar](200) NULL,
	[CurrencyReceived] [nvarchar](200) NULL,
	[Nonce] [nvarchar](200) NULL,
	[OrderID] [nvarchar](200) NULL,
	[ReceivedCryptoAmount] [nvarchar](200) NULL,
	[ReceivedAmount] [nvarchar](200) NULL,
	[ShopID] [nvarchar](200) NULL,
	[Signature] [nvarchar](200) NULL,
	[Status] [nvarchar](200) NULL,
	[Timestamp] [nvarchar](200) NULL,
	[Type] [nvarchar](200) NULL,
	[UpdatedOn] [nvarchar](200) NULL,
	[MerchantID] [bigint] NULL,
	[XRPTag] [nvarchar](200) NULL,
	[CryptoDestinationTag] [nvarchar](200) NULL,
 CONSTRAINT [PK_tblCryptoPayment] PRIMARY KEY CLUSTERED 
(
	[CryptoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCurrency]    Script Date: 13-05-2022 16:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCurrency](
	[CurrencyID] [int] IDENTITY(1,1) NOT NULL,
	[CurrencyType] [nvarchar](3) NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[CurrencyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblHelp]    Script Date: 13-05-2022 16:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblHelp](
	[TicketId] [int] IDENTITY(1,1) NOT NULL,
	[MerchantId] [int] NOT NULL,
	[Subject] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[CreatedOn] [datetime] NULL,
 CONSTRAINT [PK_tblHelp] PRIMARY KEY CLUSTERED 
(
	[TicketId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPaymentHistory]    Script Date: 13-05-2022 16:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPaymentHistory](
	[PaymentId] [int] IDENTITY(1,1) NOT NULL,
	[TransactionID] [nvarchar](100) NOT NULL,
	[MerchantID] [bigint] NULL,
	[Amount] [float] NOT NULL,
	[ClientName] [nvarchar](100) NULL,
	[CardType] [nvarchar](100) NULL,
	[CardReadType] [nvarchar](100) NULL,
	[CardNo] [nvarchar](100) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NULL,
	[PaymentStatus] [varchar](50) NULL,
	[PaymentType] [nvarchar](20) NULL,
 CONSTRAINT [PK_tblPaymentHistory] PRIMARY KEY CLUSTERED 
(
	[PaymentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPaymentRefund]    Script Date: 13-05-2022 16:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPaymentRefund](
	[RefundId] [int] IDENTITY(1,1) NOT NULL,
	[TransactionId] [nvarchar](100) NOT NULL,
	[MerchantId] [int] NOT NULL,
	[CardNo] [nvarchar](100) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[PaymentId] [int] NOT NULL,
 CONSTRAINT [PK_tblPaymentRefund] PRIMARY KEY CLUSTERED 
(
	[RefundId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTemporary]    Script Date: 13-05-2022 16:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTemporary](
	[TemporaryId] [int] IDENTITY(1,1) NOT NULL,
	[Result] [nvarchar](max) NULL,
 CONSTRAINT [PK_tblTemporary] PRIMARY KEY CLUSTERED 
(
	[TemporaryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbltest]    Script Date: 13-05-2022 16:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbltest](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](20) NOT NULL,
	[PaymentType] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUserDetails]    Script Date: 13-05-2022 16:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUserDetails](
	[MerchantID] [bigint] IDENTITY(10000,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[EmailID] [nvarchar](150) NULL,
	[MobileNumber] [nvarchar](30) NULL,
	[Password] [nvarchar](50) NULL,
	[IsApproved] [bit] NULL,
	[IsPasswordChange] [bit] NULL,
	[UpdatedDate] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
	[EmailNotification] [bit] NULL,
	[TextNotification] [bit] NULL,
	[IsAdmin] [bit] NULL,
	[CurrencyType] [nvarchar](3) NULL,
	[DeviceID] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MerchantID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[dashboard]    Script Date: 13-05-2022 16:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[dashboard]

AS
BEGIN
	SELECT SUM(IIF(PaymentType = 'NFC', 1, 0)) AS NFC,
	   SUM(IIF(PaymentType = 'Crypto', 1, 0)) AS Crypto,
	   SUM(IIF(PaymentStatus='success', 1, 0)) AS PaymentComplited,
	   SUM(IIF(PaymentStatus='Pending', 1, 0)) AS PaymentPending,
	   SUM(Amount) AS Totalamount,
	   COUNT(TransactionID) AS TotalTransaction,
	   (SELECT COUNT(MerchantID) FROM tblUserDetails WHERE IsAdmin = 0) AS TotalMerchnat
	   FROM [dbo].[tblPaymentHistory]  WHERE MerchantID = 10001
	   
select sum(Amount) as TotalTransactionPerday,cast(CreatedOn as date) as WeekDate --,DATENAME(WEEKDAY,CreatedOn) AS WNAME
from [dbo].[tblPaymentHistory]
where CreatedOn >= dateadd(day, 1-datepart(dw, getdate()), CONVERT(date,getdate())) AND
CreatedOn < dateadd(day, 8-datepart(dw, getdate()), CONVERT(date,getdate())) AND
MerchantID=10003
group by cast(CreatedOn as date),DATENAME(WEEKDAY,CreatedOn)
ORDER BY DATENAME(WEEKDAY,CreatedOn)

END
GO
/****** Object:  StoredProcedure [dbo].[spAdminLogin]    Script Date: 13-05-2022 16:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================  
-- Author:  Dhruvin Lad(KCSITGLOBAL)  
-- Create date: 28-April-2022  
-- Description: Will login if admin  
-- =============================================  
CREATE PROCEDURE [dbo].[spAdminLogin]  
@EmailID NVARCHAR(150) ,  
@Password NVARCHAR(50)  
AS  
BEGIN  
 SELECT   
     tblUserDetails.EmailID,  
     tblUserDetails.FirstName,  
     tblUserDetails.LastName,  
     tblUserDetails.MerchantID,  
     tblUserDetails.IsApproved,  
     tblUserDetails.MobileNumber,  
     tblUserDetails.IsPasswordChange,  
     tblUserDetails.Password,  
     tblUserDetails.CreatedDate,  
     tblUserDetails.UpdatedDate,
	 tblUserDetails.EmailNotification,
	 tblUserDetails.TextNotification,
	 tblUserDetails.IsAdmin
  FROM   
     tblUserDetails  
  where  
     EmailID=@EmailID AND [Password]=@Password AND IsApproved=1  AND IsAdmin = 1
END  
GO
/****** Object:  StoredProcedure [dbo].[spApproveMerchant]    Script Date: 13-05-2022 16:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================      
-- Author:  Dhruvin Lad(KCSITGLOBAL)      
-- Create date: 29-April-2022      
-- Description: This api will approve the merchant
-- exec spApproveMerchant '10003',1 
-- =============================================      
CREATE PROCEDURE [dbo].[spApproveMerchant]
@MerchantID NVARCHAR(150),
@IsApproved BIT
AS      
BEGIN         
  UPDATE     
   tblUserDetails     
  SET     
   IsApproved = @IsApproved    
  WHERE     
   MerchantID=@MerchantID   
  select @@ROWCOUNT
END      

GO
/****** Object:  StoredProcedure [dbo].[spChangePassword]    Script Date: 13-05-2022 16:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================      
-- Author:  Dhruvin Lad(KCSITGLOBAL)      
-- Create date: 15-April-2022      
-- Description: Will give change the password      
-- exec spChangePassword '10000','1234','9046'    
-- =============================================      
CREATE PROCEDURE [dbo].[spChangePassword]      
@MerchantID NVARCHAR(150) ,      
@Password NVARCHAR(50)  ,    
@NewPassword NVARCHAR(150)    
AS      
BEGIN      
IF EXISTS(SELECT 1 FROM tblUserDetails WHERE MerchantID=@MerchantID AND [Password]=@Password)    
 BEGIN    
  UPDATE     
   tblUserDetails     
  SET     
   [Password]=@NewPassword,IsPasswordChange=1,UpdatedDate=GETDATE()    
  WHERE     
   MerchantID=@MerchantID  
  SELECT       
    tblUserDetails.EmailID,      
    tblUserDetails.FirstName,      
    tblUserDetails.LastName,      
    tblUserDetails.MerchantID,      
    tblUserDetails.IsApproved,      
    tblUserDetails.MobileNumber,      
    tblUserDetails.IsPasswordChange,      
    tblUserDetails.Password,      
    tblUserDetails.CreatedDate,      
    tblUserDetails.UpdatedDate,    
    tblUserDetails.EmailNotification,    
    tblUserDetails.TextNotification,
	tblUserDetails.DeviceId,
	tblUserDetails.CurrencyType      
   FROM       
    tblUserDetails    
   WHERE     
	MerchantID=@MerchantID  
 END    
END      
GO
/****** Object:  StoredProcedure [dbo].[spCheckUserExist]    Script Date: 13-05-2022 16:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================  
-- Author:  Dhruvin Lad(KCSITGLOBAL)  
-- Create date: 12-April-2022  
-- Description: Will give user detail if it exist and is approved  
--exec spCheckUserExist 'abbababa'
-- =============================================  
CREATE PROCEDURE [dbo].[spCheckUserExist]  
@EmailID NVARCHAR(150) 
AS  
BEGIN
SELECT CASE WHEN EXISTS (
    SELECT 
			1 
	FROM 
			tblUserDetails 
	WHERE 
			EmailID=@EmailID
)
THEN CAST(1 AS BIT)
ELSE CAST(0 AS BIT) END
END  
GO
/****** Object:  StoredProcedure [dbo].[spCheckUserExist1]    Script Date: 13-05-2022 16:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================      
-- Author:  Dhruvin Lad(KCSITGLOBAL)      
-- Create date: 12-April-2022      
-- Description: Will give user detail if it exist and is approved      
--exec spCheckUserExist1 'suraj.punetha@kcsitglobal.com','1234' -- check password  
--exec spCheckUserExist1 'dhruvin.lad@kcsitglobal.com',null -- check user  
-- =============================================      
CREATE PROCEDURE [dbo].[spCheckUserExist1]      
@EmailID NVARCHAR(150),  
@Password NVARCHAR(50) = NULL   
AS      
BEGIN   
if @Password IS NULL  
 BEGIN  
  SELECT CASE WHEN EXISTS (    
  SELECT     
     1     
   FROM     
     tblUserDetails     
   WHERE     
     EmailID=@EmailID    
  )    
  THEN CAST(1 AS BIT)    
  ELSE CAST(0 AS BIT) END   
 END   
ELSE  
 BEGIN  
  SELECT CASE WHEN EXISTS (    
   SELECT     
     1     
   FROM     
     tblUserDetails     
   WHERE     
     EmailID=@EmailID  
   AND   
     [Password]=@Password  
   AND   
     IsApproved=1      
  )    
  THEN CAST(1 AS BIT)    
  ELSE CAST(0 AS BIT) END   
 END  
END 
GO
/****** Object:  StoredProcedure [dbo].[spDashboardData]    Script Date: 13-05-2022 16:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================        
-- Author:  Dhruvin Lad(KCSITGLOBAL)        
-- Create date: 5-MAY-2022        
-- Description: DashBoard Data will returned into two result sets       
-- exec spDashboardData 10003     
-- =============================================  
CREATE PROCEDURE [dbo].[spDashboardData]
@MerchantID BIGINT = 0
AS
BEGIN
	IF @MerchantID = 0
		BEGIN
			SELECT 
				   SUM(IIF(PaymentType = 'NFC', 1, 0)) AS NFC,
				   SUM(IIF(PaymentType = 'Crypto', 1, 0)) AS Crypto,
				   SUM(IIF(PaymentStatus='success', 1, 0)) AS PaymentComplited,
				   SUM(IIF(PaymentStatus='Pending', 1, 0)) AS PaymentPending,
				   SUM(Amount) AS TotalAmount,
				   COUNT(TransactionID) AS TotalTransaction,
				   (SELECT COUNT(MerchantID) FROM tblUserDetails WHERE IsAdmin = 0) AS TotalMerchnat
			FROM 
				   tblPaymentHistory 
	   
			SELECT 
				   SUM(Amount) AS TotalTransactionAmoutPerDay,cast(CreatedOn AS DATE) AS WeekDate
			FROM 
				   tblPaymentHistory
			WHERE 
				   CreatedOn >= DATEADD(DAY, 1-DATEPART(dw, GETDATE()), CONVERT(DATE,GETDATE())) AND
				   CreatedOn < DATEADD(DAY, 8-DATEPART(dw, GETDATE()), CONVERT(DATE,GETDATE())) 
			GROUP BY 
				   CAST(CreatedOn AS DATE),DATENAME(WEEKDAY,CreatedOn)
			ORDER BY 
				   DATENAME(WEEKDAY,CreatedOn)
		END
	ELSE
		BEGIN
			SELECT 
				   SUM(IIF(PaymentType = 'NFC', 1, 0)) AS NFC,
				   SUM(IIF(PaymentType = 'Crypto', 1, 0)) AS Crypto,
				   SUM(IIF(PaymentStatus='success', 1, 0)) AS PaymentComplited,
				   SUM(IIF(PaymentStatus='Pending', 1, 0)) AS PaymentPending,
				   SUM(Amount) AS TotalAmount,
				   COUNT(TransactionID) AS TotalTransaction,
				   (SELECT COUNT(MerchantID) FROM tblUserDetails WHERE IsAdmin = 0) AS TotalMerchnat
			FROM 
				   tblPaymentHistory
		    WHERE 
				   MerchantID = @MerchantID 
	   
			SELECT 
				   SUM(Amount) AS TotalTransactionAmoutPerDay,cast(CreatedOn AS DATE) AS WeekDate
			FROM 
				   tblPaymentHistory
			WHERE 
				   CreatedOn >= DATEADD(DAY, 1-DATEPART(dw, GETDATE()), CONVERT(DATE,GETDATE())) AND
				   CreatedOn < DATEADD(DAY, 8-DATEPART(dw, GETDATE()), CONVERT(DATE,GETDATE())) AND
				   MerchantID=@MerchantID 
			GROUP BY 
				   CAST(CreatedOn AS DATE),DATENAME(WEEKDAY,CreatedOn)
			ORDER BY 
				   DATENAME(WEEKDAY,CreatedOn)
		END
END
GO
/****** Object:  StoredProcedure [dbo].[spForgotPassword]    Script Date: 13-05-2022 16:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Dhruvin Lad(KCSITGLOBAL)
-- Create date: 13-April-2022 
-- Updated date: 15-April-2022
-- Description:	Will give user detail for forgot password
-- =============================================
CREATE PROCEDURE [dbo].[spForgotPassword]
@EmailID NVARCHAR(150) 
AS
BEGIN
	SELECT 
		   tblUserDetails.EmailID,
		   tblUserDetails.FirstName,
		   tblUserDetails.LastName,
		   tblUserDetails.MerchantID,
		   tblUserDetails.IsApproved,
		   tblUserDetails.MobileNumber,
		   tblUserDetails.IsPasswordChange,
		   tblUserDetails.Password,
		   tblUserDetails.CreatedDate,
		   tblUserDetails.UpdatedDate
	 FROM 
		   tblUserDetails
	 where
		   EmailID=@EmailID and IsApproved = 1
END
GO
/****** Object:  StoredProcedure [dbo].[spGetDeviceId]    Script Date: 13-05-2022 16:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================        
-- Author:  Dhruvin Lad(KCSITGLOBAL)        
-- Create date: 9-MAY-2022        
-- Description: Will GetDevice        
-- exec spGetDeviceId 'WVTJOVU5DBA6ZPL1A9RKO2TS3AXJTI'
-- =============================================    
  
CREATE PROCEDURE [dbo].[spGetDeviceId]  
 @OrderID nvarchar(200)  
AS  
BEGIN  

 SELECT   
	  tblUserDetails.EmailID,  
	  tblUserDetails.FirstName,  
	  tblUserDetails.LastName,  
	  tblUserDetails.MerchantID,  
	  tblUserDetails.IsApproved,  
	  tblUserDetails.MobileNumber,  
	  tblUserDetails.IsPasswordChange,  
	  tblUserDetails.Password,  
	  tblUserDetails.CreatedDate,  
	  tblUserDetails.UpdatedDate,  
	  tblUserDetails.EmailNotification,  
	  tblUserDetails.TextNotification,  
	  tblUserDetails.DeviceID  
 FROM 
	  tblUserDetails 
 WHERE 
	  MerchantID IN(SELECT MERCHANTID FROM tblCryptoPayment WHERE OrderID=@OrderID)  
END  
GO
/****** Object:  StoredProcedure [dbo].[spGetPaymentHistory]    Script Date: 13-05-2022 16:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================        
-- Author:  Dhruvin Lad(KCSITGLOBAL)        
-- Create date: 20-April-2022        
-- Description: Will give get the history from the merchantID  and also filter according to today last weaek and last month Stop of the day is also included      
-- exec spGetPaymentHistory 'all',10003     
-- =============================================        
CREATE PROCEDURE [dbo].[spGetPaymentHistory]    
@FilterType varchar(50),
@MerchantID BIGINT = 0   
AS        
BEGIN 
IF @FilterType = 'all'
  BEGIN       
	IF @MerchantID = 0
	BEGIN
		SELECT       
		   tblPaymentHistory.PaymentId,      
		   tblPaymentHistory.TransactionID,      
		   tblPaymentHistory.MerchantID,      
		   tblPaymentHistory.Amount,      
		   tblPaymentHistory.ClientName,      
		   tblPaymentHistory.CardType,      
		   tblPaymentHistory.CardReadType,      
		   tblPaymentHistory.CardNo,      
		   tblPaymentHistory.CreatedOn,      
		   tblPaymentHistory.ModifiedOn,      
		   tblPaymentHistory.PaymentStatus,
		   tblPaymentHistory.PaymentType
	   FROM      
			tblPaymentHistory
	END
	ELSE
	BEGIN         
		SELECT       
		   tblPaymentHistory.PaymentId,      
		   tblPaymentHistory.TransactionID,      
		   tblPaymentHistory.MerchantID,      
		   tblPaymentHistory.Amount,      
		   tblPaymentHistory.ClientName,      
		   tblPaymentHistory.CardType,      
		   tblPaymentHistory.CardReadType,      
		   tblPaymentHistory.CardNo,      
		   tblPaymentHistory.CreatedOn,      
		   tblPaymentHistory.ModifiedOn,      
		   tblPaymentHistory.PaymentStatus,
		   tblPaymentHistory.PaymentType      
		   FROM      
		   tblPaymentHistory      
		   WHERE       
		   MerchantID=@MerchantID   
	END 
 END 
 ELSE IF @FilterType = 'today'
 BEGIN 
	IF @MerchantID = 0
	BEGIN
		SELECT       
		   tblPaymentHistory.PaymentId,      
		   tblPaymentHistory.TransactionID,      
		   tblPaymentHistory.MerchantID,      
		   tblPaymentHistory.Amount,      
		   tblPaymentHistory.ClientName,      
		   tblPaymentHistory.CardType,      
		   tblPaymentHistory.CardReadType,      
		   tblPaymentHistory.CardNo,      
		   tblPaymentHistory.CreatedOn,      
		   tblPaymentHistory.ModifiedOn,      
		   tblPaymentHistory.PaymentStatus,
		   tblPaymentHistory.PaymentType      
	   FROM      
			tblPaymentHistory
	   WHERE
			CreatedOn > (select DATEADD(DAY, -1, GETDATE()))
	END
	ELSE
	BEGIN 
		SELECT     
		  tblPaymentHistory.PaymentId,    
		  tblPaymentHistory.TransactionID,    
		  tblPaymentHistory.MerchantID,    
		  tblPaymentHistory.Amount,    
		  tblPaymentHistory.ClientName,    
		  tblPaymentHistory.CardType,    
		  tblPaymentHistory.CardReadType,    
		  tblPaymentHistory.CardNo,    
		  tblPaymentHistory.CreatedOn,    
		  tblPaymentHistory.ModifiedOn,    
		  tblPaymentHistory.PaymentStatus,
		  tblPaymentHistory.PaymentType    
		  FROM    
		  tblPaymentHistory    
		  WHERE     
			MerchantID=@MerchantID 
		  AND
			CreatedOn > (select DATEADD(DAY, -1, GETDATE()))
	END
 END   
 ELSE IF @FilterType = 'lastWeek'
 BEGIN
	 IF @MerchantID = 0
		BEGIN
			SELECT       
			   tblPaymentHistory.PaymentId,      
			   tblPaymentHistory.TransactionID,      
			   tblPaymentHistory.MerchantID,      
			   tblPaymentHistory.Amount,      
			   tblPaymentHistory.ClientName,      
			   tblPaymentHistory.CardType,      
			   tblPaymentHistory.CardReadType,      
			   tblPaymentHistory.CardNo,      
			   tblPaymentHistory.CreatedOn,      
			   tblPaymentHistory.ModifiedOn,      
			   tblPaymentHistory.PaymentStatus,
			   tblPaymentHistory.PaymentType      
		   FROM      
				tblPaymentHistory
		   WHERE
				CreatedOn > (select DATEADD(WEEK, -1, GETDATE()))
		END 
	ELSE
	 BEGIN
		SELECT     
		  tblPaymentHistory.PaymentId,    
		  tblPaymentHistory.TransactionID,    
		  tblPaymentHistory.MerchantID,    
		  tblPaymentHistory.Amount,    
		  tblPaymentHistory.ClientName,    
		  tblPaymentHistory.CardType,    
		  tblPaymentHistory.CardReadType,    
		  tblPaymentHistory.CardNo,    
		  tblPaymentHistory.CreatedOn,    
		  tblPaymentHistory.ModifiedOn,    
		  tblPaymentHistory.PaymentStatus,
		  tblPaymentHistory.PaymentType    
		  FROM    
		  tblPaymentHistory    
		  WHERE     
			MerchantID=@MerchantID 
		  AND
			CreatedOn > (select DATEADD(WEEK, -1, GETDATE()))
    END
 END   
 ELSE IF @FilterType = 'lastMonth'
 BEGIN
	IF @MerchantID = 0
		BEGIN
			SELECT       
			   tblPaymentHistory.PaymentId,      
			   tblPaymentHistory.TransactionID,      
			   tblPaymentHistory.MerchantID,      
			   tblPaymentHistory.Amount,      
			   tblPaymentHistory.ClientName,      
			   tblPaymentHistory.CardType,      
			   tblPaymentHistory.CardReadType,      
			   tblPaymentHistory.CardNo,      
			   tblPaymentHistory.CreatedOn,      
			   tblPaymentHistory.ModifiedOn,      
			   tblPaymentHistory.PaymentStatus,
			   tblPaymentHistory.PaymentType      
		   FROM      
				tblPaymentHistory
		   WHERE
				CreatedOn > (select DATEADD(MONTH, -1, GETDATE()))
		END 
	ELSE
	 BEGIN
		SELECT     
		  tblPaymentHistory.PaymentId,    
		  tblPaymentHistory.TransactionID,    
		  tblPaymentHistory.MerchantID,    
		  tblPaymentHistory.Amount,    
		  tblPaymentHistory.ClientName,    
		  tblPaymentHistory.CardType,    
		  tblPaymentHistory.CardReadType,    
		  tblPaymentHistory.CardNo,    
		  tblPaymentHistory.CreatedOn,    
		  tblPaymentHistory.ModifiedOn,    
		  tblPaymentHistory.PaymentStatus,
		  tblPaymentHistory.PaymentType    
		  FROM    
		  tblPaymentHistory    
		  WHERE     
			MerchantID=@MerchantID 
		  AND
			CreatedOn > (select DATEADD(MONTH, -1, GETDATE()))
	END
 END   
END 
GO
/****** Object:  StoredProcedure [dbo].[spGetPaymentHistory1]    Script Date: 13-05-2022 16:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--sp_helptext spGetPaymentHistory1
-- =============================================            
-- Author:  Dhruvin Lad(KCSITGLOBAL)            
-- Create date: 20-April-2022            
-- Description: Will give get the history from the merchantID  and also filter according to today last weaek and last month Stop of the day is also included          
-- exec spGetPaymentHistory1 'all'      
-- =============================================            
CREATE PROCEDURE [dbo].[spGetPaymentHistory1]   
@MerchantID BIGINT  =0  ,
@FilterType varchar(50)   

AS            
BEGIN     
IF @FilterType = 'all'   
BEGIN   
 IF @MerchantID = 0  
 BEGIN  
  SELECT         
     tblPaymentHistory.PaymentId,        
     tblPaymentHistory.TransactionID,        
     tblPaymentHistory.MerchantID,        
     tblPaymentHistory.Amount,        
     tblPaymentHistory.ClientName,        
     tblPaymentHistory.CardType,        
     tblPaymentHistory.CardReadType,        
     tblPaymentHistory.CardNo,        
     tblPaymentHistory.CreatedOn,        
     tblPaymentHistory.ModifiedOn,        
     tblPaymentHistory.PaymentStatus        
    FROM        
   tblPaymentHistory  
  
   print('1')  
 END  
 ELSE  
 BEGIN           
  SELECT         
     tblPaymentHistory.PaymentId,        
     tblPaymentHistory.TransactionID,        
     tblPaymentHistory.MerchantID,        
     tblPaymentHistory.Amount,        
     tblPaymentHistory.ClientName,        
     tblPaymentHistory.CardType,        
     tblPaymentHistory.CardReadType,        
     tblPaymentHistory.CardNo,        
     tblPaymentHistory.CreatedOn,        
     tblPaymentHistory.ModifiedOn,        
     tblPaymentHistory.PaymentStatus        
     FROM        
     tblPaymentHistory        
     WHERE         
     MerchantID=@MerchantID     
       print('2')  
 END   
END    
   
END   
  
--print('1')
GO
/****** Object:  StoredProcedure [dbo].[spGetPaymentHistoryReport]    Script Date: 13-05-2022 16:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================        
-- Author:  Rakesh Jadhav(KCSITGLOBAL)        
-- Create date: 10-May-2022        
-- Description: Will give get the history for report on the basis of From Date, To Date and payment Type
-- exec spGetPaymentHistoryReport '2022-05-02','2022-05-10',',NFC,Crypto,'
-- exec spGetPaymentHistoryReport '2022-05-02','2022-05-10',''
-- =============================================        
CREATE PROCEDURE [dbo].[spGetPaymentHistoryReport]    
@FromDate date,
@ToDate date,
@PaymentType nvarchar(200)
AS        
BEGIN
	IF(CHARINDEX(',', @PaymentType)>0)
	BEGIN
		SELECT       
		   tblPaymentHistory.PaymentId,      
		   tblPaymentHistory.TransactionID,      
		   tblPaymentHistory.MerchantID,      
		   tblPaymentHistory.Amount,      
		   tblPaymentHistory.ClientName,      
		   tblPaymentHistory.CardType,      
		   tblPaymentHistory.CardReadType,      
		   tblPaymentHistory.CardNo,      
		   tblPaymentHistory.CreatedOn,      
		   tblPaymentHistory.ModifiedOn,      
		   tblPaymentHistory.PaymentStatus,
		   tblPaymentHistory.PaymentType
	   FROM      
			tblPaymentHistory
		WHERE CreatedOn>@FromDate AND CreatedOn<@ToDate AND CHARINDEX(','+cast(PaymentType as varchar(8000))+',', @PaymentType) > 0
END
ELSE
SELECT       
		   tblPaymentHistory.PaymentId,      
		   tblPaymentHistory.TransactionID,      
		   tblPaymentHistory.MerchantID,      
		   tblPaymentHistory.Amount,      
		   tblPaymentHistory.ClientName,      
		   tblPaymentHistory.CardType,      
		   tblPaymentHistory.CardReadType,      
		   tblPaymentHistory.CardNo,      
		   tblPaymentHistory.CreatedOn,      
		   tblPaymentHistory.ModifiedOn,      
		   tblPaymentHistory.PaymentStatus,
		   tblPaymentHistory.PaymentType
	   FROM      
			tblPaymentHistory
		WHERE CreatedOn>@FromDate AND CreatedOn<@ToDate
END 
GO
/****** Object:  StoredProcedure [dbo].[spGetTransactionDetails]    Script Date: 13-05-2022 16:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================      
-- Author:  Dhruvin Lad(KCSITGLOBAL)      
-- Create date: 20-April-2022      
-- Description: Will return transetion details of user      
-- exec spGetTransactionDetails 15    
-- =============================================      
CREATE PROCEDURE [dbo].[spGetTransactionDetails]  
@PaymentId INT  
AS      
BEGIN      
  SELECT   
  tblPaymentHistory.PaymentId,  
  tblPaymentHistory.TransactionID,  
  tblPaymentHistory.MerchantID,  
  tblPaymentHistory.Amount,  
  tblPaymentHistory.ClientName,  
  tblPaymentHistory.CardType,  
  tblPaymentHistory.CardReadType,  
  tblPaymentHistory.CardNo,  
  tblPaymentHistory.CreatedOn,  
  tblPaymentHistory.ModifiedOn,  
  tblPaymentHistory.PaymentStatus  
  FROM  
  tblPaymentHistory  
  WHERE   
    PaymentId=@PaymentId
END      
GO
/****** Object:  StoredProcedure [dbo].[spInsertCryptoOrderId]    Script Date: 13-05-2022 16:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================        
-- Author:  Dhruvin Lad(KCSITGLOBAL)        
-- Create date: 9-MAY-2022        
-- Description: Will Insert the OrderID and MerchantID On QR generation         
-- exec spInsertCryptoOrderId 'ABCD123456PQRST',10003 
-- =============================================    
  
CREATE PROCEDURE [dbo].[spInsertCryptoOrderId]  
 @OrderID NVARCHAR(200),  
 @MerchantID BIGINT  
AS  
BEGIN  
 INSERT INTO 
	tblCryptoPayment(orderID,MerchantID) 
 VALUES
	(@OrderID,@MerchantID)  
 SELECT @@ROWCOUNT
END  
GO
/****** Object:  StoredProcedure [dbo].[spInsertHelp]    Script Date: 13-05-2022 16:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================    
-- Author:   (KCSITGLOBAL)    
-- Create date: 
-- Description: Will insert the ticket data  
-- EXEC spInsertHelp 1000,'abcg','sdfksjf'
-- =============================================    
  
CREATE PROC [dbo].[spInsertHelp]  
@MerchantId INT,  
@Subject NVARCHAR(max),  
@Description NVARCHAR(max)  
  
As  
  BEGIN    
	INSERT INTO 
		tblHelp  
			   (MerchantId,
			    [Subject],
			    [Description],
				CreatedOn)  
		 VALUES  
			   (@MerchantId,  
			    @Subject,  
			    @Description,  
			    GETDATE())  
	SELECT @@ROWCOUNT  
END  
  
   
GO
/****** Object:  StoredProcedure [dbo].[spInsertItemPurchaseDtls]    Script Date: 13-05-2022 16:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Sachin Bhalerao(KCSITGLOBAL)
-- Create date: 14-April-2022
-- Description:	Will insert the Client's Purchase Item Details
-- =============================================
CREATE PROCEDURE [dbo].[spInsertItemPurchaseDtls]
@ClientId int,
@Item varchar(50),
@Amount float
AS
BEGIN

INSERT INTO [dbo].[tblItemPurchaseDtls]
           ([ClientId]
           ,[Item]
           ,[Amount])
     VALUES
           (@ClientId
           ,@Item
           ,@Amount)

		   END



		  
GO
/****** Object:  StoredProcedure [dbo].[spInsertPaymentHistory]    Script Date: 13-05-2022 16:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================        
-- Author:  Dhruvin Lad(KCSITGLOBAL)        
-- Create date: 20-April-2022        
-- Description: Will insert PaymentHistory data    
-- exec spInsertPaymentHistory   '6',10001,35,'Dhruvin','Master','NFC','123456','sucess'    
-- =============================================        
CREATE PROCEDURE [dbo].[spInsertPaymentHistory]        
@TransactionID NVARCHAR(100),        
@MerchantID BIGINT,        
@Amount FLOAT,        
@ClientName NVARCHAR(100),        
@CardType NVARCHAR(100),        
@CardReadType NVARCHAR(100),        
@CardNo NVARCHAR(100),             
@PaymentStatus VARCHAR(50),   
@ID INT OUTPUT     
AS        
BEGIN          
  INSERT INTO     
    tblPaymentHistory  
   (TransactionID,    
       MerchantID,    
       Amount,    
       ClientName,    
       CardType,    
       CardReadType,    
       CardNo,    
       CreatedOn,    
       ModifiedOn,    
       PaymentStatus)         
   VALUES    
  (@TransactionID,    
   @MerchantID,    
   @Amount,    
   @ClientName,    
   @CardType,    
   @CardReadType,    
   @CardNo,    
   GETDATE(),    
   NULL,    
   @PaymentStatus)     
     
   SET @ID = @@IDENTITY 

   SELECT @ID
  
END     
  
GO
/****** Object:  StoredProcedure [dbo].[spInsertSignupDetails]    Script Date: 13-05-2022 16:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
      
      
-- =============================================        
-- Author:  Dhruvin Lad(KCSITGLOBAL)        
-- Create date: 11-April-2022        
-- Description: Will insert the user data while signup        
-- =============================================        
CREATE PROCEDURE [dbo].[spInsertSignupDetails]        
@FirstName NVARCHAR(50),        
@LastName NVARCHAR(50),        
@EmailID NVARCHAR(150) ,        
@MobileNumber VARCHAR(50),        
@Password NVARCHAR(50),        
@IsApproved BIT = 0,        
@IsPasswordChange BIT = 0,        
@UpdatedDate DATETIME,        
@CreatedDate DATETIME,
@CurrencyType NVARCHAR(3) = NULL        
AS        
BEGIN        
  INSERT INTO     
    tblUserDetails(FirstName,    
       LastName,    
       EmailID,    
       MobileNumber,    
       [Password],    
       IsApproved,    
       IsPasswordChange,    
       CreatedDate,    
       UpdatedDate,    
       EmailNotification,    
       TextNotification,  
       IsAdmin,
	   CurrencyType)         
   VALUES    
	  (@FirstName,    
	   @LastName,    
	   @EmailID,    
	   @MobileNumber,    
	   @Password,    
	   @IsApproved,    
	   @IsPasswordChange,    
	   @CreatedDate,    
	   @UpdatedDate,    
	   1,    
	   0,  
	   0,
	   @CurrencyType)      
  SELECT       
    TBLUSERDETAILS.EMAILID,      
    TBLUSERDETAILS.FIRSTNAME,      
    TBLUSERDETAILS.LASTNAME,      
    TBLUSERDETAILS.MERCHANTID,      
    TBLUSERDETAILS.ISAPPROVED,      
    TBLUSERDETAILS.MOBILENUMBER,      
    TBLUSERDETAILS.ISPASSWORDCHANGE,      
    TBLUSERDETAILS.PASSWORD,      
    TBLUSERDETAILS.CREATEDDATE,      
    TBLUSERDETAILS.UPDATEDDATE,    
    TBLUSERDETAILS.EMAILNOTIFICATION,    
    TBLUSERDETAILS.TEXTNOTIFICATION      
    FROM       
    TBLUSERDETAILS    
   WHERE     
   EMAILID=@EMAILID         
END     
--select * from tblUserDetails
GO
/****** Object:  StoredProcedure [dbo].[spInsertTemporary]    Script Date: 13-05-2022 16:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================  
-- Author:  <Author,,Name>  
-- Create date: <Create Date,,>  
-- Description: <Description,,>  
-- =============================================  
CREATE PROCEDURE [dbo].[spInsertTemporary]  
 -- Add the parameters for the stored procedure here  
 @Result nvarchar(MAX),  
 @ID INT OUTPUT  
AS  
BEGIN  
 -- SET NOCOUNT ON added to prevent extra result sets from  
 -- interfering with SELECT statements.  
 SET NOCOUNT ON;  
  
    -- Insert statements for procedure here  
 INSERT INTO tblTemporary VALUES(@Result)  
 SET @ID = @@IDENTITY   
  
   SELECT @ID  
END  
GO
/****** Object:  StoredProcedure [dbo].[spLogoutUpdateDeviceID]    Script Date: 13-05-2022 16:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================          
-- Author:  Dhruvin Lad(KCSITGLOBAL)          
-- Create date: 11-MAY-2022          
-- Description: while log out the device ID will be updated to null
-- exec spLogoutUpdateDeviceID 10003
-- =============================================          
CREATE PROCEDURE [dbo].[spLogoutUpdateDeviceID]  
@MerchantID BIGINT       
AS          
BEGIN   
	Update 
		tblUserDetails 
	SET 
		DeviceID = NULL
	WHERE 
		MerchantID = @MerchantID

	SELECT @@ROWCOUNT
END 
GO
/****** Object:  StoredProcedure [dbo].[spNotificationType]    Script Date: 13-05-2022 16:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================  
-- Author:  Dhruvin Lad(KCSITGLOBAL)  
-- Create date: 19-April-2022  
-- Description: Will update notification and return the user object  
-- exec spNotificationType '10000',1,0
-- =============================================  
CREATE PROCEDURE [dbo].[spNotificationType] 
@MerchantID BIGINT,
@EmailNotification BIT,
@TextNotification BIT
AS  
BEGIN  
		UPDATE 
			tblUserDetails 
		SET 
			EmailNotification=@EmailNotification,TextNotification=@TextNotification,UpdatedDate=GETDATE()
		WHERE 
			MerchantID=@MerchantID
		SELECT   
			 tblUserDetails.EmailID,  
			 tblUserDetails.FirstName,  
			 tblUserDetails.LastName,  
			 tblUserDetails.MerchantID,  
			 tblUserDetails.IsApproved,  
			 tblUserDetails.MobileNumber,  
			 tblUserDetails.IsPasswordChange,  
			 tblUserDetails.Password,  
			 tblUserDetails.CreatedDate,  
			 tblUserDetails.UpdatedDate,
			 tblUserDetails.EmailNotification,
			 tblUserDetails.TextNotification  
		  FROM   
			 tblUserDetails
		  WHERE 
			MerchantID=@MerchantID
END  
GO
/****** Object:  StoredProcedure [dbo].[spStopOFTheDay]    Script Date: 13-05-2022 16:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================          
-- Author:  Dhruvin Lad(KCSITGLOBAL)          
-- Create date: 26-April-2022          
-- Description: will return payment history of whole day    
-- exec spStopOFTheDay 10001    
-- =============================================    
CREATE PROCEDURE [dbo].[spStopOFTheDay]          
@MerchantID BIGINT
AS          
BEGIN  
  SELECT   
  tblPaymentHistory.PaymentId,  
  tblPaymentHistory.TransactionID,  
  tblPaymentHistory.MerchantID,  
  tblPaymentHistory.Amount,  
  tblPaymentHistory.ClientName,  
  tblPaymentHistory.CardType,  
  tblPaymentHistory.CardReadType,  
  tblPaymentHistory.CardNo,  
  tblPaymentHistory.CreatedOn,  
  tblPaymentHistory.ModifiedOn,  
  tblPaymentHistory.PaymentStatus  
  FROM  
  tblPaymentHistory  
  WHERE   
    MerchantID=@MerchantID
  AND
	CreatedOn > (select DATEADD(DAY, -1, GETDATE()))
END     
    
GO
/****** Object:  StoredProcedure [dbo].[spUpdateCryptotransactionDetails]    Script Date: 13-05-2022 16:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================              
-- Author:  Dhruvin Lad(KCSITGLOBAL)              
-- Create date: 9-MAY-2022              
-- Description: will update the crypto transaction details              
-- exec spUpdateCryptotransactionDetails '3EfvCUXrdRbzr6QTZ8uryVhXknzGqAVQFP','2022-05-06 16:40:20','0.00028397','0.00028397','35213.94550000','BTC','USD','16518459622078','WVTJOVU5DBA6ZPL1A9RKO2TS3AXJTI','0','10.00000000','ZbOSEdATcYwKt3rCv9vBjmmGrpSUZK'
--,'aad3a5fcf427d200000b8fc502fa9ecce0db6c8eb398f26bc7bbbc40402cf67a','expired','1651845962','receive','2022-05-06 17:05:06',NULL,NULL         
-- =============================================          
        
CREATE PROCEDURE [dbo].[spUpdateCryptotransactionDetails]       
 @Address NVARCHAR(200),      
 @CreatedOn NVARCHAR(200),      
 @CryptoAmount NVARCHAR(200),      
 @CryptoAmountRemainingToPay NVARCHAR(200),      
 @CryptoCurrencyRate NVARCHAR(200),      
 @Currency NVARCHAR(200),      
 @CurrencyReceived NVARCHAR(200),      
 @Nonce NVARCHAR(200),      
 @OrderID NVARCHAR(200),      
 @ReceivedCryptoAmount NVARCHAR(200),      
 @ReceivedAmount NVARCHAR(200),      
 @ShopID NVARCHAR(200),      
 @Signature NVARCHAR(200),      
 @Status NVARCHAR(200),      
 @Timestamp NVARCHAR(200),      
 @Type NVARCHAR(200),      
 @UpdatedOn NVARCHAR(200),
 @XRPTag NVARCHAR(200),
 @CryptoDestinationTag NVARCHAR(200)
AS        
BEGIN        
 UPDATE       
  tblCryptoPayment      
 SET       
  [Address] = @Address,      
  CreatedOn = @CreatedOn,      
  CryptoAmount = @CryptoAmount,      
  CryptoAmountRemainingToPay = @CryptoAmountRemainingToPay,      
  CryptoCurrencyRate = @CryptoCurrencyRate,      
  Currency = @Currency,      
  CurrencyReceived = @CurrencyReceived,      
  Nonce = @Nonce,      
  ReceivedCryptoAmount = @ReceivedCryptoAmount,      
  ReceivedAmount = @ReceivedAmount,      
  ShopID = @ShopID,      
  [Signature] = @Signature,      
  [Status] = @Status,      
  [Timestamp] = @Timestamp,      
  [Type] = @Type,      
  UpdatedOn = @UpdatedOn,
  XRPTag = @XRPTag,
  CryptoDestinationTag = @CryptoDestinationTag
 WHERE      
  OrderID = @OrderID      
      
 SELECT @@ROWCOUNT      
END 
GO
/****** Object:  StoredProcedure [dbo].[spUpdateCryptotransactionDetails1]    Script Date: 13-05-2022 16:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================                
-- Author:  Dhruvin Lad(KCSITGLOBAL)                
-- Create date: 9-MAY-2022                
-- Description: will update the crypto transaction details                
-- exec spUpdateCryptotransactionDetails1 '3EfvCUXrdRbzr6QTZ8uryVhXknzGqAVQFP','2022-05-06 16:40:20','0.00028397','0.00028397','35213.94550000','BTC','USD','16518459622078','I2TFILKZPXLPL9VPUQCWIYVOVVS4DT','0','10.00000000','ZbOSEdATcYwKt3rCv9vBjmmGrpSUZK','aad3a5fcf427d200000b8fc502fa9ecce0db6c8eb398f26bc7bbbc40402cf67a','partially paid','1651845962','receive','2022-05-06 17:05:06',NULL,NULL           
-- =============================================            
          
CREATE PROCEDURE [dbo].[spUpdateCryptotransactionDetails1]         
@Address NVARCHAR(200),        
@CreatedOn NVARCHAR(200),        
@CryptoAmount NVARCHAR(200),        
@CryptoAmountRemainingToPay NVARCHAR(200),        
@CryptoCurrencyRate NVARCHAR(200),        
@Currency NVARCHAR(200),        
@CurrencyReceived NVARCHAR(200),        
@Nonce NVARCHAR(200),        
@OrderID NVARCHAR(200),        
@ReceivedCryptoAmount NVARCHAR(200),        
@ReceivedAmount NVARCHAR(200),        
@ShopID NVARCHAR(200),        
@Signature NVARCHAR(200),        
@Status NVARCHAR(200),        
@Timestamp NVARCHAR(200),        
@Type NVARCHAR(200),        
@UpdatedOn NVARCHAR(200),  
@XRPTag NVARCHAR(200),  
@CryptoDestinationTag NVARCHAR(200)  
AS          
BEGIN          
	 UPDATE         
	  tblCryptoPayment        
	 SET         
	  [Address] = @Address,        
	  CreatedOn = @CreatedOn,        
	  CryptoAmount = @CryptoAmount,        
	  CryptoAmountRemainingToPay = @CryptoAmountRemainingToPay,        
	  CryptoCurrencyRate = @CryptoCurrencyRate,        
	  Currency = @Currency,        
	  CurrencyReceived = @CurrencyReceived,        
	  Nonce = @Nonce,        
	  ReceivedCryptoAmount = @ReceivedCryptoAmount,        
	  ReceivedAmount = @ReceivedAmount,        
	  ShopID = @ShopID,        
	  [Signature] = @Signature,        
	  [Status] = @Status,        
	  [Timestamp] = @Timestamp,        
	  [Type] = @Type,        
	  UpdatedOn = @UpdatedOn,  
	  XRPTag = @XRPTag,  
	  CryptoDestinationTag = @CryptoDestinationTag  
	 WHERE        
	  OrderID = @OrderID        
        
 SELECT @@ROWCOUNT

 declare @merchantid BIGINT
 select @merchantid=MerchantID from tblCryptoPayment where OrderID = @OrderID

IF @Status <> 'expired'
BEGIN
	Print('1')
    IF  EXISTS(SELECT 1 FROM tblPaymentHistory WHERE TransactionID =@OrderID) 
		BEGIN
				Print('2')
			UPDATE         
			  tblPaymentHistory        
			 SET         
			   Amount=@ReceivedAmount,
			   CreatedOn = @CreatedOn,
			   ModifiedOn = @UpdatedOn,
			   PaymentStatus = @Status,
			   PaymentType = 'Crypto',
			   MerchantID = @merchantid
			 WHERE        
			  TransactionID = @OrderID
		END
	ELSE 
		BEGIN
			Print('3')
			INSERT INTO       
				tblPaymentHistory    
			   (TransactionID,      
				   Amount,                  
				   CreatedOn,
				   ModifiedOn,      
				   PaymentType,
				   PaymentStatus,
				   MerchantID)           
			   VALUES      
				  (@OrderID,         
				   @ReceivedAmount,                  
				   @CreatedOn,   
				   @UpdatedOn,      
				   'Crypto',
				   @Status,
				   @merchantid)       
		END
END
END; 

GO
/****** Object:  StoredProcedure [dbo].[spUserLogin]    Script Date: 13-05-2022 16:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================        
-- Author:  Dhruvin Lad(KCSITGLOBAL)        
-- Create date: 12-April-2022        
-- Description: Will update the device id and give user detail if it exist and is approved  
-- Exec spUserLogin 'dhruvin.lad@kcsitglobal.com','ABCD123456PQRS'      
-- =============================================        
CREATE PROCEDURE [dbo].[spUserLogin]        
@EmailID NVARCHAR(150) ,        
@DeviceID NVARCHAR(MAX) = null       
AS        
BEGIN     
 UPDATE tblUserDetails SET DeviceID = @DeviceID WHERE EmailID = @EmailID      
 SELECT         
     tblUserDetails.EmailID,        
     tblUserDetails.FirstName,        
     tblUserDetails.LastName,        
     tblUserDetails.MerchantID,        
     tblUserDetails.IsApproved,        
     tblUserDetails.MobileNumber,        
     tblUserDetails.IsPasswordChange,        
     tblUserDetails.Password,        
     tblUserDetails.CreatedDate,        
     tblUserDetails.UpdatedDate,      
     tblUserDetails.EmailNotification,      
     tblUserDetails.TextNotification,    
  tblUserDetails.DeviceID,    
  tblUserDetails.CurrencyType      
  FROM         
     tblUserDetails        
  where        
     EmailID=@EmailID    
END 
GO
USE [master]
GO
ALTER DATABASE [Softpos] SET  READ_WRITE 
GO
