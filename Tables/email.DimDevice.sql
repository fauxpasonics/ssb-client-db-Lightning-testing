CREATE TABLE [email].[DimDevice]
(
[DimDeviceId] [int] NOT NULL IDENTITY(-2, 1),
[Device] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedBy] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__DimDevice__Creat__5EA0AEBA] DEFAULT (user_name()),
[CreatedDate] [datetime] NULL CONSTRAINT [DF__DimDevice__Creat__5F94D2F3] DEFAULT (getdate()),
[UpdatedBy] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__DimDevice__Updat__6088F72C] DEFAULT (user_name()),
[UpdatedDate] [datetime] NULL CONSTRAINT [DF__DimDevice__Updat__617D1B65] DEFAULT (getdate())
)
GO
ALTER TABLE [email].[DimDevice] ADD CONSTRAINT [PK__DimDevic__EE18DE2165AB4041] PRIMARY KEY CLUSTERED  ([DimDeviceId])
GO
