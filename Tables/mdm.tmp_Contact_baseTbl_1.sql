CREATE TABLE [mdm].[tmp_Contact_baseTbl_1]
(
[dimcustomerid] [int] NOT NULL IDENTITY(1, 1),
[ssid] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[sourcesystem] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[hashplaintext_1] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[hash_1] [varbinary] (32) NULL,
[hashplaintext_2] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[hash_2] [varbinary] (32) NULL,
[hashplaintext_3] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[hash_3] [varbinary] (32) NULL,
[hashplaintext_10] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[hash_10] [varbinary] (32) NULL,
[hashplaintext_11] [nvarchar] (752) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[hash_11] [varbinary] (32) NULL,
[hashplaintext_12] [nvarchar] (577) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[hash_12] [varbinary] (32) NULL
)
GO
CREATE CLUSTERED INDEX [ix_dimcustomerid] ON [mdm].[tmp_Contact_baseTbl_1] ([dimcustomerid])
GO
CREATE NONCLUSTERED INDEX [ix_hash_1] ON [mdm].[tmp_Contact_baseTbl_1] ([hash_1]) INCLUDE ([dimcustomerid])
GO
CREATE NONCLUSTERED INDEX [ix_hash_10] ON [mdm].[tmp_Contact_baseTbl_1] ([hash_10]) INCLUDE ([dimcustomerid])
GO
CREATE NONCLUSTERED INDEX [ix_hash_11] ON [mdm].[tmp_Contact_baseTbl_1] ([hash_11]) INCLUDE ([dimcustomerid])
GO
CREATE NONCLUSTERED INDEX [ix_hash_12] ON [mdm].[tmp_Contact_baseTbl_1] ([hash_12]) INCLUDE ([dimcustomerid])
GO
CREATE NONCLUSTERED INDEX [ix_hash_2] ON [mdm].[tmp_Contact_baseTbl_1] ([hash_2]) INCLUDE ([dimcustomerid])
GO
CREATE NONCLUSTERED INDEX [ix_hash_3] ON [mdm].[tmp_Contact_baseTbl_1] ([hash_3]) INCLUDE ([dimcustomerid])
GO
