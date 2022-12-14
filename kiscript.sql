USE [master]
GO
/****** Object:  Database [KI_MANAGEMENT_SYSTEM]    Script Date: 28/08/2022 2:37:10 pm ******/
CREATE DATABASE [KI_MANAGEMENT_SYSTEM]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KI_MANAGEMENT_SYSTEM', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\KI_MANAGEMENT_SYSTEM.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'KI_MANAGEMENT_SYSTEM_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\KI_MANAGEMENT_SYSTEM_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [KI_MANAGEMENT_SYSTEM] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KI_MANAGEMENT_SYSTEM].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KI_MANAGEMENT_SYSTEM] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KI_MANAGEMENT_SYSTEM] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KI_MANAGEMENT_SYSTEM] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KI_MANAGEMENT_SYSTEM] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KI_MANAGEMENT_SYSTEM] SET ARITHABORT OFF 
GO
ALTER DATABASE [KI_MANAGEMENT_SYSTEM] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [KI_MANAGEMENT_SYSTEM] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KI_MANAGEMENT_SYSTEM] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KI_MANAGEMENT_SYSTEM] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KI_MANAGEMENT_SYSTEM] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KI_MANAGEMENT_SYSTEM] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KI_MANAGEMENT_SYSTEM] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KI_MANAGEMENT_SYSTEM] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KI_MANAGEMENT_SYSTEM] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KI_MANAGEMENT_SYSTEM] SET  DISABLE_BROKER 
GO
ALTER DATABASE [KI_MANAGEMENT_SYSTEM] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KI_MANAGEMENT_SYSTEM] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KI_MANAGEMENT_SYSTEM] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KI_MANAGEMENT_SYSTEM] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KI_MANAGEMENT_SYSTEM] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KI_MANAGEMENT_SYSTEM] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KI_MANAGEMENT_SYSTEM] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KI_MANAGEMENT_SYSTEM] SET RECOVERY FULL 
GO
ALTER DATABASE [KI_MANAGEMENT_SYSTEM] SET  MULTI_USER 
GO
ALTER DATABASE [KI_MANAGEMENT_SYSTEM] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KI_MANAGEMENT_SYSTEM] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KI_MANAGEMENT_SYSTEM] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KI_MANAGEMENT_SYSTEM] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [KI_MANAGEMENT_SYSTEM] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [KI_MANAGEMENT_SYSTEM] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'KI_MANAGEMENT_SYSTEM', N'ON'
GO
ALTER DATABASE [KI_MANAGEMENT_SYSTEM] SET QUERY_STORE = OFF
GO
USE [KI_MANAGEMENT_SYSTEM]
GO
/****** Object:  Table [dbo].[APPARAISAL_TOTAL_POINTS]    Script Date: 28/08/2022 2:37:10 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[APPARAISAL_TOTAL_POINTS](
	[EMPLOYEE_ID] [varchar](10) NOT NULL,
	[Month] [varchar](10) NOT NULL,
	[YEAR] [varchar](10) NOT NULL,
	[Total_Points] [numeric](3, 0) NULL,
	[Grand_Total_Points] [numeric](3, 0) NULL,
	[Percentage] [numeric](3, 0) NULL,
	[IS_PROCESSED] [numeric](2, 0) NULL,
 CONSTRAINT [PK_APPARAISAL_TOTAL_POINTS_17] PRIMARY KEY CLUSTERED 
(
	[EMPLOYEE_ID] ASC,
	[Month] ASC,
	[YEAR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[APPLICATION_CONFIGURATION]    Script Date: 28/08/2022 2:37:10 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[APPLICATION_CONFIGURATION](
	[CONFIG_ID] [varchar](50) NOT NULL,
	[CONFIG_VALUE] [varchar](50) NULL,
 CONSTRAINT [PK_APPLICATION_CONFIGURATION] PRIMARY KEY CLUSTERED 
(
	[CONFIG_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[APPRAISAL]    Script Date: 28/08/2022 2:37:10 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[APPRAISAL](
	[APPRAISAL_ID] [int] NOT NULL,
	[APPRAISAL_DESC] [varchar](100) NULL,
	[IS_ADMIN] [bit] NULL,
	[IS_TEACHER] [bit] NULL,
	[IS_HEAD] [bit] NULL,
 CONSTRAINT [PK_APPRAISAL] PRIMARY KEY CLUSTERED 
(
	[APPRAISAL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[APPRAISAL_POINTS]    Script Date: 28/08/2022 2:37:10 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[APPRAISAL_POINTS](
	[APPRAISAL_ID] [int] NOT NULL,
	[EMPLOYEE_ID] [varchar](10) NOT NULL,
	[YEAR] [varchar](4) NOT NULL,
	[JAN] [numeric](6, 0) NULL,
	[FEB] [numeric](6, 0) NULL,
	[MAR] [numeric](6, 0) NULL,
	[APR] [numeric](6, 0) NULL,
	[MAY] [numeric](6, 0) NULL,
	[JUN] [numeric](6, 0) NULL,
	[JUL] [numeric](6, 0) NULL,
	[AUG] [numeric](6, 0) NULL,
	[SEP] [numeric](6, 0) NULL,
	[OCT] [numeric](6, 0) NULL,
	[NOV] [numeric](6, 0) NULL,
	[DEC] [numeric](6, 0) NULL,
	[Jan_Achievements] [varchar](1000) NULL,
	[Jan_Suggestion] [varchar](1000) NULL,
	[Feb_Achievements] [varchar](1000) NULL,
	[Feb_Suggestion] [varchar](1000) NULL,
	[Mar_Achievements] [varchar](1000) NULL,
	[Mar_Suggestion] [varchar](1000) NULL,
	[Apr_Achievements] [varchar](1000) NULL,
	[Apr_Suggestion] [varchar](1000) NULL,
	[May_Achievements] [varchar](1000) NULL,
	[May_Suggestion] [varchar](1000) NULL,
	[Jun_Achievements] [varchar](1000) NULL,
	[Jun_Suggestion] [varchar](1000) NULL,
	[Jul_Achievements] [varchar](1000) NULL,
	[Jul_Suggestion] [varchar](1000) NULL,
	[Aug_Achievements] [varchar](1000) NULL,
	[Aug_Suggestion] [varchar](1000) NULL,
	[Sep_Achievements] [varchar](1000) NULL,
	[Sep_Suggestion] [varchar](1000) NULL,
	[Oct_Achievements] [varchar](1000) NULL,
	[Oct_Suggestion] [varchar](1000) NULL,
	[Nov_Achievements] [varchar](1000) NULL,
	[Nove_Suggestion] [varchar](1000) NULL,
	[Dec_Achievements] [varchar](1000) NULL,
	[Dec_Suggestion] [varchar](1000) NULL,
 CONSTRAINT [PK_APPRAISAL_POINTS] PRIMARY KEY CLUSTERED 
(
	[APPRAISAL_ID] ASC,
	[EMPLOYEE_ID] ASC,
	[YEAR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AUDIT_LOG]    Script Date: 28/08/2022 2:37:10 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AUDIT_LOG](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](50) NULL,
	[DateTime] [nchar](30) NULL,
	[DEVICE_NAME] [nchar](30) NULL,
	[MODULE] [varchar](200) NULL,
	[ACTION] [varchar](200) NULL,
	[USERID] [nchar](20) NULL,
	[PROFESSION] [varchar](20) NULL,
	[DECRIPTION] [varchar](max) NULL,
 CONSTRAINT [PK_AUDIT_LOG] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CLASSES]    Script Date: 28/08/2022 2:37:10 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLASSES](
	[Class_ID] [int] NOT NULL,
	[Class_Desc] [varchar](50) NULL,
	[Dept_ID] [int] NULL,
	[Is_Selected] [bit] NOT NULL,
 CONSTRAINT [PK_Class] PRIMARY KEY CLUSTERED 
(
	[Class_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[COURSES]    Script Date: 28/08/2022 2:37:10 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COURSES](
	[COURSE_ID] [int] NOT NULL,
	[COURSE_Desc] [varchar](50) NULL,
	[Dept_ID] [int] NULL,
 CONSTRAINT [PK_COURSE] PRIMARY KEY CLUSTERED 
(
	[COURSE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DEPARTMENT]    Script Date: 28/08/2022 2:37:10 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DEPARTMENT](
	[Dept_ID] [int] NOT NULL,
	[Dept_Desc] [varchar](20) NULL,
 CONSTRAINT [PK_DEPARTMENT] PRIMARY KEY CLUSTERED 
(
	[Dept_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DESIGNATION]    Script Date: 28/08/2022 2:37:10 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DESIGNATION](
	[DESIGNATION_ID] [int] NOT NULL,
	[DESIGNATION_Desc] [varchar](50) NULL,
 CONSTRAINT [PK_Designation] PRIMARY KEY CLUSTERED 
(
	[DESIGNATION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EMPLOYEE]    Script Date: 28/08/2022 2:37:10 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMPLOYEE](
	[EMPLOYEE_ID] [varchar](10) NOT NULL,
	[NAME] [nchar](30) NOT NULL,
	[DEPT_ID] [int] NULL,
	[DESIGNATION_ID] [int] NULL,
	[GRADE] [varchar](5) NULL,
	[QUALIFICATION] [varchar](100) NULL,
	[SUBJECT_OF_TEACHING] [varchar](100) NULL,
	[PHONE] [nchar](12) NULL,
	[ADDRESS] [varchar](200) NULL,
	[JOINING_DATE] [datetime] NULL,
	[IS_ACTIVE] [numeric](1, 0) NULL,
	[PWD] [varchar](100) NULL,
	[DATE_OF_BIRTH] [date] NULL,
	[LEAVES] [int] NULL,
	[PIC] [image] NULL,
	[PASSWORD] [nvarchar](100) NULL,
 CONSTRAINT [PK_EMPLOYEE] PRIMARY KEY CLUSTERED 
(
	[EMPLOYEE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FINANCE]    Script Date: 28/08/2022 2:37:10 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FINANCE](
	[EMPLOYEE_ID] [varchar](10) NOT NULL,
	[MONTH] [varchar](10) NOT NULL,
	[YEAR] [varchar](4) NOT NULL,
	[DATE] [datetime] NULL,
	[DETAIL] [varchar](200) NULL,
	[INCOME] [numeric](5, 2) NULL,
	[EXPENSE] [numeric](5, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GROUP_PERMISSION]    Script Date: 28/08/2022 2:37:10 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GROUP_PERMISSION](
	[GROUP_ID] [int] NOT NULL,
	[PERMISSION_ID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GROUP_USER]    Script Date: 28/08/2022 2:37:10 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GROUP_USER](
	[GROUP_ID] [int] NOT NULL,
	[TEACHER_STUDENT_ID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GROUPS]    Script Date: 28/08/2022 2:37:10 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GROUPS](
	[GROUP_ID] [int] NOT NULL,
	[NAME] [varchar](100) NULL,
 CONSTRAINT [PK_GROUP] PRIMARY KEY CLUSTERED 
(
	[GROUP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRMS]    Script Date: 28/08/2022 2:37:10 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRMS](
	[Employee_ID] [varchar](10) NOT NULL,
	[Date] [date] NOT NULL,
	[Day] [varchar](20) NOT NULL,
	[TimeIn] [time](7) NOT NULL,
	[TimeOut] [time](7) NULL,
	[Status] [nchar](20) NULL,
	[LOCK_ATTENDANCE] [bit] NULL,
 CONSTRAINT [PK_HRMS] PRIMARY KEY CLUSTERED 
(
	[Employee_ID] ASC,
	[Date] ASC,
	[Day] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRMS_1]    Script Date: 28/08/2022 2:37:10 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRMS_1](
	[Employee_ID] [varchar](20) NOT NULL,
	[Date] [date] NOT NULL,
	[Day] [varchar](20) NOT NULL,
	[TimeIn] [time](7) NOT NULL,
	[TimeOut] [time](7) NULL,
	[Status] [nchar](20) NULL,
 CONSTRAINT [PK_HRMS_1] PRIMARY KEY CLUSTERED 
(
	[Employee_ID] ASC,
	[Date] ASC,
	[Day] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRMS_EMPLOYEE]    Script Date: 28/08/2022 2:37:10 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRMS_EMPLOYEE](
	[EMPLOYEE_ID] [varchar](10) NOT NULL,
	[TimeIn] [time](7) NULL,
	[Working_Days] [varchar](70) NULL,
 CONSTRAINT [PK_HRMS_EMPLOYEE] PRIMARY KEY CLUSTERED 
(
	[EMPLOYEE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRMS_Managed]    Script Date: 28/08/2022 2:37:10 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRMS_Managed](
	[EMPLOYEE_ID] [varchar](10) NOT NULL,
	[Name] [varchar](50) NULL,
	[OnTime(Apr)] [numeric](3, 0) NULL,
	[Late(Apr)] [numeric](3, 0) NULL,
	[Absent(Apr)] [numeric](3, 0) NULL,
	[OnTime(May)] [numeric](3, 0) NULL,
	[Late(May)] [numeric](3, 0) NULL,
	[Absent(May)] [numeric](3, 0) NULL,
	[OnTime(Jun)] [numeric](3, 0) NULL,
	[Late(Jun)] [numeric](3, 0) NULL,
	[Absent(Jun)] [numeric](3, 0) NULL,
	[OnTime(Jul)] [numeric](3, 0) NULL,
	[Late(Jul)] [numeric](3, 0) NULL,
	[Absent(Jul)] [numeric](3, 0) NULL,
	[OnTime(Aug)] [numeric](3, 0) NULL,
	[Late(Aug)] [numeric](3, 0) NULL,
	[Absent(Aug)] [numeric](3, 0) NULL,
	[OnTime(Sep)] [numeric](3, 0) NULL,
	[Late(Sep)] [numeric](3, 0) NULL,
	[Absent(Sep)] [numeric](3, 0) NULL,
	[OnTime(Oct)] [numeric](3, 0) NULL,
	[Late(Oct)] [numeric](3, 0) NULL,
	[Absent(Oct)] [numeric](3, 0) NULL,
	[OnTime(Nov)] [numeric](3, 0) NULL,
	[Late(Nov)] [numeric](3, 0) NULL,
	[Absent(Nov)] [numeric](3, 0) NULL,
	[OnTime(Dec)] [numeric](3, 0) NULL,
	[Late(Dec)] [numeric](3, 0) NULL,
	[Absent(Dec)] [numeric](3, 0) NULL,
	[OnTime(Jan)] [numeric](3, 0) NULL,
	[Late(Jan)] [numeric](3, 0) NULL,
	[Absent(Jan)] [numeric](3, 0) NULL,
	[OnTime(Feb)] [numeric](3, 0) NULL,
	[Late(Feb)] [numeric](3, 0) NULL,
	[Absent(Feb)] [numeric](3, 0) NULL,
	[OnTime(Mar)] [numeric](3, 0) NULL,
	[Late(Mar)] [numeric](3, 0) NULL,
	[Absent(Mar)] [numeric](3, 0) NULL,
	[OnTime(Tot)] [numeric](3, 0) NULL,
	[Late(Tot)] [numeric](3, 0) NULL,
	[Absent(Tot)] [numeric](3, 0) NULL,
	[Absent(Scaled)] [numeric](3, 0) NULL,
	[Remaining_Leaves] [numeric](3, 0) NULL,
 CONSTRAINT [PK_HRMS_Managed] PRIMARY KEY CLUSTERED 
(
	[EMPLOYEE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Import]    Script Date: 28/08/2022 2:37:10 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Import](
	[Department] [varchar](55) NULL,
	[Employee ID] [varchar](10) NULL,
	[Name] [varchar](55) NULL,
	[Clocking Time] [datetime] NULL,
	[status] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOGIN_AUDIT]    Script Date: 28/08/2022 2:37:10 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOGIN_AUDIT](
	[ID] [nchar](10) NOT NULL,
	[Name] [nchar](50) NULL,
	[DateTime] [nchar](30) NULL,
	[DEVICE_NAME] [nchar](30) NULL,
 CONSTRAINT [PK_LOGIN_AUDIT] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NOTIFICATIONS]    Script Date: 28/08/2022 2:37:10 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NOTIFICATIONS](
	[NOTE] [varchar](60) NULL,
	[DATE] [date] NULL,
	[NOTICE] [varchar](500) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PAY_SLIP]    Script Date: 28/08/2022 2:37:10 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PAY_SLIP](
	[PAY_SLIP_ID] [varchar](10) NOT NULL,
	[EMPLOYEE_ID] [varchar](10) NOT NULL,
	[MONTH] [varchar](10) NOT NULL,
	[YEAR] [varchar](4) NOT NULL,
	[MOD_OF_SALARY] [varchar](10) NULL,
	[DEPT] [varchar](4) NULL,
	[DESIGNATION] [varchar](4) NULL,
	[GRADE] [varchar](4) NULL,
	[LATE_DAYS] [int] NULL,
	[LATE_DEDUCTION_DAYS] [int] NULL,
	[ABSENT_DAYS] [int] NULL,
	[TOTAL_EARNING] [numeric](5, 2) NULL,
	[TOTAL_DEDUCTION] [numeric](5, 2) NULL,
	[NET_PAY] [numeric](5, 2) NULL,
 CONSTRAINT [PK_PAYSLIP] PRIMARY KEY CLUSTERED 
(
	[PAY_SLIP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PAY_SLIP_DETAILS]    Script Date: 28/08/2022 2:37:10 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PAY_SLIP_DETAILS](
	[PAY_SLIP_ID] [varchar](10) NOT NULL,
	[CLASS] [varchar](20) NULL,
	[WORKING_DAYS] [int] NULL,
	[PER_STUDENT_SALARY] [numeric](5, 2) NULL,
	[NO_OF_STUDENTS] [int] NULL,
	[TOTAL_AMOUNT_PER_CLASS] [numeric](5, 2) NULL,
	[AMOUNT_PER_DAY] [numeric](5, 2) NULL,
	[ABSENT_DAYS_DED] [int] NULL,
	[AMOUNT_DED_LEAVE] [numeric](5, 2) NULL,
	[CREDIT] [numeric](5, 2) NULL,
	[DEBIT] [numeric](5, 2) NULL,
 CONSTRAINT [PK_PAYSLIP_DETAILS] PRIMARY KEY CLUSTERED 
(
	[PAY_SLIP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PERMISSION]    Script Date: 28/08/2022 2:37:10 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PERMISSION](
	[PERMISSION_ID] [int] NOT NULL,
	[PERMISSION_DESC] [varchar](100) NULL,
 CONSTRAINT [PK_PERMISSION] PRIMARY KEY CLUSTERED 
(
	[PERMISSION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RECEIPT_DETAILS]    Script Date: 28/08/2022 2:37:10 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RECEIPT_DETAILS](
	[RECEIPT_NO] [int] NOT NULL,
	[Dept_ID] [int] NULL,
	[CLASS_ID] [int] NULL,
	[STUDENT_ID] [int] NULL,
	[Name] [varchar](200) NULL,
	[Month] [nchar](10) NULL,
	[UnpaidMonths] [varchar](100) NULL,
	[Fee] [numeric](18, 2) NULL,
	[Year] [nchar](10) NULL,
	[Date] [datetime] NULL,
 CONSTRAINT [PK_RECEIPT_DETAILS] PRIMARY KEY CLUSTERED 
(
	[RECEIPT_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Report]    Script Date: 28/08/2022 2:37:10 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Report](
	[Report_ID] [int] NOT NULL,
	[Report_Name] [varchar](50) NULL,
	[Report_Query] [varchar](800) NULL,
	[Report_Path] [varchar](50) NULL,
 CONSTRAINT [PK_Report] PRIMARY KEY CLUSTERED 
(
	[Report_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Report_Filter]    Script Date: 28/08/2022 2:37:10 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Report_Filter](
	[Filter_ID] [int] NOT NULL,
	[Filter_Name] [varchar](50) NULL,
 CONSTRAINT [PK_Filter] PRIMARY KEY CLUSTERED 
(
	[Filter_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Report_Filter_Mapping]    Script Date: 28/08/2022 2:37:10 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Report_Filter_Mapping](
	[Report_ID] [int] NOT NULL,
	[Filter_ID] [int] NOT NULL,
	[Pos_X] [int] NOT NULL,
	[Pos_Y] [int] NOT NULL,
 CONSTRAINT [PK_Report_Filter_Mapping] PRIMARY KEY CLUSTERED 
(
	[Report_ID] ASC,
	[Filter_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SALARY]    Script Date: 28/08/2022 2:37:10 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SALARY](
	[EMPLOYEE_ID] [varchar](10) NOT NULL,
	[MONTH] [varchar](10) NOT NULL,
	[YEAR] [varchar](4) NOT NULL,
	[AMOUNT] [numeric](5, 2) NULL,
	[RECIEVED_DATE] [datetime] NULL,
 CONSTRAINT [PK_SALARY] PRIMARY KEY CLUSTERED 
(
	[EMPLOYEE_ID] ASC,
	[YEAR] ASC,
	[MONTH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[STUDENT]    Script Date: 28/08/2022 2:37:10 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STUDENT](
	[STUDENT_ID] [int] NOT NULL,
	[NAME] [nchar](30) NOT NULL,
	[FATHER_NAME] [nchar](30) NULL,
	[PHONE] [nchar](12) NULL,
	[FATHER_PHONE] [nchar](12) NULL,
	[ADDRESS] [nchar](200) NULL,
	[EMAIL] [nchar](20) NULL,
	[GENDER] [nchar](6) NULL,
	[DEPT_ID] [int] NOT NULL,
	[CLASS_ID] [int] NOT NULL,
	[SECTION] [varchar](10) NULL,
	[GROUPS] [nchar](10) NULL,
	[YEAR] [varchar](4) NOT NULL,
	[STATUS_ID] [varchar](2) NULL,
	[SUBJECT] [nchar](10) NULL,
	[TUITION_FEE] [numeric](5, 0) NULL,
	[ADMISSION_FEE] [numeric](5, 0) NULL,
	[ADMISSION_DATE] [date] NULL,
	[TIMING] [nchar](10) NULL,
	[PAYMENT_PLAN] [nchar](10) NOT NULL,
	[CERTIFICTATE] [nchar](10) NULL,
	[ImageURL] [nchar](30) NOT NULL,
	[PIC] [image] NULL,
	[PWD] [image] NULL,
	[Is_Selected] [bit] NOT NULL,
 CONSTRAINT [PK_STUDENT] PRIMARY KEY CLUSTERED 
(
	[STUDENT_ID] ASC,
	[YEAR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[STUDENT_FEE]    Script Date: 28/08/2022 2:37:10 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STUDENT_FEE](
	[YEAR] [int] NOT NULL,
	[STUDENT_ID] [int] NOT NULL,
	[GROUPS] [nchar](10) NULL,
	[MONTHS] [nchar](30) NULL,
	[FEE] [numeric](8, 2) NULL,
	[PAYSLIP] [numeric](8, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[STUDENT_PROGRESS]    Script Date: 28/08/2022 2:37:10 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STUDENT_PROGRESS](
	[STUDENT_ID] [int] NOT NULL,
	[MONTH] [varchar](10) NOT NULL,
	[YEAR] [varchar](4) NOT NULL,
	[TASK] [varchar](10) NOT NULL,
	[DETAILS] [varchar](100) NOT NULL,
	[TASK_DATE] [date] NULL,
	[SUBJECT_ID] [int] NULL,
	[TOTAL_MARKS] [numeric](5, 2) NULL,
	[OBT_MARKS] [numeric](5, 2) NULL,
	[TEACHER_ID] [varchar](4) NULL,
 CONSTRAINT [PK_STUDENT_PROGRESS] PRIMARY KEY CLUSTERED 
(
	[STUDENT_ID] ASC,
	[MONTH] ASC,
	[YEAR] ASC,
	[TASK] ASC,
	[DETAILS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[STUDENT_STATUS]    Script Date: 28/08/2022 2:37:10 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STUDENT_STATUS](
	[STATUS_ID] [varchar](2) NOT NULL,
	[STATUS_DESC] [varchar](10) NULL,
 CONSTRAINT [PK_STUDENT_STATUS] PRIMARY KEY CLUSTERED 
(
	[STATUS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SUBJECTS]    Script Date: 28/08/2022 2:37:10 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SUBJECTS](
	[SUBJECT_ID] [int] NOT NULL,
	[SUBJECT_NAME] [varchar](20) NULL,
	[DEPT_ID] [int] NULL,
	[CLASS_ID] [int] NULL,
 CONSTRAINT [PK_SUBJECTS] PRIMARY KEY CLUSTERED 
(
	[SUBJECT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TEST_CIT]    Script Date: 28/08/2022 2:37:10 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEST_CIT](
	[ID] [int] NOT NULL,
	[QUESTION] [varchar](200) NULL,
	[OPTION_A] [varchar](200) NULL,
	[OPTION_B] [varchar](200) NULL,
	[OPTION_C] [varchar](200) NULL,
	[OPTION_D] [varchar](200) NULL,
	[OPTION_E] [varchar](200) NULL,
	[ANSWER] [varchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TEST_ENGLISH_LANGUAGE]    Script Date: 28/08/2022 2:37:10 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEST_ENGLISH_LANGUAGE](
	[ID] [int] NOT NULL,
	[QUESTION] [varchar](200) NULL,
	[OPTION_A] [varchar](200) NULL,
	[OPTION_B] [varchar](200) NULL,
	[OPTION_C] [varchar](200) NULL,
	[OPTION_D] [varchar](200) NULL,
	[OPTION_E] [varchar](200) NULL,
	[ANSWER] [varchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TEST_GRAPHICS]    Script Date: 28/08/2022 2:37:10 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEST_GRAPHICS](
	[ID] [int] NOT NULL,
	[QUESTION] [varchar](200) NULL,
	[OPTION_A] [varchar](200) NULL,
	[OPTION_B] [varchar](200) NULL,
	[OPTION_C] [varchar](200) NULL,
	[OPTION_D] [varchar](200) NULL,
	[OPTION_E] [varchar](200) NULL,
	[ANSWER] [varchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TEST_OFFICE_AUTO]    Script Date: 28/08/2022 2:37:10 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEST_OFFICE_AUTO](
	[ID] [int] NOT NULL,
	[QUESTION] [varchar](200) NULL,
	[OPTION_A] [varchar](200) NULL,
	[OPTION_B] [varchar](200) NULL,
	[OPTION_C] [varchar](200) NULL,
	[OPTION_D] [varchar](200) NULL,
	[OPTION_E] [varchar](200) NULL,
	[ANSWER] [varchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TEST_RESULT]    Script Date: 28/08/2022 2:37:10 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEST_RESULT](
	[RESULT_ID] [int] NOT NULL,
	[STUDENT_ID] [int] NOT NULL,
	[COURSE_ID] [int] NOT NULL,
	[TEST_DATE] [datetime] NULL,
	[TIME_TAKEN] [varchar](10) NULL,
	[TOTAL_MARKS] [numeric](5, 2) NULL,
	[OBT_MARKS] [numeric](5, 2) NULL,
	[PERCENTAGE] [numeric](5, 2) NULL,
	[GRADE] [varchar](5) NULL,
 CONSTRAINT [PK_TEST_RESULT] PRIMARY KEY CLUSTERED 
(
	[RESULT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TEST_RESULT_DETAILS]    Script Date: 28/08/2022 2:37:10 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEST_RESULT_DETAILS](
	[RESULT_ID] [int] NOT NULL,
	[QUESTION] [varchar](200) NULL,
	[ANSWER] [varchar](200) NULL,
	[IS_CORRECT] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[YEAR]    Script Date: 28/08/2022 2:37:10 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YEAR](
	[Year_Id] [int] NOT NULL,
	[Year_Descr] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[Year_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[APPLICATION_CONFIGURATION] ([CONFIG_ID], [CONFIG_VALUE]) VALUES (N'PageSize', N'20')
GO
SET IDENTITY_INSERT [dbo].[AUDIT_LOG] ON 

INSERT [dbo].[AUDIT_LOG] ([ID], [Name], [DateTime], [DEVICE_NAME], [MODULE], [ACTION], [USERID], [PROFESSION], [DECRIPTION]) VALUES (1, N'Abdullah                                          ', N'28/08/2022 1:43:00 pm         ', N'                              ', N'sdf', N'Create', N'1                   ', N'Teacher', N'Create Student of Id3')
INSERT [dbo].[AUDIT_LOG] ([ID], [Name], [DateTime], [DEVICE_NAME], [MODULE], [ACTION], [USERID], [PROFESSION], [DECRIPTION]) VALUES (2, N'Abdullah                                          ', N'28/08/2022 2:00:58 pm         ', N'                              ', N'Student', N'Create', N'1                   ', N'Teacher', N'Create Student of Id3')
SET IDENTITY_INSERT [dbo].[AUDIT_LOG] OFF
GO
INSERT [dbo].[CLASSES] ([Class_ID], [Class_Desc], [Dept_ID], [Is_Selected]) VALUES (1, N'One', 1, 0)
INSERT [dbo].[CLASSES] ([Class_ID], [Class_Desc], [Dept_ID], [Is_Selected]) VALUES (2, N'Two', 1, 0)
INSERT [dbo].[CLASSES] ([Class_ID], [Class_Desc], [Dept_ID], [Is_Selected]) VALUES (3, N'Three', 1, 0)
INSERT [dbo].[CLASSES] ([Class_ID], [Class_Desc], [Dept_ID], [Is_Selected]) VALUES (4, N'Four', 1, 0)
INSERT [dbo].[CLASSES] ([Class_ID], [Class_Desc], [Dept_ID], [Is_Selected]) VALUES (5, N'Five', 1, 0)
INSERT [dbo].[CLASSES] ([Class_ID], [Class_Desc], [Dept_ID], [Is_Selected]) VALUES (6, N'Six', 1, 0)
INSERT [dbo].[CLASSES] ([Class_ID], [Class_Desc], [Dept_ID], [Is_Selected]) VALUES (7, N'Seven', 1, 0)
INSERT [dbo].[CLASSES] ([Class_ID], [Class_Desc], [Dept_ID], [Is_Selected]) VALUES (8, N'Eight', 1, 0)
INSERT [dbo].[CLASSES] ([Class_ID], [Class_Desc], [Dept_ID], [Is_Selected]) VALUES (9, N'Nine', 1, 0)
INSERT [dbo].[CLASSES] ([Class_ID], [Class_Desc], [Dept_ID], [Is_Selected]) VALUES (10, N'Ten', 1, 0)
INSERT [dbo].[CLASSES] ([Class_ID], [Class_Desc], [Dept_ID], [Is_Selected]) VALUES (11, N'Eleven', 1, 0)
INSERT [dbo].[CLASSES] ([Class_ID], [Class_Desc], [Dept_ID], [Is_Selected]) VALUES (12, N'Twelve', 1, 0)
INSERT [dbo].[CLASSES] ([Class_ID], [Class_Desc], [Dept_ID], [Is_Selected]) VALUES (13, N'Thirteen', 1, 0)
INSERT [dbo].[CLASSES] ([Class_ID], [Class_Desc], [Dept_ID], [Is_Selected]) VALUES (14, N'Fourteen', 1, 0)
INSERT [dbo].[CLASSES] ([Class_ID], [Class_Desc], [Dept_ID], [Is_Selected]) VALUES (16, N'Sixteen', 1, 0)
INSERT [dbo].[CLASSES] ([Class_ID], [Class_Desc], [Dept_ID], [Is_Selected]) VALUES (17, N'Seventeen', 1, 0)
INSERT [dbo].[CLASSES] ([Class_ID], [Class_Desc], [Dept_ID], [Is_Selected]) VALUES (18, N'Eighteen', 1, 0)
INSERT [dbo].[CLASSES] ([Class_ID], [Class_Desc], [Dept_ID], [Is_Selected]) VALUES (19, N'Ninteen', 1, 0)
INSERT [dbo].[CLASSES] ([Class_ID], [Class_Desc], [Dept_ID], [Is_Selected]) VALUES (20, N'Twenty', 1, 0)
INSERT [dbo].[CLASSES] ([Class_ID], [Class_Desc], [Dept_ID], [Is_Selected]) VALUES (21, N'qas', 1, 0)
INSERT [dbo].[CLASSES] ([Class_ID], [Class_Desc], [Dept_ID], [Is_Selected]) VALUES (22, N'as', 1, 0)
INSERT [dbo].[CLASSES] ([Class_ID], [Class_Desc], [Dept_ID], [Is_Selected]) VALUES (23, N'sdcf', 1, 0)
INSERT [dbo].[CLASSES] ([Class_ID], [Class_Desc], [Dept_ID], [Is_Selected]) VALUES (24, N'15', 1, 0)
INSERT [dbo].[CLASSES] ([Class_ID], [Class_Desc], [Dept_ID], [Is_Selected]) VALUES (25, N'as', 1, 0)
INSERT [dbo].[CLASSES] ([Class_ID], [Class_Desc], [Dept_ID], [Is_Selected]) VALUES (26, N'Ninty', 1, 0)
INSERT [dbo].[CLASSES] ([Class_ID], [Class_Desc], [Dept_ID], [Is_Selected]) VALUES (33, N'One', 1, 0)
INSERT [dbo].[CLASSES] ([Class_ID], [Class_Desc], [Dept_ID], [Is_Selected]) VALUES (34, N'One', 1, 0)
INSERT [dbo].[CLASSES] ([Class_ID], [Class_Desc], [Dept_ID], [Is_Selected]) VALUES (36, N'One', 1, 0)
GO
INSERT [dbo].[DEPARTMENT] ([Dept_ID], [Dept_Desc]) VALUES (1, N'COmputer')
GO
INSERT [dbo].[DESIGNATION] ([DESIGNATION_ID], [DESIGNATION_Desc]) VALUES (1, N'Teacher')
GO
INSERT [dbo].[EMPLOYEE] ([EMPLOYEE_ID], [NAME], [DEPT_ID], [DESIGNATION_ID], [GRADE], [QUALIFICATION], [SUBJECT_OF_TEACHING], [PHONE], [ADDRESS], [JOINING_DATE], [IS_ACTIVE], [PWD], [DATE_OF_BIRTH], [LEAVES], [PIC], [PASSWORD]) VALUES (N'1', N'Abdullah                      ', 1, 1, N'A', N'Graduate', N'Math', N'03102666910 ', N'HOusws n ab', CAST(N'2020-10-22T00:00:00.000' AS DateTime), CAST(1 AS Numeric(1, 0)), N'123', CAST(N'2020-10-22' AS Date), 1, NULL, N'123')
GO
INSERT [dbo].[STUDENT] ([STUDENT_ID], [NAME], [FATHER_NAME], [PHONE], [FATHER_PHONE], [ADDRESS], [EMAIL], [GENDER], [DEPT_ID], [CLASS_ID], [SECTION], [GROUPS], [YEAR], [STATUS_ID], [SUBJECT], [TUITION_FEE], [ADMISSION_FEE], [ADMISSION_DATE], [TIMING], [PAYMENT_PLAN], [CERTIFICTATE], [ImageURL], [PIC], [PWD], [Is_Selected]) VALUES (1, N'Abdullah                      ', N'2                             ', N'3132133     ', N'            ', NULL, NULL, N'Male  ', 1, 2, NULL, NULL, N'1', N'C', N'a         ', CAST(111 AS Numeric(5, 0)), CAST(22 AS Numeric(5, 0)), NULL, N'12        ', N'12        ', N'1         ', N'1                             ', NULL, NULL, 0)
INSERT [dbo].[STUDENT] ([STUDENT_ID], [NAME], [FATHER_NAME], [PHONE], [FATHER_PHONE], [ADDRESS], [EMAIL], [GENDER], [DEPT_ID], [CLASS_ID], [SECTION], [GROUPS], [YEAR], [STATUS_ID], [SUBJECT], [TUITION_FEE], [ADMISSION_FEE], [ADMISSION_DATE], [TIMING], [PAYMENT_PLAN], [CERTIFICTATE], [ImageURL], [PIC], [PWD], [Is_Selected]) VALUES (2, N'Dsh                           ', N'sdf                           ', N'3           ', N'3           ', N'sdf                                                                                                                                                                                                     ', N'd@ed.co             ', N'F     ', 1, 2, N'2', N'1         ', N'2', N'C', N's         ', CAST(3 AS Numeric(5, 0)), CAST(3 AS Numeric(5, 0)), NULL, N'3         ', N'M         ', N'A         ', N'2                             ', NULL, NULL, 0)
INSERT [dbo].[STUDENT] ([STUDENT_ID], [NAME], [FATHER_NAME], [PHONE], [FATHER_PHONE], [ADDRESS], [EMAIL], [GENDER], [DEPT_ID], [CLASS_ID], [SECTION], [GROUPS], [YEAR], [STATUS_ID], [SUBJECT], [TUITION_FEE], [ADMISSION_FEE], [ADMISSION_DATE], [TIMING], [PAYMENT_PLAN], [CERTIFICTATE], [ImageURL], [PIC], [PWD], [Is_Selected]) VALUES (3, N'dasd                          ', N'asd                           ', N'asd         ', N'sd          ', N'asd                                                                                                                                                                                                     ', N'asd                 ', N'asd   ', 1, 19, N'sd', N'asd       ', N'1', N'C', N'asd       ', CAST(100 AS Numeric(5, 0)), CAST(100 AS Numeric(5, 0)), NULL, N'asd       ', N'asd       ', N'asd       ', N'asd                           ', NULL, NULL, 0)
GO
INSERT [dbo].[STUDENT_FEE] ([YEAR], [STUDENT_ID], [GROUPS], [MONTHS], [FEE], [PAYSLIP]) VALUES (2022, 1, N'1         ', N'Jun                           ', CAST(500.00 AS Numeric(8, 2)), CAST(1212.00 AS Numeric(8, 2)))
GO
INSERT [dbo].[STUDENT_STATUS] ([STATUS_ID], [STATUS_DESC]) VALUES (N'C', N'COMPLETED')
INSERT [dbo].[STUDENT_STATUS] ([STATUS_ID], [STATUS_DESC]) VALUES (N'L', N'LEFT')
INSERT [dbo].[STUDENT_STATUS] ([STATUS_ID], [STATUS_DESC]) VALUES (N'S', N'STUDYING')
GO
INSERT [dbo].[YEAR] ([Year_Id], [Year_Descr]) VALUES (1, N'Asad')
GO
/****** Object:  Index [STUDENT_ID]    Script Date: 28/08/2022 2:37:11 pm ******/
CREATE UNIQUE NONCLUSTERED INDEX [STUDENT_ID] ON [dbo].[STUDENT]
(
	[STUDENT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[APPARAISAL_TOTAL_POINTS]  WITH CHECK ADD  CONSTRAINT [RefTEACHERID_APP_TOT_POINT] FOREIGN KEY([EMPLOYEE_ID])
REFERENCES [dbo].[EMPLOYEE] ([EMPLOYEE_ID])
GO
ALTER TABLE [dbo].[APPARAISAL_TOTAL_POINTS] CHECK CONSTRAINT [RefTEACHERID_APP_TOT_POINT]
GO
ALTER TABLE [dbo].[APPRAISAL_POINTS]  WITH CHECK ADD  CONSTRAINT [RefAPPRAISALID] FOREIGN KEY([APPRAISAL_ID])
REFERENCES [dbo].[APPRAISAL] ([APPRAISAL_ID])
GO
ALTER TABLE [dbo].[APPRAISAL_POINTS] CHECK CONSTRAINT [RefAPPRAISALID]
GO
ALTER TABLE [dbo].[APPRAISAL_POINTS]  WITH CHECK ADD  CONSTRAINT [RefTEACHERID] FOREIGN KEY([EMPLOYEE_ID])
REFERENCES [dbo].[EMPLOYEE] ([EMPLOYEE_ID])
GO
ALTER TABLE [dbo].[APPRAISAL_POINTS] CHECK CONSTRAINT [RefTEACHERID]
GO
ALTER TABLE [dbo].[COURSES]  WITH CHECK ADD  CONSTRAINT [FK_COURSE_COURSE_DEPARTMENT] FOREIGN KEY([Dept_ID])
REFERENCES [dbo].[DEPARTMENT] ([Dept_ID])
GO
ALTER TABLE [dbo].[COURSES] CHECK CONSTRAINT [FK_COURSE_COURSE_DEPARTMENT]
GO
ALTER TABLE [dbo].[EMPLOYEE]  WITH CHECK ADD  CONSTRAINT [FK_DESIGNATION_DEPARTMENT] FOREIGN KEY([DESIGNATION_ID])
REFERENCES [dbo].[DESIGNATION] ([DESIGNATION_ID])
GO
ALTER TABLE [dbo].[EMPLOYEE] CHECK CONSTRAINT [FK_DESIGNATION_DEPARTMENT]
GO
ALTER TABLE [dbo].[EMPLOYEE]  WITH CHECK ADD  CONSTRAINT [FK_EMPLOYEE_DEPARTMENT] FOREIGN KEY([DEPT_ID])
REFERENCES [dbo].[DEPARTMENT] ([Dept_ID])
GO
ALTER TABLE [dbo].[EMPLOYEE] CHECK CONSTRAINT [FK_EMPLOYEE_DEPARTMENT]
GO
ALTER TABLE [dbo].[FINANCE]  WITH CHECK ADD  CONSTRAINT [FK_[FINANCE_EMP] FOREIGN KEY([EMPLOYEE_ID])
REFERENCES [dbo].[EMPLOYEE] ([EMPLOYEE_ID])
GO
ALTER TABLE [dbo].[FINANCE] CHECK CONSTRAINT [FK_[FINANCE_EMP]
GO
ALTER TABLE [dbo].[GROUP_PERMISSION]  WITH CHECK ADD  CONSTRAINT [FK_GROUP_PERMISSION_GROUP] FOREIGN KEY([GROUP_ID])
REFERENCES [dbo].[GROUPS] ([GROUP_ID])
GO
ALTER TABLE [dbo].[GROUP_PERMISSION] CHECK CONSTRAINT [FK_GROUP_PERMISSION_GROUP]
GO
ALTER TABLE [dbo].[GROUP_PERMISSION]  WITH CHECK ADD  CONSTRAINT [FK_GROUPS_PERMISSION] FOREIGN KEY([PERMISSION_ID])
REFERENCES [dbo].[PERMISSION] ([PERMISSION_ID])
GO
ALTER TABLE [dbo].[GROUP_PERMISSION] CHECK CONSTRAINT [FK_GROUPS_PERMISSION]
GO
ALTER TABLE [dbo].[GROUP_USER]  WITH CHECK ADD  CONSTRAINT [FK_GROUP_USER] FOREIGN KEY([GROUP_ID])
REFERENCES [dbo].[GROUPS] ([GROUP_ID])
GO
ALTER TABLE [dbo].[GROUP_USER] CHECK CONSTRAINT [FK_GROUP_USER]
GO
ALTER TABLE [dbo].[HRMS]  WITH CHECK ADD  CONSTRAINT [FK_HRMS_EMPLOYEE] FOREIGN KEY([Employee_ID])
REFERENCES [dbo].[EMPLOYEE] ([EMPLOYEE_ID])
GO
ALTER TABLE [dbo].[HRMS] CHECK CONSTRAINT [FK_HRMS_EMPLOYEE]
GO
ALTER TABLE [dbo].[HRMS_EMPLOYEE]  WITH CHECK ADD  CONSTRAINT [FK_HRMS_EMPLOYEE_EMP] FOREIGN KEY([EMPLOYEE_ID])
REFERENCES [dbo].[EMPLOYEE] ([EMPLOYEE_ID])
GO
ALTER TABLE [dbo].[HRMS_EMPLOYEE] CHECK CONSTRAINT [FK_HRMS_EMPLOYEE_EMP]
GO
ALTER TABLE [dbo].[HRMS_Managed]  WITH CHECK ADD  CONSTRAINT [FK_HRMS_Managed_Teacher] FOREIGN KEY([EMPLOYEE_ID])
REFERENCES [dbo].[EMPLOYEE] ([EMPLOYEE_ID])
GO
ALTER TABLE [dbo].[HRMS_Managed] CHECK CONSTRAINT [FK_HRMS_Managed_Teacher]
GO
ALTER TABLE [dbo].[PAY_SLIP]  WITH CHECK ADD  CONSTRAINT [FK_PAY_SLIP_EMP] FOREIGN KEY([EMPLOYEE_ID])
REFERENCES [dbo].[EMPLOYEE] ([EMPLOYEE_ID])
GO
ALTER TABLE [dbo].[PAY_SLIP] CHECK CONSTRAINT [FK_PAY_SLIP_EMP]
GO
ALTER TABLE [dbo].[PAY_SLIP_DETAILS]  WITH CHECK ADD  CONSTRAINT [FK_DETAILS_PAY_SLIP] FOREIGN KEY([PAY_SLIP_ID])
REFERENCES [dbo].[PAY_SLIP] ([PAY_SLIP_ID])
GO
ALTER TABLE [dbo].[PAY_SLIP_DETAILS] CHECK CONSTRAINT [FK_DETAILS_PAY_SLIP]
GO
ALTER TABLE [dbo].[RECEIPT_DETAILS]  WITH CHECK ADD  CONSTRAINT [FK_RECEIPT_DETAILS_CLASS] FOREIGN KEY([CLASS_ID])
REFERENCES [dbo].[CLASSES] ([Class_ID])
GO
ALTER TABLE [dbo].[RECEIPT_DETAILS] CHECK CONSTRAINT [FK_RECEIPT_DETAILS_CLASS]
GO
ALTER TABLE [dbo].[RECEIPT_DETAILS]  WITH CHECK ADD  CONSTRAINT [FK_RECEIPT_DETAILS_DEPARTMENT] FOREIGN KEY([Dept_ID])
REFERENCES [dbo].[DEPARTMENT] ([Dept_ID])
GO
ALTER TABLE [dbo].[RECEIPT_DETAILS] CHECK CONSTRAINT [FK_RECEIPT_DETAILS_DEPARTMENT]
GO
ALTER TABLE [dbo].[Report_Filter_Mapping]  WITH CHECK ADD  CONSTRAINT [RefFILTERID] FOREIGN KEY([Filter_ID])
REFERENCES [dbo].[Report_Filter] ([Filter_ID])
GO
ALTER TABLE [dbo].[Report_Filter_Mapping] CHECK CONSTRAINT [RefFILTERID]
GO
ALTER TABLE [dbo].[Report_Filter_Mapping]  WITH CHECK ADD  CONSTRAINT [RefREPORTID] FOREIGN KEY([Report_ID])
REFERENCES [dbo].[Report] ([Report_ID])
GO
ALTER TABLE [dbo].[Report_Filter_Mapping] CHECK CONSTRAINT [RefREPORTID]
GO
ALTER TABLE [dbo].[SALARY]  WITH CHECK ADD  CONSTRAINT [FK_SALARY_EMP] FOREIGN KEY([EMPLOYEE_ID])
REFERENCES [dbo].[EMPLOYEE] ([EMPLOYEE_ID])
GO
ALTER TABLE [dbo].[SALARY] CHECK CONSTRAINT [FK_SALARY_EMP]
GO
ALTER TABLE [dbo].[STUDENT_PROGRESS]  WITH CHECK ADD  CONSTRAINT [FK_STUDENT_PROGRESS_STUDENT] FOREIGN KEY([STUDENT_ID], [YEAR])
REFERENCES [dbo].[STUDENT] ([STUDENT_ID], [YEAR])
GO
ALTER TABLE [dbo].[STUDENT_PROGRESS] CHECK CONSTRAINT [FK_STUDENT_PROGRESS_STUDENT]
GO
ALTER TABLE [dbo].[STUDENT_PROGRESS]  WITH CHECK ADD  CONSTRAINT [FK_STUDENT_PROGRESS_SUBJECT] FOREIGN KEY([SUBJECT_ID])
REFERENCES [dbo].[SUBJECTS] ([SUBJECT_ID])
GO
ALTER TABLE [dbo].[STUDENT_PROGRESS] CHECK CONSTRAINT [FK_STUDENT_PROGRESS_SUBJECT]
GO
ALTER TABLE [dbo].[SUBJECTS]  WITH CHECK ADD  CONSTRAINT [FK_SUBJECTS_CLASS] FOREIGN KEY([CLASS_ID])
REFERENCES [dbo].[CLASSES] ([Class_ID])
GO
ALTER TABLE [dbo].[SUBJECTS] CHECK CONSTRAINT [FK_SUBJECTS_CLASS]
GO
ALTER TABLE [dbo].[SUBJECTS]  WITH CHECK ADD  CONSTRAINT [FK_SUBJECTS_DEPT] FOREIGN KEY([DEPT_ID])
REFERENCES [dbo].[DEPARTMENT] ([Dept_ID])
GO
ALTER TABLE [dbo].[SUBJECTS] CHECK CONSTRAINT [FK_SUBJECTS_DEPT]
GO
ALTER TABLE [dbo].[TEST_RESULT]  WITH CHECK ADD  CONSTRAINT [FK_TEST_RESULT_COURSE] FOREIGN KEY([COURSE_ID])
REFERENCES [dbo].[COURSES] ([COURSE_ID])
GO
ALTER TABLE [dbo].[TEST_RESULT] CHECK CONSTRAINT [FK_TEST_RESULT_COURSE]
GO
ALTER TABLE [dbo].[TEST_RESULT]  WITH CHECK ADD  CONSTRAINT [FK_TEST_RESULT_STUDENT] FOREIGN KEY([STUDENT_ID])
REFERENCES [dbo].[STUDENT] ([STUDENT_ID])
GO
ALTER TABLE [dbo].[TEST_RESULT] CHECK CONSTRAINT [FK_TEST_RESULT_STUDENT]
GO
ALTER TABLE [dbo].[TEST_RESULT_DETAILS]  WITH CHECK ADD  CONSTRAINT [FK_TEST_RESULT_DETAILS] FOREIGN KEY([RESULT_ID])
REFERENCES [dbo].[TEST_RESULT] ([RESULT_ID])
GO
ALTER TABLE [dbo].[TEST_RESULT_DETAILS] CHECK CONSTRAINT [FK_TEST_RESULT_DETAILS]
GO
USE [master]
GO
ALTER DATABASE [KI_MANAGEMENT_SYSTEM] SET  READ_WRITE 
GO
