CREATE TABLE [email].[DimChannel]
(
[DimChannelId] [int] NOT NULL IDENTITY(-2, 1),
[Channel] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedBy] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__DimChanne__Creat__58E7D564] DEFAULT (user_name()),
[CreatedDate] [datetime] NULL CONSTRAINT [DF__DimChanne__Creat__59DBF99D] DEFAULT (getdate()),
[UpdatedBy] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__DimChanne__Updat__5AD01DD6] DEFAULT (user_name()),
[UpdatedDate] [datetime] NULL CONSTRAINT [DF__DimChanne__Updat__5BC4420F] DEFAULT (getdate())
)
GO
ALTER TABLE [email].[DimChannel] ADD CONSTRAINT [PK__DimChann__37F5D04D47986DA8] PRIMARY KEY CLUSTERED  ([DimChannelId])
GO
