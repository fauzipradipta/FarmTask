create database GreenField

GO
/****** Object:  Table [dbo].[FarmFieldPlantCondition]    Script Date: 09/09/2022 19:51:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FarmFieldPlantCondition](
	[FarmFieldPlantConditionID] [int] IDENTITY(1,1) NOT NULL,
	[FarmFieldPlantConditionName] [varchar](50) NOT NULL,
	[FarmFieldPlantConditionDescription] [varchar](150) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedByID] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedByID] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_FarmFieldPlantCondition] PRIMARY KEY CLUSTERED 
(
	[FarmFieldPlantConditionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 09/09/2022 19:51:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](15) NOT NULL,
	[Description] [nvarchar](50) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FarmFieldPlantStatus]    Script Date: 09/09/2022 19:51:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FarmFieldPlantStatus](
	[FarmFieldPlantStatusID] [int] IDENTITY(1,1) NOT NULL,
	[FarmFieldPlantStatusName] [varchar](50) NOT NULL,
	[FarmFieldPlantStatusDescription] [varchar](150) NULL,
	[Sequence] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedByID] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedByID] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_FarmFieldPlantStatus] PRIMARY KEY CLUSTERED 
(
	[FarmFieldPlantStatusID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FarmFieldPlantSC]    Script Date: 09/09/2022 19:51:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FarmFieldPlantSC](
	[FarmFieldPlantID] [int] NULL,
	[FarmFieldPlantStatusID] [int] NULL,
	[FarmFieldPlantConditionID] [int] NULL,
	[TotalPoundsForecast] [int] NULL,
	[CreatedByID] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedByID] [int] NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserTypes]    Script Date: 09/09/2022 19:51:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTypes](
	[UserTypeID] [int] NOT NULL,
	[UserTypeName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_UserTypes] PRIMARY KEY CLUSTERED 
(
	[UserTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PTISSCCDetail]    Script Date: 09/09/2022 19:51:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PTISSCCDetail](
	[PTISSCCDetailID] [int] NOT NULL,
	[PTISSCCID] [int] NOT NULL,
	[CaseBarcode] [varchar](50) NOT NULL,
	[GTIN] [varchar](14) NOT NULL,
	[LotNo] [varchar](50) NOT NULL,
	[Qty] [int] NOT NULL,
	[CheckDigit] [int] NOT NULL,
	[Latitude] [decimal](9, 6) NOT NULL,
	[Longtitude] [decimal](9, 6) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedByID] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[ModifiedByID] [int] NOT NULL,
 CONSTRAINT [PK_PTISSCCDetail] PRIMARY KEY CLUSTERED 
(
	[PTISSCCDetailID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PTISSCC]    Script Date: 09/09/2022 19:51:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PTISSCC](
	[PTISSCCID] [int] NOT NULL,
	[SSCCBarcode] [varchar](100) NOT NULL,
	[GSPrefix] [varchar](7) NOT NULL,
	[GSPrefixExtension] [varchar](3) NULL,
	[SerialNumber] [varchar](9) NOT NULL,
	[CheckDigit] [varchar](1) NOT NULL,
	[Latitude] [decimal](9, 6) NULL,
	[Longtitude] [decimal](9, 6) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedByID] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[ModifiedByID] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_PTISSCC] PRIMARY KEY CLUSTERED 
(
	[PTISSCCID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PTIHeader]    Script Date: 09/09/2022 19:51:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PTIHeader](
	[PTISerialID] [int] IDENTITY(100000001,1) NOT NULL,
	[TransactionDate] [datetime] NOT NULL,
	[FarmFieldPlantID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[CreatedByID] [int] NOT NULL,
 CONSTRAINT [PK_PTIHeader] PRIMARY KEY CLUSTERED 
(
	[PTISerialID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductMeasurementTypes]    Script Date: 09/09/2022 19:51:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductMeasurementTypes](
	[ProductMeasurementTypeID] [int] NOT NULL,
	[ProductMeasurementTypeName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ProductMeasurementTypes] PRIMARY KEY CLUSTERED 
(
	[ProductMeasurementTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pests]    Script Date: 09/09/2022 19:51:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pests](
	[PestID] [int] IDENTITY(1,1) NOT NULL,
	[PestName] [varchar](100) NOT NULL,
	[Description] [varchar](100) NULL,
 CONSTRAINT [PK_Pests] PRIMARY KEY CLUSTERED 
(
	[PestID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TaskRoles]    Script Date: 09/09/2022 19:51:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TaskRoles](
	[TaskRolesID] [int] IDENTITY(1,1) NOT NULL,
	[TaskRolesName] [varchar](50) NOT NULL,
	[TaskRolesDescription] [varchar](150) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedByID] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedByID] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_TaskRoles] PRIMARY KEY CLUSTERED 
(
	[TaskRolesID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TaskMasterApproval]    Script Date: 09/09/2022 19:51:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaskMasterApproval](
	[uniqueid] [int] IDENTITY(1,1) NOT NULL,
	[TaskMasterID] [int] NOT NULL,
	[TaskRolesID] [int] NULL,
	[ApprovalHierarchy] [int] NOT NULL,
	[AssignToID] [int] NULL,
	[DueDate] [datetime] NULL,
	[StartedByID] [datetime] NULL,
	[StartedOn] [datetime] NULL,
	[CompletedByID] [int] NULL,
	[CompletedOn] [datetime] NULL,
 CONSTRAINT [PK_TaskMasterApproval] PRIMARY KEY CLUSTERED 
(
	[uniqueid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaskMaster]    Script Date: 09/09/2022 19:51:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaskMaster](
	[TaskMasterID] [int] IDENTITY(1,1) NOT NULL,
	[FarmFieldPlantID] [int] NOT NULL,
	[FarmFieldPlantStatusID] [int] NULL,
	[FarmFieldPlantConditionID] [int] NULL,
	[CreatedByID] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedByID] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_TaskMaster] PRIMARY KEY CLUSTERED 
(
	[TaskMasterID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaskListRoles]    Script Date: 09/09/2022 19:51:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaskListRoles](
	[uniqueid] [int] IDENTITY(1,1) NOT NULL,
	[TaskRolesID] [int] NOT NULL,
	[TaskListID] [int] NOT NULL,
	[CreatedByID] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedByID] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_TaskListRoles] PRIMARY KEY CLUSTERED 
(
	[uniqueid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaskListCategory]    Script Date: 09/09/2022 19:51:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TaskListCategory](
	[TaskListCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[TaskListCategoryName] [varchar](50) NOT NULL,
	[TaskListCategoryDescription] [varchar](150) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedByID] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedByID] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_TaskListCategory] PRIMARY KEY CLUSTERED 
(
	[TaskListCategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TaskList]    Script Date: 09/09/2022 19:51:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TaskList](
	[TaskListID] [int] IDENTITY(1,1) NOT NULL,
	[TaskListCode] [int] NOT NULL,
	[TaskListName] [varchar](50) NOT NULL,
	[TaskListDescription] [varchar](150) NOT NULL,
	[TaskListCategoryID] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedByID] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedByID] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_TaskList] PRIMARY KEY CLUSTERED 
(
	[TaskListID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TaskDetail]    Script Date: 09/09/2022 19:51:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TaskDetail](
	[TaskDetailID] [int] IDENTITY(1,1) NOT NULL,
	[TaskMasterID] [int] NOT NULL,
	[CompletedDate] [datetime] NULL,
	[CompletedByID] [int] NULL,
	[Comment] [varchar](250) NULL,
	[TaskListID] [int] NOT NULL,
 CONSTRAINT [PK_TaskDetail] PRIMARY KEY CLUSTERED 
(
	[TaskDetailID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 09/09/2022 19:51:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[SupplierID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](40) NOT NULL,
	[ContactName] [nvarchar](30) NULL,
	[ContactTitle] [nvarchar](30) NULL,
	[Address] [nvarchar](60) NULL,
	[City] [nvarchar](15) NULL,
	[Region] [nvarchar](15) NULL,
	[PostalCode] [nvarchar](10) NULL,
	[Country] [nvarchar](15) NULL,
	[Phone] [nvarchar](24) NULL,
	[Fax] [nvarchar](24) NULL,
	[HomePage] [nvarchar](50) NULL,
	[Email] [nvarchar](100) NULL,
	[CompanyUCCprefix] [nvarchar](50) NULL,
 CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED 
(
	[SupplierID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SecurityLevels]    Script Date: 09/09/2022 19:51:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SecurityLevels](
	[SecurityLevelID] [int] NOT NULL,
	[SecurityLevelName] [nvarchar](100) NOT NULL,
	[UserTypeID] [int] NOT NULL,
 CONSTRAINT [PK_SecurityLevels] PRIMARY KEY CLUSTERED 
(
	[SecurityLevelID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pesticides]    Script Date: 09/09/2022 19:51:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pesticides](
	[PesticideID] [int] IDENTITY(1,1) NOT NULL,
	[PesticideName] [varchar](100) NOT NULL,
	[RatesListedPer] [varchar](100) NULL,
	[RestrictedUseData] [varchar](100) NULL,
	[RestrictedEntryLevelData] [varchar](100) NULL,
	[PesticideLabelSignalWord] [varchar](100) NULL,
	[WPSOralNotification] [varchar](200) NULL,
	[Formulation] [varchar](200) NULL,
	[ActiveIndegrident] [varchar](50) NULL,
	[EPARegistrationNumber] [varchar](50) NULL,
	[RestrictedEntryInterval] [int] NULL,
	[ProductRate] [float] NULL,
	[TotalProductConsumed] [float] NULL,
	[ApplicatorName] [varchar](50) NULL,
	[CertificationNumber] [varchar](50) NULL,
	[Speed] [varchar](50) NULL,
	[MPH] [varchar](50) NULL,
	[GPA] [float] NULL,
	[Concentration] [float] NULL,
	[SprayRig] [varchar](50) NULL,
	[NozzelSetup] [varchar](50) NULL,
	[SprayingInstructions] [varchar](50) NULL,
	[ProductMeasurementTypeID] [int] NULL,
 CONSTRAINT [PK_Pesticides] PRIMARY KEY CLUSTERED 
(
	[PesticideID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FarmFields]    Script Date: 09/09/2022 19:51:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FarmFields](
	[FarmFieldID] [int] IDENTITY(1,1) NOT NULL,
	[FieldIDNumber] [varchar](50) NOT NULL,
	[FieldName] [varchar](50) NULL,
	[SupplierID] [int] NOT NULL,
	[LegalDescription] [varchar](200) NULL,
	[TotalAcres] [float] NULL,
	[IrrigationSource1] [varchar](50) NULL,
	[IrrigationSource2] [varchar](50) NULL,
	[IrrigationSource3] [varchar](50) NULL,
	[Comments] [varchar](200) NULL,
 CONSTRAINT [PK_FarmFields] PRIMARY KEY CLUSTERED 
(
	[FarmFieldID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Users]    Script Date: 09/09/2022 19:51:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[LoginName] [nvarchar](60) NOT NULL,
	[Password] [nvarchar](20) NOT NULL,
	[UserTypeID] [int] NOT NULL,
	[ReferenceID] [int] NULL,
	[SecurityLevelID] [int] NOT NULL,
	[LastName] [nvarchar](20) NOT NULL,
	[FirstName] [nvarchar](10) NOT NULL,
	[Title] [nvarchar](30) NULL,
	[TitleOfCourtesy] [nvarchar](25) NULL,
	[BirthDate] [datetime] NULL,
	[HireDate] [datetime] NULL,
	[Address] [nvarchar](60) NULL,
	[City] [nvarchar](15) NULL,
	[Region] [nvarchar](15) NULL,
	[PostalCode] [nvarchar](10) NULL,
	[Country] [nvarchar](15) NULL,
	[HomePhone] [nvarchar](24) NULL,
	[Extension] [nvarchar](4) NULL,
	[Photo] [image] NULL,
	[Notes] [ntext] NULL,
	[ReportsTo] [int] NULL,
	[Email] [nvarchar](100) NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FarmFieldPlants]    Script Date: 09/09/2022 19:51:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FarmFieldPlants](
	[FarmFieldPlantID] [int] IDENTITY(1,1) NOT NULL,
	[FarmFieldID] [int] NOT NULL,
	[CategoryID] [int] NOT NULL,
	[ProduceIDNumber] [varchar](50) NULL,
	[DatePlanted] [datetime] NOT NULL,
	[LotNo] [varchar](50) NULL,
	[ScheduledHarvestDate] [datetime] NULL,
	[TotalPoundsHarvested] [float] NULL,
 CONSTRAINT [PK_FarmFieldPlants] PRIMARY KEY CLUSTERED 
(
	[FarmFieldPlantID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Default [DF_Pesticides_ProductMeasurementTypeID]    Script Date: 09/09/2022 19:51:13 ******/
ALTER TABLE [dbo].[Pesticides] ADD  CONSTRAINT [DF_Pesticides_ProductMeasurementTypeID]  DEFAULT ((0)) FOR [ProductMeasurementTypeID]
GO
/****** Object:  Default [DF__Users__Active__4E53A1AA]    Script Date: 09/09/2022 19:51:13 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__Active__4E53A1AA]  DEFAULT ((1)) FOR [Active]
GO
/****** Object:  ForeignKey [FK_FarmFieldPlants_Categories]    Script Date: 09/09/2022 19:51:13 ******/
ALTER TABLE [dbo].[FarmFieldPlants]  WITH CHECK ADD  CONSTRAINT [FK_FarmFieldPlants_Categories] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
GO
ALTER TABLE [dbo].[FarmFieldPlants] CHECK CONSTRAINT [FK_FarmFieldPlants_Categories]
GO
/****** Object:  ForeignKey [FK_FarmFieldPlants_FarmFields]    Script Date: 09/09/2022 19:51:13 ******/
ALTER TABLE [dbo].[FarmFieldPlants]  WITH CHECK ADD  CONSTRAINT [FK_FarmFieldPlants_FarmFields] FOREIGN KEY([FarmFieldID])
REFERENCES [dbo].[FarmFields] ([FarmFieldID])
GO
ALTER TABLE [dbo].[FarmFieldPlants] CHECK CONSTRAINT [FK_FarmFieldPlants_FarmFields]
GO
/****** Object:  ForeignKey [FK_FarmFields_Suppliers]    Script Date: 09/09/2022 19:51:13 ******/
ALTER TABLE [dbo].[FarmFields]  WITH CHECK ADD  CONSTRAINT [FK_FarmFields_Suppliers] FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Suppliers] ([SupplierID])
GO
ALTER TABLE [dbo].[FarmFields] CHECK CONSTRAINT [FK_FarmFields_Suppliers]
GO
/****** Object:  ForeignKey [FK_Pesticides_ProductMeasurementTypes]    Script Date: 09/09/2022 19:51:13 ******/
ALTER TABLE [dbo].[Pesticides]  WITH NOCHECK ADD  CONSTRAINT [FK_Pesticides_ProductMeasurementTypes] FOREIGN KEY([ProductMeasurementTypeID])
REFERENCES [dbo].[ProductMeasurementTypes] ([ProductMeasurementTypeID])
GO
ALTER TABLE [dbo].[Pesticides] NOCHECK CONSTRAINT [FK_Pesticides_ProductMeasurementTypes]
GO
/****** Object:  ForeignKey [UserTypes_SecurityLevels_FK1]    Script Date: 09/09/2022 19:51:13 ******/
ALTER TABLE [dbo].[SecurityLevels]  WITH CHECK ADD  CONSTRAINT [UserTypes_SecurityLevels_FK1] FOREIGN KEY([UserTypeID])
REFERENCES [dbo].[UserTypes] ([UserTypeID])
GO
ALTER TABLE [dbo].[SecurityLevels] CHECK CONSTRAINT [UserTypes_SecurityLevels_FK1]
GO
/****** Object:  ForeignKey [SecurityLevels_Users_FK1]    Script Date: 09/09/2022 19:51:13 ******/
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [SecurityLevels_Users_FK1] FOREIGN KEY([SecurityLevelID])
REFERENCES [dbo].[SecurityLevels] ([SecurityLevelID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [SecurityLevels_Users_FK1]
GO
/****** Object:  ForeignKey [UserTypes_Users_FK1]    Script Date: 09/09/2022 19:51:13 ******/
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [UserTypes_Users_FK1] FOREIGN KEY([UserTypeID])
REFERENCES [dbo].[UserTypes] ([UserTypeID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [UserTypes_Users_FK1]
GO
