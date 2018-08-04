CREATE TABLE [stg].[Venutize_User_Profiles]
(
[ETL_ID] [int] NOT NULL IDENTITY(1, 1),
[ETL_CreatedDate] [datetime] NOT NULL CONSTRAINT [DF__Venutize___ETL_C__467E410F] DEFAULT (getdate()),
[ETL_SourceFileName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProfileID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UserID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PropertyDefinitionID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PropertyCategory] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PropertyName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PropertyValue] [nvarchar] (2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LastUpdatedDate] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [stg].[Venutize_User_Profiles] ADD CONSTRAINT [PK__Venutize__7EF6BFCD0ABD1B4A] PRIMARY KEY CLUSTERED  ([ETL_ID])
GO
