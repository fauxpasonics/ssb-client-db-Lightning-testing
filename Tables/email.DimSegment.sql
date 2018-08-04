CREATE TABLE [email].[DimSegment]
(
[DimSegmentId] [int] NOT NULL IDENTITY(-2, 1),
[Src_SegmentId] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SegmentName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SegmentDescription] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedBy] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__DimSegmen__Creat__6FCB3ABC] DEFAULT (user_name()),
[CreatedDate] [datetime] NULL CONSTRAINT [DF__DimSegmen__Creat__70BF5EF5] DEFAULT (getdate()),
[UpdatedBy] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__DimSegmen__Updat__71B3832E] DEFAULT (user_name()),
[UpdatedDate] [datetime] NULL CONSTRAINT [DF__DimSegmen__Updat__72A7A767] DEFAULT (getdate())
)
GO
ALTER TABLE [email].[DimSegment] ADD CONSTRAINT [PK__DimSegme__91C6F6AA5FE68E57] PRIMARY KEY CLUSTERED  ([DimSegmentId])
GO
