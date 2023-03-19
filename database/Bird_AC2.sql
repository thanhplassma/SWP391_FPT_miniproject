USE [BirdAccommodation]
GO
/****** Object:  Table [dbo].[Bill]    Script Date: 3/20/2023 05:54:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill](
	[bill_id] [int] IDENTITY(1,1) NOT NULL,
	[booking_id] [int] NOT NULL,
	[total_service_amount] [float] NOT NULL,
	[payment_status] [int] NOT NULL,
	[payment_method] [nvarchar](50) NULL,
	[checkout_date] [date] NULL,
	[checkout_img] [text] NULL,
 CONSTRAINT [PK_Bills] PRIMARY KEY CLUSTERED 
(
	[bill_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bird]    Script Date: 3/20/2023 05:54:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bird](
	[bird_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[type_id] [int] NOT NULL,
	[age] [int] NOT NULL,
	[bird_name] [nvarchar](20) NULL,
	[breed] [nvarchar](50) NULL,
	[gender] [int] NOT NULL,
	[image] [nvarchar](100) NULL,
	[description] [nvarchar](100) NULL,
 CONSTRAINT [PK_Birds] PRIMARY KEY CLUSTERED 
(
	[bird_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BirdType]    Script Date: 3/20/2023 05:54:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BirdType](
	[btype_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_BirdType] PRIMARY KEY CLUSTERED 
(
	[btype_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Booking]    Script Date: 3/20/2023 05:54:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Booking](
	[booking_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[bird_id] [int] NOT NULL,
	[date_from] [date] NOT NULL,
	[date_to] [date] NOT NULL,
	[status] [int] NOT NULL,
 CONSTRAINT [PK_Bookings] PRIMARY KEY CLUSTERED 
(
	[booking_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BookingDetail]    Script Date: 3/20/2023 05:54:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookingDetail](
	[bdetail_id] [int] IDENTITY(1,1) NOT NULL,
	[booking_id] [int] NOT NULL,
	[service_id] [int] NOT NULL,
	[booked_price] [float] NOT NULL,
	[quantity] [int] NOT NULL,
	[remain] [int] NOT NULL,
 CONSTRAINT [PK_BookingDetail_1] PRIMARY KEY CLUSTERED 
(
	[bdetail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DailyReport]    Script Date: 3/20/2023 05:54:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DailyReport](
	[dreport_id] [int] IDENTITY(1,1) NOT NULL,
	[booking_id] [int] NOT NULL,
	[date] [date] NOT NULL,
	[service_report_text] [text] NULL,
	[feedback_content] [text] NULL,
 CONSTRAINT [PK_Accommodation] PRIMARY KEY CLUSTERED 
(
	[dreport_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DailyReportImage]    Script Date: 3/20/2023 05:54:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DailyReportImage](
	[dr_image_id] [int] IDENTITY(1,1) NOT NULL,
	[dreport_id] [int] NULL,
	[service_report_image] [nvarchar](50) NULL,
 CONSTRAINT [PK_DailyReportImage] PRIMARY KEY CLUSTERED 
(
	[dr_image_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post]    Script Date: 3/20/2023 05:54:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[post_id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](50) NULL,
	[content] [text] NULL,
	[reference] [text] NULL,
	[image] [text] NULL,
 CONSTRAINT [PK_Post] PRIMARY KEY CLUSTERED 
(
	[post_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Review]    Script Date: 3/20/2023 05:54:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Review](
	[review_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[booking_id] [int] NOT NULL,
	[rating] [float] NOT NULL,
	[comment] [text] NOT NULL,
 CONSTRAINT [PK_Reviews] PRIMARY KEY CLUSTERED 
(
	[review_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 3/20/2023 05:54:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[service_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[description] [text] NULL,
	[status] [int] NOT NULL,
	[price] [float] NOT NULL,
	[image] [text] NULL,
	[isHighlight] [int] NOT NULL,
	[isPack] [int] NOT NULL,
 CONSTRAINT [PK_Services] PRIMARY KEY CLUSTERED 
(
	[service_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 3/20/2023 05:54:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[address] [nvarchar](50) NOT NULL,
	[phone] [nvarchar](10) NOT NULL,
	[role] [int] NOT NULL,
	[status] [int] NOT NULL,
	[user_img] [nvarchar](100) NULL,
	[token] [nvarchar](50) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD  CONSTRAINT [FK_Bills_Bookings] FOREIGN KEY([booking_id])
REFERENCES [dbo].[Booking] ([booking_id])
GO
ALTER TABLE [dbo].[Bill] CHECK CONSTRAINT [FK_Bills_Bookings]
GO
ALTER TABLE [dbo].[Bird]  WITH CHECK ADD  CONSTRAINT [FK_Bird_BirdType] FOREIGN KEY([type_id])
REFERENCES [dbo].[BirdType] ([btype_id])
GO
ALTER TABLE [dbo].[Bird] CHECK CONSTRAINT [FK_Bird_BirdType]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_Bird] FOREIGN KEY([bird_id])
REFERENCES [dbo].[Bird] ([bird_id])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_Bird]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Bookings_User_1] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Bookings_User_1]
GO
ALTER TABLE [dbo].[BookingDetail]  WITH CHECK ADD  CONSTRAINT [FK_BookingDetail_Bookings] FOREIGN KEY([booking_id])
REFERENCES [dbo].[Booking] ([booking_id])
GO
ALTER TABLE [dbo].[BookingDetail] CHECK CONSTRAINT [FK_BookingDetail_Bookings]
GO
ALTER TABLE [dbo].[BookingDetail]  WITH CHECK ADD  CONSTRAINT [FK_BookingDetail_Services1] FOREIGN KEY([service_id])
REFERENCES [dbo].[Service] ([service_id])
GO
ALTER TABLE [dbo].[BookingDetail] CHECK CONSTRAINT [FK_BookingDetail_Services1]
GO
ALTER TABLE [dbo].[DailyReport]  WITH CHECK ADD  CONSTRAINT [FK_DailyReport_Booking] FOREIGN KEY([booking_id])
REFERENCES [dbo].[Booking] ([booking_id])
GO
ALTER TABLE [dbo].[DailyReport] CHECK CONSTRAINT [FK_DailyReport_Booking]
GO
ALTER TABLE [dbo].[DailyReportImage]  WITH CHECK ADD  CONSTRAINT [FK_DailyReportImage_DailyReport] FOREIGN KEY([dreport_id])
REFERENCES [dbo].[DailyReport] ([dreport_id])
GO
ALTER TABLE [dbo].[DailyReportImage] CHECK CONSTRAINT [FK_DailyReportImage_DailyReport]
GO
ALTER TABLE [dbo].[Review]  WITH CHECK ADD  CONSTRAINT [FK_Reviews_Bookings] FOREIGN KEY([booking_id])
REFERENCES [dbo].[Booking] ([booking_id])
GO
ALTER TABLE [dbo].[Review] CHECK CONSTRAINT [FK_Reviews_Bookings]
GO
ALTER TABLE [dbo].[Review]  WITH CHECK ADD  CONSTRAINT [FK_Reviews_User1] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Review] CHECK CONSTRAINT [FK_Reviews_User1]
GO
ALTER TABLE [dbo].[Bird]  WITH CHECK ADD  CONSTRAINT [bird_age] CHECK  (([age]>=(1) AND [age]<=(5)))
GO
ALTER TABLE [dbo].[Bird] CHECK CONSTRAINT [bird_age]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [booking_status] CHECK  (([status]=(0) OR [status]=(1) OR [status]=(2) OR [status]=(3) OR [status]=(4)))
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [booking_status]
GO
ALTER TABLE [dbo].[Service]  WITH CHECK ADD  CONSTRAINT [service_status] CHECK  (([status]=(0) OR [status]=(1)))
GO
ALTER TABLE [dbo].[Service] CHECK CONSTRAINT [service_status]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [phone] CHECK  (([phone]>=(111111111) AND [phone]<=(9999999999.)))
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [phone]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [role] CHECK  (([role]=(0) OR [role]=(1)))
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [role]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [status] CHECK  (([status]=(0) OR [status]=(1)))
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [status]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0: no-yet, 1: complete' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bill', @level2type=N'COLUMN',@level2name=N'payment_status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0: male, 1:female' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bird', @level2type=N'COLUMN',@level2name=N'gender'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0: pending, 1: pending, 2: on-going, 3: complete, 4: cancel' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Booking', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0 to 5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Review', @level2type=N'COLUMN',@level2name=N'rating'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0: user, 1: admin' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'admin or user' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0: ban, 1:unban' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0: usser, 1: admin' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'role'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0: banned, 1: active' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'status'
GO
