CREATE TABLE [stg].[Venutize_Users]
(
[ETL_ID] [int] NOT NULL IDENTITY(1, 1),
[ETL_CreatedDate] [datetime] NOT NULL CONSTRAINT [DF__Venutize___ETL_C__48668981] DEFAULT (getdate()),
[ETL_SourceFileName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UserID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Username] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FirstName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LastName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Email] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DisplayName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DeletedUser] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedOnDate] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LastModifiedOnDate] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Authorised] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DeletedFromSite] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProfilePropertyValue] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [stg].[Venutize_Users] ADD CONSTRAINT [PK__Venutize__7EF6BFCD5A358627] PRIMARY KEY CLUSTERED  ([ETL_ID])
GO
