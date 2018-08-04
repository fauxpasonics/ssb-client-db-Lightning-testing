CREATE TABLE [etl].[LightningTMFullFileMappingToStage]
(
[ETL__ID] [bigint] NOT NULL IDENTITY(1, 1),
[ETL__CreatedDate] [datetime] NOT NULL,
[ETL__Source] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETL__DeltaHashKey] [binary] (32) NULL,
[File] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[StageTable] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [etl].[LightningTMFullFileMappingToStage] ADD CONSTRAINT [PK__Lightnin__C4EA244505E90CB2] PRIMARY KEY CLUSTERED  ([ETL__ID])
GO
