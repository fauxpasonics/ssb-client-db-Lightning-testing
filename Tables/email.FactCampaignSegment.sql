CREATE TABLE [email].[FactCampaignSegment]
(
[FactCampaignSegmentId] [int] NOT NULL IDENTITY(-2, 1),
[DimCampaignId] [int] NULL,
[DimSegmentId] [int] NULL,
[CreatedBy] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__FactCampa__Creat__14FCBF6B] DEFAULT (user_name()),
[CreatedDate] [datetime] NULL CONSTRAINT [DF__FactCampa__Creat__15F0E3A4] DEFAULT (getdate()),
[UpdatedBy] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__FactCampa__Updat__16E507DD] DEFAULT (user_name()),
[UpdatedDate] [datetime] NULL CONSTRAINT [DF__FactCampa__Updat__17D92C16] DEFAULT (getdate())
)
GO
ALTER TABLE [email].[FactCampaignSegment] ADD CONSTRAINT [PK__FactCamp__1324ECD561F6EE8E] PRIMARY KEY CLUSTERED  ([FactCampaignSegmentId])
GO
CREATE NONCLUSTERED INDEX [idx_FactCampaignSegment_DimCampaignId] ON [email].[FactCampaignSegment] ([DimCampaignId])
GO
CREATE NONCLUSTERED INDEX [idx_FactCampaignSegment_DimSegmentId] ON [email].[FactCampaignSegment] ([DimSegmentId])
GO
ALTER TABLE [email].[FactCampaignSegment] ADD CONSTRAINT [FK__FactCampa__DimCa__19C17488] FOREIGN KEY ([DimCampaignId]) REFERENCES [email].[DimCampaign] ([DimCampaignId])
GO
ALTER TABLE [email].[FactCampaignSegment] ADD CONSTRAINT [FK__FactCampa__DimSe__1AB598C1] FOREIGN KEY ([DimSegmentId]) REFERENCES [email].[DimSegment] ([DimSegmentId])
GO
