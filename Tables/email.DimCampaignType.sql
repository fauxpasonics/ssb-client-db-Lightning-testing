CREATE TABLE [email].[DimCampaignType]
(
[DimCampaignTypeId] [int] NOT NULL IDENTITY(-2, 1),
[CampaignType] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedBy] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__DimCampai__Creat__532EFC0E] DEFAULT (user_name()),
[CreatedDate] [datetime] NULL CONSTRAINT [DF__DimCampai__Creat__54232047] DEFAULT (getdate()),
[UpdatedBy] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__DimCampai__Updat__55174480] DEFAULT (user_name()),
[UpdatedDate] [datetime] NULL CONSTRAINT [DF__DimCampai__Updat__560B68B9] DEFAULT (getdate())
)
GO
ALTER TABLE [email].[DimCampaignType] ADD CONSTRAINT [PK__DimCampa__7EB1CFE5A4B498C7] PRIMARY KEY CLUSTERED  ([DimCampaignTypeId])
GO
