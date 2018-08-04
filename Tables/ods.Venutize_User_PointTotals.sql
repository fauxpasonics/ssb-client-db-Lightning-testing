CREATE TABLE [ods].[Venutize_User_PointTotals]
(
[ETL_ID] [int] NOT NULL IDENTITY(1, 1),
[ETL_CreatedDate] [datetime] NOT NULL CONSTRAINT [DF__Venutize___ETL_C__392445F1] DEFAULT (getdate()),
[ETL_UpdatedDate] [datetime] NOT NULL CONSTRAINT [DF__Venutize___ETL_U__3A186A2A] DEFAULT (getdate()),
[ETL_IsDeleted] [bit] NOT NULL CONSTRAINT [DF__Venutize___ETL_I__3B0C8E63] DEFAULT ((0)),
[ETL_DeletedDate] [datetime] NULL,
[ETL_DeltaHashKey] [binary] (32) NULL,
[ETL_SourceFileName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UserPointsId] [int] NULL,
[UserId] [int] NULL,
[TotalPointsEarned] [int] NULL,
[TotalPointsSpent] [int] NULL,
[SeasonPoints] [int] NULL,
[PointsRemaining] [int] NULL,
[ProfilePropertyValue] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [ods].[Venutize_User_PointTotals] ADD CONSTRAINT [PK__Venutize__7EF6BFCDE07F3480] PRIMARY KEY CLUSTERED  ([ETL_ID])
GO
