USE [FlightBookingWebsite]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 18.02.2022 12:18:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Aircrafts]    Script Date: 18.02.2022 12:18:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aircrafts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AircraftModel] [nvarchar](max) NOT NULL,
	[AircraftName] [nvarchar](max) NOT NULL,
	[AircraftCapacity] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[UpdateDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Aircrafts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Airports]    Script Date: 18.02.2022 12:18:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Airports](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PortName] [nvarchar](max) NOT NULL,
	[PortCode] [nvarchar](max) NOT NULL,
	[CityId] [int] NOT NULL,
	[CountryId] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[UpdateDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Airports] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cities]    Script Date: 18.02.2022 12:18:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cities](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [nvarchar](max) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[UpdateDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Cities] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Countries]    Script Date: 18.02.2022 12:18:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Countries](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [nvarchar](max) NOT NULL,
	[CountryCode] [nvarchar](max) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[UpdateDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Countries] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reservations]    Script Date: 18.02.2022 12:18:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reservations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SchFlightId] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[CitizenId] [int] NULL,
	[MobileNumber] [int] NULL,
	[Mail] [nvarchar](50) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[IsDeleted] [bit] NULL,
	[UpdateDate] [datetime2](7) NULL,
 CONSTRAINT [PK_Reservation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ScheduledFlights]    Script Date: 18.02.2022 12:18:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScheduledFlights](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FlightDepartureAirportId] [int] NOT NULL,
	[FlightArrivalAirportId] [int] NOT NULL,
	[ArrivalDate] [datetime2](7) NULL,
	[FlightDate] [datetime2](7) NOT NULL,
	[FlightNumber] [nvarchar](max) NOT NULL,
	[FlightAirline] [nvarchar](max) NOT NULL,
	[Price] [int] NULL,
	[FlightType] [nchar](10) NULL,
	[FlightAircraftId] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[UpdateDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_ScheduledFlights] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220207073434_createAllTables', N'6.0.1')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220207074552_inheritAllEntitiesFromBaseEntity', N'6.0.1')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220207132757_GetRequestedToAddNewCountry', N'6.0.1')
GO
SET IDENTITY_INSERT [dbo].[Aircrafts] ON 
GO
INSERT [dbo].[Aircrafts] ([Id], [AircraftModel], [AircraftName], [AircraftCapacity], [CreatedDate], [IsDeleted], [UpdateDate]) VALUES (1, N'Boeing', N'CHUP1', 183, CAST(N'2022-02-08T10:34:13.7408289' AS DateTime2), 0, CAST(N'2022-02-08T10:34:13.7409273' AS DateTime2))
GO
INSERT [dbo].[Aircrafts] ([Id], [AircraftModel], [AircraftName], [AircraftCapacity], [CreatedDate], [IsDeleted], [UpdateDate]) VALUES (2, N'k', N'a', 100, CAST(N'2022-02-08T10:34:48.6241147' AS DateTime2), 0, CAST(N'2022-02-08T10:46:17.1834431' AS DateTime2))
GO
INSERT [dbo].[Aircrafts] ([Id], [AircraftModel], [AircraftName], [AircraftCapacity], [CreatedDate], [IsDeleted], [UpdateDate]) VALUES (4, N'string', N'string', 0, CAST(N'2022-02-08T12:31:25.3712112' AS DateTime2), 0, CAST(N'2022-02-08T12:31:25.3713309' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[Aircrafts] OFF
GO
SET IDENTITY_INSERT [dbo].[Airports] ON 
GO
INSERT [dbo].[Airports] ([Id], [PortName], [PortCode], [CityId], [CountryId], [CreatedDate], [IsDeleted], [UpdateDate]) VALUES (1, N'Atatürk Hava Limanı', N'ATA', 2, 1, CAST(N'2022-02-07T00:00:00.0000000' AS DateTime2), 0, CAST(N'2022-02-07T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Airports] ([Id], [PortName], [PortCode], [CityId], [CountryId], [CreatedDate], [IsDeleted], [UpdateDate]) VALUES (2, N'Esenboğa Airport', N'ESB', 2, 1, CAST(N'2022-02-08T13:44:55.2219751' AS DateTime2), 0, CAST(N'2022-02-08T13:44:55.2220206' AS DateTime2))
GO
INSERT [dbo].[Airports] ([Id], [PortName], [PortCode], [CityId], [CountryId], [CreatedDate], [IsDeleted], [UpdateDate]) VALUES (3, N'Sabiha Gökçen Airport', N'SAW', 1, 1, CAST(N'2022-02-08T13:45:30.3576471' AS DateTime2), 0, CAST(N'2022-02-08T13:45:30.3576488' AS DateTime2))
GO
INSERT [dbo].[Airports] ([Id], [PortName], [PortCode], [CityId], [CountryId], [CreatedDate], [IsDeleted], [UpdateDate]) VALUES (5, N'Tegel Airport', N'TGL', 5, 2, CAST(N'2022-02-08T13:52:39.5434108' AS DateTime2), 0, CAST(N'2022-02-08T13:52:39.9832267' AS DateTime2))
GO
INSERT [dbo].[Airports] ([Id], [PortName], [PortCode], [CityId], [CountryId], [CreatedDate], [IsDeleted], [UpdateDate]) VALUES (6, N'Schönefeld Airport', N'SCH', 5, 2, CAST(N'2022-02-08T13:54:43.3785458' AS DateTime2), 1, CAST(N'2022-02-08T14:07:23.9336206' AS DateTime2))
GO
INSERT [dbo].[Airports] ([Id], [PortName], [PortCode], [CityId], [CountryId], [CreatedDate], [IsDeleted], [UpdateDate]) VALUES (7, N'Brussles International Airport', N'BRU', 6, 3, CAST(N'2022-02-08T14:01:43.5868465' AS DateTime2), 0, CAST(N'2022-02-08T14:06:34.1377668' AS DateTime2))
GO
INSERT [dbo].[Airports] ([Id], [PortName], [PortCode], [CityId], [CountryId], [CreatedDate], [IsDeleted], [UpdateDate]) VALUES (8, N'Ribovil Airport', N'RIB', 1, 2, CAST(N'2022-02-11T14:58:43.8826967' AS DateTime2), 0, CAST(N'2022-02-11T15:02:47.2639855' AS DateTime2))
GO
INSERT [dbo].[Airports] ([Id], [PortName], [PortCode], [CityId], [CountryId], [CreatedDate], [IsDeleted], [UpdateDate]) VALUES (9, N'Antalya International Airport', N'AYT', 3, 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[Airports] OFF
GO
SET IDENTITY_INSERT [dbo].[Cities] ON 
GO
INSERT [dbo].[Cities] ([Id], [CityName], [CreatedDate], [IsDeleted], [UpdateDate]) VALUES (1, N'Istanbul', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, CAST(N'2022-02-08T14:09:23.7649188' AS DateTime2))
GO
INSERT [dbo].[Cities] ([Id], [CityName], [CreatedDate], [IsDeleted], [UpdateDate]) VALUES (2, N'Ankara', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Cities] ([Id], [CityName], [CreatedDate], [IsDeleted], [UpdateDate]) VALUES (3, N'Antalya', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Cities] ([Id], [CityName], [CreatedDate], [IsDeleted], [UpdateDate]) VALUES (4, N'Dusseldorf', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Cities] ([Id], [CityName], [CreatedDate], [IsDeleted], [UpdateDate]) VALUES (5, N'Berlin', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Cities] ([Id], [CityName], [CreatedDate], [IsDeleted], [UpdateDate]) VALUES (6, N'Brussells', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Cities] ([Id], [CityName], [CreatedDate], [IsDeleted], [UpdateDate]) VALUES (7, N'Milano', CAST(N'2022-02-08T13:57:24.4585018' AS DateTime2), 0, CAST(N'2022-02-08T13:57:24.4585044' AS DateTime2))
GO
INSERT [dbo].[Cities] ([Id], [CityName], [CreatedDate], [IsDeleted], [UpdateDate]) VALUES (8, N'Paris', CAST(N'2022-02-08T14:08:27.4547369' AS DateTime2), 1, CAST(N'2022-02-08T14:09:46.1770195' AS DateTime2))
GO
INSERT [dbo].[Cities] ([Id], [CityName], [CreatedDate], [IsDeleted], [UpdateDate]) VALUES (9, N'Madrid', CAST(N'2022-02-08T14:08:45.1461632' AS DateTime2), 0, CAST(N'2022-02-08T14:08:45.1461649' AS DateTime2))
GO
INSERT [dbo].[Cities] ([Id], [CityName], [CreatedDate], [IsDeleted], [UpdateDate]) VALUES (10, N'Barcelona', CAST(N'2022-02-08T14:08:50.5892697' AS DateTime2), 0, CAST(N'2022-02-08T14:08:50.5892718' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[Cities] OFF
GO
SET IDENTITY_INSERT [dbo].[Countries] ON 
GO
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [CreatedDate], [IsDeleted], [UpdateDate]) VALUES (1, N'Turkey', N'TUR', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [CreatedDate], [IsDeleted], [UpdateDate]) VALUES (2, N'Germany', N'GER', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [CreatedDate], [IsDeleted], [UpdateDate]) VALUES (3, N'Belguim', N'BEL', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [CreatedDate], [IsDeleted], [UpdateDate]) VALUES (4, N'France', N'FRA', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [CreatedDate], [IsDeleted], [UpdateDate]) VALUES (5, N'Italy', N'ITA', CAST(N'2022-02-08T13:56:45.8611499' AS DateTime2), 0, CAST(N'2022-02-08T13:56:45.8611529' AS DateTime2))
GO
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [CreatedDate], [IsDeleted], [UpdateDate]) VALUES (6, N'Spain', N'SPA', CAST(N'2022-02-08T14:12:22.8141313' AS DateTime2), 0, CAST(N'2022-02-08T14:12:22.8141692' AS DateTime2))
GO
INSERT [dbo].[Countries] ([Id], [CountryName], [CountryCode], [CreatedDate], [IsDeleted], [UpdateDate]) VALUES (7, N'Greece', N'GRE', CAST(N'2022-02-08T14:13:05.3892588' AS DateTime2), 1, CAST(N'2022-02-08T14:13:57.5235496' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[Countries] OFF
GO
SET IDENTITY_INSERT [dbo].[Reservations] ON 
GO
INSERT [dbo].[Reservations] ([Id], [SchFlightId], [Name], [Surname], [CitizenId], [MobileNumber], [Mail], [CreatedDate], [IsDeleted], [UpdateDate]) VALUES (1, 2, N'Sarp', N'Polat', 1234, 533, N'bpolat@', NULL, 0, NULL)
GO
INSERT [dbo].[Reservations] ([Id], [SchFlightId], [Name], [Surname], [CitizenId], [MobileNumber], [Mail], [CreatedDate], [IsDeleted], [UpdateDate]) VALUES (2, 2, N'Bengiu', N'Özdemir', 2345, 534, N'bsu@', NULL, 0, NULL)
GO
INSERT [dbo].[Reservations] ([Id], [SchFlightId], [Name], [Surname], [CitizenId], [MobileNumber], [Mail], [CreatedDate], [IsDeleted], [UpdateDate]) VALUES (3, 2, N'Sarp', N'Danışman', 4354, 532, N'zarpd@', NULL, 0, NULL)
GO
INSERT [dbo].[Reservations] ([Id], [SchFlightId], [Name], [Surname], [CitizenId], [MobileNumber], [Mail], [CreatedDate], [IsDeleted], [UpdateDate]) VALUES (4, 2, N'Murat', N'Polat', 9348, 534, N'pltpolat@', NULL, 0, NULL)
GO
INSERT [dbo].[Reservations] ([Id], [SchFlightId], [Name], [Surname], [CitizenId], [MobileNumber], [Mail], [CreatedDate], [IsDeleted], [UpdateDate]) VALUES (6, 2, N'Mehmet', N'Baç', 1234, 548, N'bac@', CAST(N'2022-02-16T18:00:05.1104722' AS DateTime2), 0, CAST(N'2022-02-16T18:00:05.1105187' AS DateTime2))
GO
INSERT [dbo].[Reservations] ([Id], [SchFlightId], [Name], [Surname], [CitizenId], [MobileNumber], [Mail], [CreatedDate], [IsDeleted], [UpdateDate]) VALUES (7, 2, N'Berkay', N'Yılmaz', 9456, 532, N'byılmaz@', CAST(N'2022-02-16T19:53:40.9903521' AS DateTime2), 0, CAST(N'2022-02-16T19:53:40.9903897' AS DateTime2))
GO
INSERT [dbo].[Reservations] ([Id], [SchFlightId], [Name], [Surname], [CitizenId], [MobileNumber], [Mail], [CreatedDate], [IsDeleted], [UpdateDate]) VALUES (36, 2, N'Agubuu', N'Polat', 3664, 0, N'rupolat@', CAST(N'2022-02-17T16:39:43.4512442' AS DateTime2), 0, CAST(N'2022-02-17T16:39:43.4512482' AS DateTime2))
GO
INSERT [dbo].[Reservations] ([Id], [SchFlightId], [Name], [Surname], [CitizenId], [MobileNumber], [Mail], [CreatedDate], [IsDeleted], [UpdateDate]) VALUES (37, 2, N'Agubuu', N'Polat', 12314, 0, N'rupolat@', CAST(N'2022-02-17T16:40:45.9534697' AS DateTime2), 0, CAST(N'2022-02-17T16:40:45.9534739' AS DateTime2))
GO
INSERT [dbo].[Reservations] ([Id], [SchFlightId], [Name], [Surname], [CitizenId], [MobileNumber], [Mail], [CreatedDate], [IsDeleted], [UpdateDate]) VALUES (38, 3, N'John', N'Doe', 1244, 0, N'jd@', CAST(N'2022-02-17T16:42:26.8114026' AS DateTime2), 0, CAST(N'2022-02-17T16:42:26.8114482' AS DateTime2))
GO
INSERT [dbo].[Reservations] ([Id], [SchFlightId], [Name], [Surname], [CitizenId], [MobileNumber], [Mail], [CreatedDate], [IsDeleted], [UpdateDate]) VALUES (39, 6, N'lala', N'lala', 123, 0, N'bgfb', CAST(N'2022-02-17T16:48:00.1595600' AS DateTime2), 0, CAST(N'2022-02-17T16:48:00.1596025' AS DateTime2))
GO
INSERT [dbo].[Reservations] ([Id], [SchFlightId], [Name], [Surname], [CitizenId], [MobileNumber], [Mail], [CreatedDate], [IsDeleted], [UpdateDate]) VALUES (40, 3, N'Yağızalp', N'Ekici', 123123123, 0, N'ygekici@', CAST(N'2022-02-18T10:50:24.5811822' AS DateTime2), 0, CAST(N'2022-02-18T10:50:24.5813050' AS DateTime2))
GO
INSERT [dbo].[Reservations] ([Id], [SchFlightId], [Name], [Surname], [CitizenId], [MobileNumber], [Mail], [CreatedDate], [IsDeleted], [UpdateDate]) VALUES (41, 3, N'sadasd', N'asdas', 1244, 0, N'', CAST(N'2022-02-18T12:03:16.2079451' AS DateTime2), 0, CAST(N'2022-02-18T12:03:16.2079491' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[Reservations] OFF
GO
SET IDENTITY_INSERT [dbo].[ScheduledFlights] ON 
GO
INSERT [dbo].[ScheduledFlights] ([Id], [FlightDepartureAirportId], [FlightArrivalAirportId], [ArrivalDate], [FlightDate], [FlightNumber], [FlightAirline], [Price], [FlightType], [FlightAircraftId], [CreatedDate], [IsDeleted], [UpdateDate]) VALUES (2, 9, 3, CAST(N'2022-02-19T12:57:02.4900000' AS DateTime2), CAST(N'2022-02-19T11:57:02.4900000' AS DateTime2), N'123', N'Chupa', 355, N'Economy   ', 1, CAST(N'2022-02-08T14:58:20.4014353' AS DateTime2), 0, CAST(N'2022-02-08T15:42:21.1004751' AS DateTime2))
GO
INSERT [dbo].[ScheduledFlights] ([Id], [FlightDepartureAirportId], [FlightArrivalAirportId], [ArrivalDate], [FlightDate], [FlightNumber], [FlightAirline], [Price], [FlightType], [FlightAircraftId], [CreatedDate], [IsDeleted], [UpdateDate]) VALUES (3, 9, 3, CAST(N'2022-02-19T13:17:03.6370000' AS DateTime2), CAST(N'2022-02-19T12:17:03.6370000' AS DateTime2), N'345', N'Chupa', 270, N'Economy   ', 1, CAST(N'2022-02-08T15:05:34.1633905' AS DateTime2), 0, CAST(N'2022-02-08T15:20:14.2183563' AS DateTime2))
GO
INSERT [dbo].[ScheduledFlights] ([Id], [FlightDepartureAirportId], [FlightArrivalAirportId], [ArrivalDate], [FlightDate], [FlightNumber], [FlightAirline], [Price], [FlightType], [FlightAircraftId], [CreatedDate], [IsDeleted], [UpdateDate]) VALUES (6, 9, 3, CAST(N'2022-02-19T18:35:52.6770000' AS DateTime2), CAST(N'2022-02-19T17:35:52.6770000' AS DateTime2), N'12', N'12', 550, N'Economy   ', 1, CAST(N'2022-02-08T15:15:50.3456246' AS DateTime2), 0, CAST(N'2022-02-08T15:40:48.4230703' AS DateTime2))
GO
INSERT [dbo].[ScheduledFlights] ([Id], [FlightDepartureAirportId], [FlightArrivalAirportId], [ArrivalDate], [FlightDate], [FlightNumber], [FlightAirline], [Price], [FlightType], [FlightAircraftId], [CreatedDate], [IsDeleted], [UpdateDate]) VALUES (12, 9, 3, CAST(N'2022-02-08T18:35:52.6770000' AS DateTime2), CAST(N'2022-02-08T17:35:52.6770000' AS DateTime2), N'8769', N'Chupa', 700, N'Economy   ', 2, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[ScheduledFlights] ([Id], [FlightDepartureAirportId], [FlightArrivalAirportId], [ArrivalDate], [FlightDate], [FlightNumber], [FlightAirline], [Price], [FlightType], [FlightAircraftId], [CreatedDate], [IsDeleted], [UpdateDate]) VALUES (29, 3, 1, CAST(N'2022-02-18T08:57:29.0710000' AS DateTime2), CAST(N'2022-02-18T08:57:29.0710000' AS DateTime2), N'string', N'string', 0, N'string    ', 1, CAST(N'2022-02-18T11:57:43.5556332' AS DateTime2), 0, CAST(N'2022-02-18T11:57:43.5557410' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[ScheduledFlights] OFF
GO
ALTER TABLE [dbo].[Aircrafts] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Aircrafts] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Aircrafts] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [UpdateDate]
GO
ALTER TABLE [dbo].[Airports] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Airports] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Airports] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [UpdateDate]
GO
ALTER TABLE [dbo].[Cities] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Cities] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Cities] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [UpdateDate]
GO
ALTER TABLE [dbo].[Countries] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Countries] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Countries] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [UpdateDate]
GO
ALTER TABLE [dbo].[ScheduledFlights] ADD  CONSTRAINT [DF__Scheduled__Creat__367C1819]  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ScheduledFlights] ADD  CONSTRAINT [DF__Scheduled__IsDel__37703C52]  DEFAULT (CONVERT([bit],(0))) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[ScheduledFlights] ADD  CONSTRAINT [DF__Scheduled__Updat__3864608B]  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [UpdateDate]
GO
ALTER TABLE [dbo].[Airports]  WITH CHECK ADD  CONSTRAINT [FK_Airports_Cities_CityId] FOREIGN KEY([CityId])
REFERENCES [dbo].[Cities] ([Id])
GO
ALTER TABLE [dbo].[Airports] CHECK CONSTRAINT [FK_Airports_Cities_CityId]
GO
ALTER TABLE [dbo].[Airports]  WITH CHECK ADD  CONSTRAINT [FK_Airports_Countries_CountryId] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Countries] ([Id])
GO
ALTER TABLE [dbo].[Airports] CHECK CONSTRAINT [FK_Airports_Countries_CountryId]
GO
ALTER TABLE [dbo].[Reservations]  WITH CHECK ADD  CONSTRAINT [FK_Reservations_ScheduledFlights] FOREIGN KEY([SchFlightId])
REFERENCES [dbo].[ScheduledFlights] ([Id])
GO
ALTER TABLE [dbo].[Reservations] CHECK CONSTRAINT [FK_Reservations_ScheduledFlights]
GO
ALTER TABLE [dbo].[ScheduledFlights]  WITH CHECK ADD  CONSTRAINT [FK_ScheduledFlights_Aircrafts] FOREIGN KEY([FlightAircraftId])
REFERENCES [dbo].[Aircrafts] ([Id])
GO
ALTER TABLE [dbo].[ScheduledFlights] CHECK CONSTRAINT [FK_ScheduledFlights_Aircrafts]
GO
ALTER TABLE [dbo].[ScheduledFlights]  WITH CHECK ADD  CONSTRAINT [FK_ScheduledFlights_Airports_FlightArrivalAirportId] FOREIGN KEY([FlightArrivalAirportId])
REFERENCES [dbo].[Airports] ([Id])
GO
ALTER TABLE [dbo].[ScheduledFlights] CHECK CONSTRAINT [FK_ScheduledFlights_Airports_FlightArrivalAirportId]
GO
ALTER TABLE [dbo].[ScheduledFlights]  WITH CHECK ADD  CONSTRAINT [FK_ScheduledFlights_Airports_FlightDepartureAirportId] FOREIGN KEY([FlightDepartureAirportId])
REFERENCES [dbo].[Airports] ([Id])
GO
ALTER TABLE [dbo].[ScheduledFlights] CHECK CONSTRAINT [FK_ScheduledFlights_Airports_FlightDepartureAirportId]
GO
