CREATE TABLE [stg].[Venutize_User_PointTotals]
(
[ETL_ID] [int] NOT NULL IDENTITY(1, 1),
[ETL_CreatedDate] [datetime] NOT NULL CONSTRAINT [DF__Venutize___ETL_C__458A1CD6] DEFAULT (getdate()),
[ETL_SourceFileName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UserPointsId] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UserId] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TotalPointsEarned] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TotalPointsSpent] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SeasonPoints] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PointsRemaining] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProfilePropertyValue] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [stg].[Venutize_User_PointTotals] ADD CONSTRAINT [PK__Venutize__7EF6BFCD0A996C09] PRIMARY KEY CLUSTERED  ([ETL_ID])
GO
