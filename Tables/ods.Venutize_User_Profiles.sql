CREATE TABLE [ods].[Venutize_User_Profiles]
(
[ETL_ID] [int] NOT NULL IDENTITY(1, 1),
[ETL_CreatedDate] [datetime] NOT NULL CONSTRAINT [DF__Venutize___ETL_C__3C00B29C] DEFAULT (getdate()),
[ETL_UpdatedDate] [datetime] NOT NULL CONSTRAINT [DF__Venutize___ETL_U__3CF4D6D5] DEFAULT (getdate()),
[ETL_IsDeleted] [bit] NOT NULL CONSTRAINT [DF__Venutize___ETL_I__3DE8FB0E] DEFAULT ((0)),
[ETL_DeletedDate] [datetime] NULL,
[ETL_DeltaHashKey] [binary] (32) NULL,
[ETL_SourceFileName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProfileID] [int] NOT NULL,
[UserID] [int] NOT NULL,
[PropertyDefinitionID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PropertyCategory] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PropertyName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PropertyValue] [nvarchar] (2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LastUpdatedDate] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [ods].[Venutize_User_Profiles] ADD CONSTRAINT [PK__Venutize__7EF6BFCD37E5EE0B] PRIMARY KEY CLUSTERED  ([ETL_ID])
GO
