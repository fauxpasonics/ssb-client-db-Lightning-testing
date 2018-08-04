CREATE TABLE [email].[FactEmailSource]
(
[FactEmailSourceId] [int] NOT NULL IDENTITY(-2, 1),
[DimEmailId] [int] NULL,
[SourceSystemId] [int] NULL,
[EffectiveBeginDate] [datetime] NULL,
[EffectiveEndDate] [datetime] NULL,
[CreatedBy] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__FactEmail__Creat__2BE024C3] DEFAULT (user_name()),
[CreatedDate] [datetime] NULL CONSTRAINT [DF__FactEmail__Creat__2CD448FC] DEFAULT (getdate()),
[UpdatedBy] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__FactEmail__Updat__2DC86D35] DEFAULT (user_name()),
[UpdatedDate] [datetime] NULL CONSTRAINT [DF__FactEmail__Updat__2EBC916E] DEFAULT (getdate())
)
GO
ALTER TABLE [email].[FactEmailSource] ADD CONSTRAINT [PK__FactEmai__11CE794462B93191] PRIMARY KEY CLUSTERED  ([FactEmailSourceId])
GO
CREATE NONCLUSTERED INDEX [idx_FactEmailSource_DimEmailId] ON [email].[FactEmailSource] ([DimEmailId])
GO
ALTER TABLE [email].[FactEmailSource] ADD CONSTRAINT [FK__FactEmail__DimEm__30A4D9E0] FOREIGN KEY ([DimEmailId]) REFERENCES [email].[DimEmail] ([DimEmailID])
GO
ALTER TABLE [email].[FactEmailSource] ADD CONSTRAINT [FK__FactEmail__Sourc__3198FE19] FOREIGN KEY ([SourceSystemId]) REFERENCES [mdm].[SourceSystems] ([SourceSystemID])
GO
