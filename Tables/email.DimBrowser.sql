CREATE TABLE [email].[DimBrowser]
(
[DimBrowserId] [int] NOT NULL IDENTITY(-2, 1),
[Browser] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedBy] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__DimBrowse__Creat__47BD4962] DEFAULT (user_name()),
[CreatedDate] [datetime] NULL CONSTRAINT [DF__DimBrowse__Creat__48B16D9B] DEFAULT (getdate()),
[UpdatedBy] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__DimBrowse__Updat__49A591D4] DEFAULT (user_name()),
[UpdatedDate] [datetime] NULL CONSTRAINT [DF__DimBrowse__Updat__4A99B60D] DEFAULT (getdate())
)
GO
ALTER TABLE [email].[DimBrowser] ADD CONSTRAINT [PK__DimBrows__748199886506F096] PRIMARY KEY CLUSTERED  ([DimBrowserId])
GO
