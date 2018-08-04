CREATE TABLE [email].[DimCampaignActivityType]
(
[DimCampaignActivityTypeId] [int] NOT NULL IDENTITY(-2, 1),
[ActivityType] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedBy] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__DimCampai__Creat__4D7622B8] DEFAULT (user_name()),
[CreatedDate] [datetime] NULL CONSTRAINT [DF__DimCampai__Creat__4E6A46F1] DEFAULT (getdate()),
[UpdatedBy] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__DimCampai__Updat__4F5E6B2A] DEFAULT (user_name()),
[UpdatedDate] [datetime] NULL CONSTRAINT [DF__DimCampai__Updat__50528F63] DEFAULT (getdate())
)
GO
ALTER TABLE [email].[DimCampaignActivityType] ADD CONSTRAINT [PK__DimCampa__9DB9554EF90BE976] PRIMARY KEY CLUSTERED  ([DimCampaignActivityTypeId])
GO
