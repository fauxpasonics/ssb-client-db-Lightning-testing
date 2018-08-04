CREATE TABLE [ods].[Venutize_User_Points]
(
[ETL_ID] [int] NOT NULL IDENTITY(1, 1),
[ETL_CreatedDate] [datetime] NOT NULL CONSTRAINT [DF__Venutize___ETL_C__6E8C3269] DEFAULT (getdate()),
[ETL_UpdatedDate] [datetime] NOT NULL CONSTRAINT [DF__Venutize___ETL_U__6F8056A2] DEFAULT (getdate()),
[ETL_IsDeleted] [bit] NOT NULL CONSTRAINT [DF__Venutize___ETL_I__70747ADB] DEFAULT ((0)),
[ETL_DeletedDate] [datetime] NULL,
[ETL_DeltaHashKey] [binary] (32) NULL,
[ETL_SourceFileName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UserID] [int] NULL,
[PointAuditID] [bigint] NULL,
[SeatID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PointActivityTypeName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PointActivityTypeId] [int] NULL,
[PointActivityTitle] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PointActivityID] [int] NULL,
[PointsAwarded] [int] NULL,
[AwardDate] [datetime] NULL,
[AwardedBy] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Valid] [bit] NULL,
[ContentType] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ContentID] [int] NULL,
[DateCreated] [datetime] NULL,
[ProfilePropertyValue] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [ods].[Venutize_User_Points] ADD CONSTRAINT [PK__Venutize__7EF6BFCD651E4D86] PRIMARY KEY CLUSTERED  ([ETL_ID])
GO
