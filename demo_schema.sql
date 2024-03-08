USE [datadev]
GO
/****** Object:  Table [dbo].[Properties]    Script Date: 2/27/2020 12:45:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Properties](
	[Property_ID] [int] IDENTITY(1,1) NOT NULL,
	[Property_Name] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[State] [varchar](50) NULL,
	[ZIP] [int] NULL,
 CONSTRAINT [PK_Properties] PRIMARY KEY CLUSTERED 
(
	[Property_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Requests]    Script Date: 2/27/2020 12:45:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Requests](
	[Request_ID] [int] IDENTITY(1,1) NOT NULL,
	[Unit_ID] [int] NULL,
	[Request_Time] [datetime] NULL,
	[Close_Time] [datetime] NULL,
	[Status] [varchar](50) NULL,
	[Urgency] [varchar](50) NULL,
	[Area] [varchar](50) NULL,
	[Description] [varchar](max) NULL,
	[Technician_ID] [int] NULL,
	[Technician_Comments] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Technicians]    Script Date: 2/27/2020 12:45:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Technicians](
	[Technician_ID] [int] IDENTITY(1,1) NOT NULL,
	[Technician_Name] [varchar](50) NULL,
	[Technician_Email] [varchar](50) NULL,
	[Technician_Phone] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Units]    Script Date: 2/27/2020 12:45:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Units](
	[Unit_ID] [int] IDENTITY(1,1) NOT NULL,
	[Property_ID] [int] NULL,
	[Unit] [nchar](10) NULL,
	[Tenant_Name] [varchar](50) NULL,
	[Tenant_Email] [varchar](50) NULL,
	[Tenant_Phone] [varchar](50) NULL,
 CONSTRAINT [PK_Units] PRIMARY KEY CLUSTERED 
(
	[Unit_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Properties] ON 

INSERT [dbo].[Properties] ([Property_ID], [Property_Name], [Address], [City], [State], [ZIP]) VALUES (1, N'Alpha Apartments', N'1210 Graystone Lakes', N'Seattle', N'WA', 98103)
INSERT [dbo].[Properties] ([Property_ID], [Property_Name], [Address], [City], [State], [ZIP]) VALUES (2, N'Palmore Lofts', N'3121 Cerullo Road', N'Seattle', N'WA', 98117)
INSERT [dbo].[Properties] ([Property_ID], [Property_Name], [Address], [City], [State], [ZIP]) VALUES (3, N'Terra Building', N'64 Mandan Road', N'Seattle', N'WA', 98111)
SET IDENTITY_INSERT [dbo].[Properties] OFF
SET IDENTITY_INSERT [dbo].[Requests] ON 

INSERT [dbo].[Requests] ([Request_ID], [Unit_ID], [Request_Time], [Close_Time], [Status], [Urgency], [Area], [Description], [Technician_ID], [Technician_Comments]) VALUES (1, 38, CAST(N'2020-01-03T09:55:00.000' AS DateTime), CAST(N'2020-01-04T08:29:00.000' AS DateTime), N'Closed', N'Moderate', N'Bathroom', N'Dryer not working.', 1, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
INSERT [dbo].[Requests] ([Request_ID], [Unit_ID], [Request_Time], [Close_Time], [Status], [Urgency], [Area], [Description], [Technician_ID], [Technician_Comments]) VALUES (2, 54, CAST(N'2020-01-02T16:06:00.000' AS DateTime), CAST(N'2020-01-04T15:23:00.000' AS DateTime), N'Closed', N'Low', N'Bathroom', N'Low water pressure.', 2, N'Donec vitae velit vestibulum, aliquam est quis, scelerisque eros.')
INSERT [dbo].[Requests] ([Request_ID], [Unit_ID], [Request_Time], [Close_Time], [Status], [Urgency], [Area], [Description], [Technician_ID], [Technician_Comments]) VALUES (3, 69, CAST(N'2020-01-04T20:32:00.000' AS DateTime), CAST(N'2020-01-06T15:56:00.000' AS DateTime), N'Closed', N'Low', N'Kitchen', N'Outlet next to dishwasher not working.', 2, N'Etiam eu turpis et turpis pharetra placerat nec vel tellus.')
INSERT [dbo].[Requests] ([Request_ID], [Unit_ID], [Request_Time], [Close_Time], [Status], [Urgency], [Area], [Description], [Technician_ID], [Technician_Comments]) VALUES (4, 21, CAST(N'2020-01-07T06:41:00.000' AS DateTime), CAST(N'2020-01-07T13:19:00.000' AS DateTime), N'Closed', N'High', N'Bathroom', N'Pipe leaking under sink.', 4, N'Nulla sit amet diam tincidunt justo mollis malesuada.
')
INSERT [dbo].[Requests] ([Request_ID], [Unit_ID], [Request_Time], [Close_Time], [Status], [Urgency], [Area], [Description], [Technician_ID], [Technician_Comments]) VALUES (5, 14, CAST(N'2020-01-21T20:09:00.000' AS DateTime), CAST(N'2020-01-22T14:11:00.000' AS DateTime), N'In Progress', N'Moderate', N'Living Room', N'Cable is out.', 2, N'Sed varius felis ac nulla pellentesque, a gravida purus facilisis.
')
INSERT [dbo].[Requests] ([Request_ID], [Unit_ID], [Request_Time], [Close_Time], [Status], [Urgency], [Area], [Description], [Technician_ID], [Technician_Comments]) VALUES (6, 66, CAST(N'2020-01-22T18:30:00.000' AS DateTime), CAST(N'2020-01-23T10:59:00.000' AS DateTime), N'Closed', N'Moderate', N'Bathroom', N'Water coming out of sink looks weird.', 3, N'Sed tristique quam eget urna egestas dictum.
')
INSERT [dbo].[Requests] ([Request_ID], [Unit_ID], [Request_Time], [Close_Time], [Status], [Urgency], [Area], [Description], [Technician_ID], [Technician_Comments]) VALUES (7, 77, CAST(N'2020-01-25T20:53:00.000' AS DateTime), CAST(N'2020-01-26T11:44:00.000' AS DateTime), N'Closed', N'Low', N'Kitchen', N'Freezer won''t make any ice.', 4, N'Cras sed enim pretium, pharetra elit vitae, aliquet nibh.
')
INSERT [dbo].[Requests] ([Request_ID], [Unit_ID], [Request_Time], [Close_Time], [Status], [Urgency], [Area], [Description], [Technician_ID], [Technician_Comments]) VALUES (8, 62, CAST(N'2020-01-28T16:02:00.000' AS DateTime), CAST(N'2020-01-29T10:45:00.000' AS DateTime), N'Closed', N'Low', N'Kitchen', N'Dishwasher won''t start.', 1, N'Suspendisse imperdiet est sit amet libero malesuada aliquet.
')
INSERT [dbo].[Requests] ([Request_ID], [Unit_ID], [Request_Time], [Close_Time], [Status], [Urgency], [Area], [Description], [Technician_ID], [Technician_Comments]) VALUES (9, 76, CAST(N'2020-01-25T07:23:00.000' AS DateTime), CAST(N'2020-01-29T12:11:00.000' AS DateTime), N'Closed', N'Low', N'Kitchen', N'Lights over kitchen sink are out.', 2, N'Ut pulvinar ipsum ac tincidunt auctor.')
INSERT [dbo].[Requests] ([Request_ID], [Unit_ID], [Request_Time], [Close_Time], [Status], [Urgency], [Area], [Description], [Technician_ID], [Technician_Comments]) VALUES (10, 29, CAST(N'2020-01-31T11:50:00.000' AS DateTime), CAST(N'2020-02-04T13:16:00.000' AS DateTime), N'Closed', N'Moderate', N'Balcony', N'Wasps nest near the barbecue.', 3, N'Phasellus vitae metus non tellus sodales interdum.
')
INSERT [dbo].[Requests] ([Request_ID], [Unit_ID], [Request_Time], [Close_Time], [Status], [Urgency], [Area], [Description], [Technician_ID], [Technician_Comments]) VALUES (11, 60, CAST(N'2020-02-07T08:49:00.000' AS DateTime), CAST(N'2020-02-09T14:35:00.000' AS DateTime), N'Closed', N'Low', N'Bedroom', N'Closet door came of the track.', 1, N'Maecenas in elit ut mi porttitor consectetur at at elit.
')
INSERT [dbo].[Requests] ([Request_ID], [Unit_ID], [Request_Time], [Close_Time], [Status], [Urgency], [Area], [Description], [Technician_ID], [Technician_Comments]) VALUES (12, 43, CAST(N'2020-02-08T10:23:00.000' AS DateTime), CAST(N'2020-02-10T14:57:00.000' AS DateTime), N'Closed', N'High', N'Living Room', N'Window cracked.', 2, N'Donec malesuada lacus blandit molestie rutrum.
')
INSERT [dbo].[Requests] ([Request_ID], [Unit_ID], [Request_Time], [Close_Time], [Status], [Urgency], [Area], [Description], [Technician_ID], [Technician_Comments]) VALUES (13, 1, CAST(N'2020-02-21T06:27:00.000' AS DateTime), CAST(N'2020-02-21T12:56:00.000' AS DateTime), N'Closed', N'Moderate', N'Bathroom', N'Toilet clogged up.', 4, N'Curabitur vel ante bibendum, ultrices nibh sed, aliquam turpis.
')
INSERT [dbo].[Requests] ([Request_ID], [Unit_ID], [Request_Time], [Close_Time], [Status], [Urgency], [Area], [Description], [Technician_ID], [Technician_Comments]) VALUES (14, 34, CAST(N'2020-02-20T12:12:00.000' AS DateTime), CAST(N'2020-02-23T14:36:00.000' AS DateTime), N'Closed', N'Low', N'Bathroom', N'Faucet dripping non-stop.', 3, N'Aenean congue ante at risus suscipit condimentum.')
INSERT [dbo].[Requests] ([Request_ID], [Unit_ID], [Request_Time], [Close_Time], [Status], [Urgency], [Area], [Description], [Technician_ID], [Technician_Comments]) VALUES (15, 16, CAST(N'2020-02-20T17:46:00.000' AS DateTime), CAST(N'2020-02-23T16:49:00.000' AS DateTime), N'Closed', N'Low', N'Kitchen', N'Disposal doesn''t work.', 4, N'In non massa id ante cursus finibus in eu ante.
')
INSERT [dbo].[Requests] ([Request_ID], [Unit_ID], [Request_Time], [Close_Time], [Status], [Urgency], [Area], [Description], [Technician_ID], [Technician_Comments]) VALUES (16, 61, CAST(N'2020-02-22T07:50:00.000' AS DateTime), CAST(N'2020-02-24T14:33:00.000' AS DateTime), N'Closed', N'Low', N'Kitchen', N'Light in oven blew out.', 1, N'Phasellus in tortor auctor, tincidunt eros in, tempor sapien.
')
INSERT [dbo].[Requests] ([Request_ID], [Unit_ID], [Request_Time], [Close_Time], [Status], [Urgency], [Area], [Description], [Technician_ID], [Technician_Comments]) VALUES (17, 28, CAST(N'2020-02-24T10:05:00.000' AS DateTime), CAST(N'2020-02-25T16:48:00.000' AS DateTime), N'Closed', N'Moderate', N'Bathroom', N'Bathtub drain is very slow.', 3, N'Integer in enim eget mauris laoreet feugiat.
')
INSERT [dbo].[Requests] ([Request_ID], [Unit_ID], [Request_Time], [Close_Time], [Status], [Urgency], [Area], [Description], [Technician_ID], [Technician_Comments]) VALUES (18, 42, CAST(N'2020-02-25T21:07:00.000' AS DateTime), NULL, N'In Progress', N'Low', N'Kitchen', N'Disposal makes a weird noise.', 2, N'Aenean tincidunt tellus nec nisi aliquet molestie.
')
INSERT [dbo].[Requests] ([Request_ID], [Unit_ID], [Request_Time], [Close_Time], [Status], [Urgency], [Area], [Description], [Technician_ID], [Technician_Comments]) VALUES (19, 79, CAST(N'2020-02-25T20:10:00.000' AS DateTime), NULL, N'In Progress', N'Moderate', N'Bathroom', N'Washer isn''t working.', 4, N'Ordered parts to fix washer')
INSERT [dbo].[Requests] ([Request_ID], [Unit_ID], [Request_Time], [Close_Time], [Status], [Urgency], [Area], [Description], [Technician_ID], [Technician_Comments]) VALUES (20, 27, CAST(N'2020-02-26T17:17:00.000' AS DateTime), NULL, N'Requested', N'Low', N'Bathroom', N'Low water pressure in the shower.', 0, N'')
INSERT [dbo].[Requests] ([Request_ID], [Unit_ID], [Request_Time], [Close_Time], [Status], [Urgency], [Area], [Description], [Technician_ID], [Technician_Comments]) VALUES (21, 6, CAST(N'2020-02-26T04:48:00.000' AS DateTime), NULL, N'In Progress', N'Low', N'Kitchen', N'Outlet next to dishwasher not working.', 1, N'sfasd fasds fda fsd')
SET IDENTITY_INSERT [dbo].[Requests] OFF
SET IDENTITY_INSERT [dbo].[Technicians] ON 

INSERT [dbo].[Technicians] ([Technician_ID], [Technician_Name], [Technician_Email], [Technician_Phone]) VALUES (1, N'Eric Fitzgibbons', N'EricBFitzgibbons@teleworm.us', N'954-655-8691')
INSERT [dbo].[Technicians] ([Technician_ID], [Technician_Name], [Technician_Email], [Technician_Phone]) VALUES (2, N'Roger Alves', N'RogerKAlves@jourrapide.com', N'561-636-6658')
INSERT [dbo].[Technicians] ([Technician_ID], [Technician_Name], [Technician_Email], [Technician_Phone]) VALUES (3, N'Sophia Fairbanks', N'SophiaPFairbanks@gustr.com', N'864-497-6576')
INSERT [dbo].[Technicians] ([Technician_ID], [Technician_Name], [Technician_Email], [Technician_Phone]) VALUES (4, N'Nadia Rossiter', N'NadiaRRossiter@superrito.com', N'270-995-2267')
SET IDENTITY_INSERT [dbo].[Technicians] OFF
SET IDENTITY_INSERT [dbo].[Units] ON 

INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (1, 1, N'201', N'Abel Medina', N'AbelSMedina@einrot.com', N'260-837-9486')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (2, 1, N'202', N'Kimberley Rodriguez', N'KimberleyMRodriguez@jourrapide.com', N'217-570-3553')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (3, 1, N'203', N'Paul Ransom', N'PaulCRansom@teleworm.us', N'516-420-5000')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (4, 1, N'204', N'Terrence Bruce', N'TerrenceCBruce@armyspy.com', N'860-817-6714')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (5, 1, N'205', N'Rich Giorgi', N'RichKGiorgi@fleckens.hu', N'936-598-5480')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (6, 1, N'301', N'Tina Leavitt', N'TinaDLeavitt@gustr.com', N'317-206-8619')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (7, 1, N'302', N'Madeline Hua', N'MadelineJHua@superrito.com', N'317-590-2203')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (8, 1, N'303', N'Jessica Barrera', N'JessicaABarrera@gustr.com', N'443-910-4535')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (9, 1, N'304', N'Richard Muncie', N'RichardMMuncie@fleckens.hu', N'518-474-0284')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (10, 1, N'305', N'Mary Bucher', N'MaryJBucher@rhyta.com', N'360-286-4962')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (11, 1, N'401', N'Mitchell Toohey', N'MitchellMToohey@einrot.com', N'309-296-5519')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (12, 1, N'402', N'Barbara Robertson', N'BarbaraTRobertson@gustr.com', N'208-696-2531')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (13, 1, N'403', N'Ester Stoner', N'EsterPStoner@armyspy.com', N'773-923-6843')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (14, 1, N'404', N'Lewis Warkentin', N'LewisLWarkentin@jourrapide.com', N'617-684-4745')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (15, 1, N'405', N'Mark Pilkington', N'MarkLPilkington@superrito.com', N'320-229-1000')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (16, 1, N'501', N'Ricky Colby', N'RickyEColby@gustr.com', N'903-980-5373')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (17, 1, N'502', N'Roy Hutchinson', N'RoyJHutchinson@armyspy.com', N'814-239-0609')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (18, 1, N'503', N'Phillip Skinner', N'PhillipKSkinner@fleckens.hu', N'205-558-4320')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (19, 1, N'504', N'Carroll Mendosa', N'CarrollKMendosa@superrito.com', N'479-495-4458')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (20, 1, N'505', N'Rosanne Moody', N'RosanneJMoody@superrito.com', N'315-227-0843')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (21, 1, N'601', N'Liza Beets', N'LizaLBeets@armyspy.com', N'774-847-4970')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (22, 1, N'602', N'Arthur Chase', N'ArthurJChase@dayrep.com', N'541-427-0886')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (23, 1, N'603', N'Crystal Kelly', N'CrystalJKelly@armyspy.com', N'850-656-8583')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (24, 1, N'604', N'Jason Wright', N'JasonPWright@fleckens.hu', N'870-657-7493')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (25, 1, N'605', N'Scott Cobb', N'ScottACobb@cuvox.de', N'610-984-9445')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (26, 2, N'1A ', N'Sandra Tribble', N'SandraJTribble@jourrapide.com', N'304-638-7957')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (27, 2, N'1B ', N'Xavier Burkey', N'XavierMBurkey@gustr.com', N'904-976-2032')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (28, 2, N'2A ', N'Cari Sandberg', N'CariRSandberg@superrito.com', N'858-684-5482')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (29, 2, N'2B ', N'Scott Smith', N'ScottKSmith@gustr.com', N'847-680-7305')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (30, 3, N'101', N'Daryl Hughes', N'DarylTHughes@cuvox.de', N'423-698-7645')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (31, 3, N'102', N'Victoria Townsend', N'VictoriaJTownsend@dayrep.com', N'254-918-7747')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (32, 3, N'103', N'Tu Whitlow', N'TuFWhitlow@dayrep.com', N'620-897-8511')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (33, 3, N'104', N'Loretta Morey', N'LorettaSMorey@jourrapide.com', N'201-278-4054')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (34, 3, N'105', N'Jame Jameson', N'JameCJameson@einrot.com', N'573-368-8021')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (35, 3, N'106', N'Gladys Dickson', N'GladysRDickson@fleckens.hu', N'267-989-3949')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (36, 3, N'107', N'Daniel Ginyard', N'DanielCGinyard@dayrep.com', N'415-886-4473')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (37, 3, N'108', N'David Avalos', N'DavidCAvalos@dayrep.com', N'865-403-4480')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (38, 3, N'109', N'Jeffrey Rathjen', N'JeffreyVRathjen@gustr.com', N'773-714-3527')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (39, 3, N'110', N'James Maes', N'JamesLMaes@armyspy.com', N'214-858-7764')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (40, 3, N'201', N'Amy Brand', N'AmyJBrand@einrot.com', N'270-695-7759')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (41, 3, N'202', N'Barry Smith', N'BarryASmith@einrot.com', N'941-257-5063')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (42, 3, N'203', N'Porsha Clardy', N'PorshaNClardy@teleworm.us', N'630-831-9517')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (43, 3, N'204', N'Jody Tillmon', N'JodyRTillmon@dayrep.com', N'631-777-4131')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (44, 3, N'205', N'Josh Riggs', N'JoshBRiggs@rhyta.com', N'954-612-1904')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (45, 3, N'206', N'Matt Ballard', N'MattHBallard@jourrapide.com', N'978-789-5905')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (46, 3, N'207', N'Mary Vaughn', N'MaryLVaughn@teleworm.us', N'305-417-2254')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (47, 3, N'208', N'Conrad Outen', N'ConradLOuten@fleckens.hu', N'863-902-3633')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (48, 3, N'209', N'Andy Jacobs', N'AndyCJacobs@fleckens.hu', N'906-753-3756')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (49, 3, N'210', N'Michael Davis', N'MichaelCDavis@jourrapide.com', N'910-410-4088')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (50, 3, N'301', N'April Gregory', N'AprilAGregory@teleworm.us', N'248-440-2429')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (51, 3, N'302', N'Mark Holmes', N'MarkLHolmes@rhyta.com', N'810-386-4872')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (52, 3, N'303', N'Daphne Spiegel', N'DaphneVSpiegel@rhyta.com', N'309-795-0277')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (53, 3, N'304', N'John Amin', N'JohnDAmin@einrot.com', N'716-237-8655')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (54, 3, N'305', N'Ida Lucero', N'IdaHLucero@fleckens.hu', N'660-736-0951')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (55, 3, N'306', N'Jeanne Worley', N'JeanneAWorley@jourrapide.com', N'708-318-4077')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (56, 3, N'307', N'Mark Willis', N'MarkTWillis@armyspy.com', N'812-350-6355')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (57, 3, N'308', N'Jill Landers', N'JillJLanders@superrito.com', N'419-851-1047')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (58, 3, N'309', N'Sherrie Reynolds', N'SherrieNReynolds@armyspy.com', N'760-902-1917')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (59, 3, N'310', N'Shelby Johnson', N'ShelbyJJohnson@teleworm.us', N'715-292-7569')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (60, 3, N'401', N'Dianna Mendez', N'DiannaRMendez@gustr.com', N'240-221-7778')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (61, 3, N'402', N'Betty Wimberly', N'BettyJWimberly@rhyta.com', N'281-443-4589')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (62, 3, N'403', N'Jason Abbott', N'JasonBAbbott@einrot.com', N'989-617-2696')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (63, 3, N'404', N'Linda Gaylor', N'LindaJGaylor@gustr.com', N'831-908-4053')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (64, 3, N'405', N'Luella Torres', N'LuellaRTorres@cuvox.de', N'585-204-7516')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (65, 3, N'406', N'Pamela Alex', N'PamelaRAlex@fleckens.hu', N'240-228-6867')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (66, 3, N'407', N'Lori Peiffer', N'LoriMPeiffer@cuvox.de', N'559-329-5624')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (67, 3, N'408', N'Juan Ballard', N'JuanOBallard@dayrep.com', N'530-689-9912')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (68, 3, N'409', N'Ana Ponds', N'AnaRPonds@teleworm.us', N'607-645-3119')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (69, 3, N'410', N'Janeth Wofford', N'JanethNWofford@dayrep.com', N'440-385-6547')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (70, 3, N'501', N'Heather Sims', N'HeatherJSims@teleworm.us', N'940-716-0237')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (71, 3, N'502', N'Curt Jones', N'CurtCJones@fleckens.hu', N'574-518-7575')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (72, 3, N'503', N'Krystal Regan', N'KrystalERegan@einrot.com', N'817-565-8627')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (73, 3, N'504', N'Arnold Haskell', N'ArnoldGHaskell@superrito.com', N'925-439-4118')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (74, 3, N'505', N'Donald Keith', N'DonaldCKeith@fleckens.hu', N'208-493-4078')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (75, 3, N'506', N'Michael Tillman', N'MichaelATillman@dayrep.com', N'510-902-7325')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (76, 3, N'507', N'Mary Hindman', N'MaryCHindman@einrot.com', N'763-521-3505')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (77, 3, N'508', N'Jamie Jones', N'JamieRJones@superrito.com', N'702-756-4241')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (78, 3, N'509', N'Damon Ballard', N'DamonABallard@superrito.com', N'508-974-0869')
INSERT [dbo].[Units] ([Unit_ID], [Property_ID], [Unit], [Tenant_Name], [Tenant_Email], [Tenant_Phone]) VALUES (79, 3, N'510', N'Brooke Freeman', N'BrookeDFreeman@dayrep.com', N'801-356-5372')
SET IDENTITY_INSERT [dbo].[Units] OFF
