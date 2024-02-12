USE [master]
GO
/****** Object:  Database [ProgrammingDB]    Script Date: 13/02/2024 12:13:32 AM ******/
CREATE DATABASE [ProgrammingDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProgrammingDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\ProgrammingDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ProgrammingDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\ProgrammingDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [ProgrammingDB] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProgrammingDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProgrammingDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProgrammingDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProgrammingDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProgrammingDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProgrammingDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProgrammingDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ProgrammingDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProgrammingDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProgrammingDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProgrammingDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProgrammingDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProgrammingDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProgrammingDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProgrammingDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProgrammingDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ProgrammingDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProgrammingDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProgrammingDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProgrammingDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProgrammingDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProgrammingDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ProgrammingDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProgrammingDB] SET RECOVERY FULL 
GO
ALTER DATABASE [ProgrammingDB] SET  MULTI_USER 
GO
ALTER DATABASE [ProgrammingDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProgrammingDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProgrammingDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProgrammingDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ProgrammingDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ProgrammingDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ProgrammingDB', N'ON'
GO
ALTER DATABASE [ProgrammingDB] SET QUERY_STORE = ON
GO
ALTER DATABASE [ProgrammingDB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [ProgrammingDB]
GO
/****** Object:  Table [dbo].[Studentinfo_Tab]    Script Date: 13/02/2024 12:13:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Studentinfo_Tab](
	[StudentID] [int] NOT NULL,
	[StudentName] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Age] [float] NULL,
	[Contact] [nvarchar](50) NULL,
 CONSTRAINT [PK_Studentinfo_Tab] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Studentinfo_Tab1]    Script Date: 13/02/2024 12:13:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Studentinfo_Tab1](
	[StudentID] [int] NOT NULL,
	[StudentName] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Age] [float] NULL,
	[Contact] [nvarchar](50) NULL,
 CONSTRAINT [PK_Studentinfo_Tab1] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Studentinfo_Tab] ([StudentID], [StudentName], [Address], [Age], [Contact]) VALUES (101, N'jarish', N'INDIA', 22, N'9361573271')
GO
INSERT [dbo].[Studentinfo_Tab] ([StudentID], [StudentName], [Address], [Age], [Contact]) VALUES (102, N'jar', N'INDIA', 22, N'9361573272')
GO
INSERT [dbo].[Studentinfo_Tab] ([StudentID], [StudentName], [Address], [Age], [Contact]) VALUES (103, N'surya', N'INDIA', 22, N'9361573273')
GO
INSERT [dbo].[Studentinfo_Tab] ([StudentID], [StudentName], [Address], [Age], [Contact]) VALUES (201, N'raja', N'INDIA', 21, N'1234569870')
GO
USE [master]
GO
ALTER DATABASE [ProgrammingDB] SET  READ_WRITE 
GO