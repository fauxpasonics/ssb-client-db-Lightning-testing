CREATE TABLE [email].[DimOperatingSystem]
(
[DimOperatingSystemId] [int] NOT NULL IDENTITY(-2, 1),
[OperatingSystem] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedBy] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__DimOperat__Creat__6A126166] DEFAULT (user_name()),
[CreatedDate] [datetime] NULL CONSTRAINT [DF__DimOperat__Creat__6B06859F] DEFAULT (getdate()),
[UpdatedBy] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__DimOperat__Updat__6BFAA9D8] DEFAULT (user_name()),
[UpdatedDate] [datetime] NULL CONSTRAINT [DF__DimOperat__Updat__6CEECE11] DEFAULT (getdate())
)
GO
ALTER TABLE [email].[DimOperatingSystem] ADD CONSTRAINT [PK__DimOpera__04A7A4C62C82B2D8] PRIMARY KEY CLUSTERED  ([DimOperatingSystemId])
GO
