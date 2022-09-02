DROP TABLE [dbo].[Category];
DROP TABLE [dbo].[Device];
DROP TABLE [dbo].[Zone];

CREATE TABLE [dbo].[Category](
	[CategoryID] [uniqueidentifier] NOT NULL,
	[CategoryName] [nvarchar](max) NOT NULL,
	[CategoryDescription] [nvarchar](max) NULL,
	[DateCreated] [datetime] NOT NULL,
	CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED (
		[CategoryID] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
)
GO
CREATE TABLE [dbo].[Device](
	[DeviceID] [uniqueidentifier] NOT NULL,
	[DeviceName] [nvarchar](max) NULL,
	[CategoryID] [uniqueidentifier] NOT NULL,
	[ZoneID] [uniqueidentifier] NOT NULL,
	[Status] [nvarchar](max) NULL,
	[IsActvie] [bit] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	CONSTRAINT [PK_Device] PRIMARY KEY CLUSTERED 
	(
		[DeviceID] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
)
GO
CREATE TABLE [dbo].[Zone](
	[ZoneID] [uniqueidentifier] NOT NULL,
	[ZoneName] [nvarchar](max) NOT NULL,
	[ZoneDescription] [nvarchar](max) NULL,
	[DateCreated] [datetime] NOT NULL,
	CONSTRAINT [PK_Zone] PRIMARY KEY CLUSTERED (
		[ZoneID] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
)
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[Device] ADD  CONSTRAINT [DF_Device_IsActvie]  DEFAULT ((0)) FOR [IsActvie]
GO
ALTER TABLE [dbo].[Device] ADD  CONSTRAINT [DF_Device_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[Zone] ADD  CONSTRAINT [DF_Zone_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
INSERT INTO [dbo].[Category]
           ([CategoryID]
           ,[CategoryName]
           ,[CategoryDescription]
           ,[DateCreated])
     VALUES
           (NEWID()
           ,'TestCategory'
           ,'A Category used for testing'
		   ,GETDATE()
		   )
GO
INSERT INTO [dbo].[Category]
           ([CategoryID]
           ,[CategoryName]
           ,[CategoryDescription]
           ,[DateCreated])
     VALUES
           (NEWID()
           ,'Consumer'
           ,'General consumer home appliances'
		   ,GETDATE()
		   )
GO
INSERT INTO [dbo].[Category]
           ([CategoryID]
           ,[CategoryName]
           ,[CategoryDescription]
           ,[DateCreated])
     VALUES
           (NEWID()
           ,'Enterprise'
           ,'General company devices used in the office'
		   ,GETDATE()
		   )
GO
GO

INSERT INTO [dbo].[Zone]
           ([ZoneID]
           ,[ZoneName]
           ,[ZoneDescription]
           ,[DateCreated])
     VALUES
           (NEWID()
           ,'Local Zone'
           ,'Devices running in the homes of clients'
           ,GETDATE())
GO
INSERT INTO [dbo].[Zone]
           ([ZoneID]
           ,[ZoneName]
           ,[ZoneDescription]
           ,[DateCreated])
     VALUES
           (NEWID()
           ,'Device Zone'
           ,'Devices running in proximity of other IoT devices'
           ,GETDATE())
GO
INSERT INTO [dbo].[Zone]
           ([ZoneID]
           ,[ZoneName]
           ,[ZoneDescription]
           ,[DateCreated])
     VALUES
           (NEWID()
           ,'Field Gate Zone'
           ,'This zone contains the all devices that reside in the Field Gate Zone'
           ,GETDATE())
GO
INSERT INTO [dbo].[Zone]
           ([ZoneID]
           ,[ZoneName]
           ,[ZoneDescription]
           ,[DateCreated])
     VALUES
           (NEWID()
           ,'Cloud Gateway Zone'
           ,'Contains the message broker or message queue.'
           ,GETDATE())
GO
INSERT INTO [dbo].[Zone]
           ([ZoneID]
           ,[ZoneName]
           ,[ZoneDescription]
           ,[DateCreated])
     VALUES
           (NEWID()
           ,'Gateway and Services Zone'
           ,'This zone holds all of the backend services.'
           ,GETDATE())
GO
INSERT INTO [dbo].[Zone]
           ([ZoneID]
           ,[ZoneName]
           ,[ZoneDescription]
           ,[DateCreated])
     VALUES
           (NEWID()
           ,'Remote User Zone'
           ,'Contains the pieces of the solution provided for some types of remote or external access to users or third parties.'
           ,GETDATE())
GO