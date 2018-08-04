CREATE TABLE [email].[DimEmailClient]
(
[DimEmailClientId] [int] NOT NULL IDENTITY(-2, 1),
[EmailClient] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedBy] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__DimEmailC__Creat__64598810] DEFAULT (user_name()),
[CreatedDate] [datetime] NULL CONSTRAINT [DF__DimEmailC__Creat__654DAC49] DEFAULT (getdate()),
[UpdatedBy] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__DimEmailC__Updat__6641D082] DEFAULT (user_name()),
[UpdatedDate] [datetime] NULL CONSTRAINT [DF__DimEmailC__Updat__6735F4BB] DEFAULT (getdate())
)
GO
ALTER TABLE [email].[DimEmailClient] ADD CONSTRAINT [PK__DimEmail__92D90F918C632D86] PRIMARY KEY CLUSTERED  ([DimEmailClientId])
GO
