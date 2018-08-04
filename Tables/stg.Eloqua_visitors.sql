CREATE TABLE [stg].[Eloqua_visitors]
(
[ETL__session_id] [uniqueidentifier] NOT NULL,
[ETL__insert_datetime] [datetime] NOT NULL CONSTRAINT [DF__Eloqua_vi__ETL____4AC307E8] DEFAULT (getutcdate()),
[ETL__multi_query_value_for_audit] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[json_payload] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsLoaded] [bit] NULL CONSTRAINT [DF__Eloqua_vi__IsLoa__6C23FBB3] DEFAULT ((0)),
[ID] [int] NOT NULL IDENTITY(1, 1)
)
GO
