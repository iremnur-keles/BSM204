USE [master]
GO
/****** Object:  Database [DijitalKutuphaneveAlinti]    Script Date: 8.06.2025 17:24:52 ******/
CREATE DATABASE [DijitalKutuphaneveAlinti]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DijitalKutuphaneveAlinti', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\DijitalKutuphaneveAlinti.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DijitalKutuphaneveAlinti_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\DijitalKutuphaneveAlinti_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [DijitalKutuphaneveAlinti] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DijitalKutuphaneveAlinti].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DijitalKutuphaneveAlinti] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DijitalKutuphaneveAlinti] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DijitalKutuphaneveAlinti] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DijitalKutuphaneveAlinti] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DijitalKutuphaneveAlinti] SET ARITHABORT OFF 
GO
ALTER DATABASE [DijitalKutuphaneveAlinti] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DijitalKutuphaneveAlinti] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DijitalKutuphaneveAlinti] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DijitalKutuphaneveAlinti] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DijitalKutuphaneveAlinti] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DijitalKutuphaneveAlinti] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DijitalKutuphaneveAlinti] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DijitalKutuphaneveAlinti] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DijitalKutuphaneveAlinti] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DijitalKutuphaneveAlinti] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DijitalKutuphaneveAlinti] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DijitalKutuphaneveAlinti] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DijitalKutuphaneveAlinti] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DijitalKutuphaneveAlinti] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DijitalKutuphaneveAlinti] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DijitalKutuphaneveAlinti] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DijitalKutuphaneveAlinti] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DijitalKutuphaneveAlinti] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DijitalKutuphaneveAlinti] SET  MULTI_USER 
GO
ALTER DATABASE [DijitalKutuphaneveAlinti] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DijitalKutuphaneveAlinti] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DijitalKutuphaneveAlinti] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DijitalKutuphaneveAlinti] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DijitalKutuphaneveAlinti] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DijitalKutuphaneveAlinti] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DijitalKutuphaneveAlinti] SET QUERY_STORE = ON
GO
ALTER DATABASE [DijitalKutuphaneveAlinti] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [DijitalKutuphaneveAlinti]
GO
/****** Object:  Table [dbo].[Alintilar]    Script Date: 8.06.2025 17:24:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alintilar](
	[AlintiID] [int] IDENTITY(1,1) NOT NULL,
	[AlintiIcerik] [nvarchar](max) NOT NULL,
	[Kaynak] [nvarchar](200) NULL,
	[KitapID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[AlintiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kitaplar]    Script Date: 8.06.2025 17:24:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kitaplar](
	[KitapID] [int] IDENTITY(1,1) NOT NULL,
	[KitapAdi] [nvarchar](200) NOT NULL,
	[Yazar] [nvarchar](100) NULL,
	[YayinYili] [int] NULL,
	[SayfaSayisi] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[KitapID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kullanicilar]    Script Date: 8.06.2025 17:24:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kullanicilar](
	[KullaniciID] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciAdi] [nvarchar](50) NOT NULL,
	[Sifre] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[KullaniciID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[KullaniciAdi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Alintilar]  WITH CHECK ADD FOREIGN KEY([KitapID])
REFERENCES [dbo].[Kitaplar] ([KitapID])
GO
USE [master]
GO
ALTER DATABASE [DijitalKutuphaneveAlinti] SET  READ_WRITE 
GO
