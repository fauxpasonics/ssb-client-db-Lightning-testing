CREATE TABLE [stg].[Venutize_Payment_Account_Profiles]
(
[ETL_ID] [int] NOT NULL IDENTITY(1, 1),
[ETL_CreatedDate] [datetime] NOT NULL CONSTRAINT [DF__Venutize___ETL_C__7FB6BE6B] DEFAULT (getdate()),
[ETL_SourceFileName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PaymentAccountProfileID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UserID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PaymentAccountID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Title] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Description] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PaymentType] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GatewayPaymentProfileID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Last4Digits] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UserData2] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LastSyncDate] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsDefault] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsActive] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DateCreated] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DateUpdated] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UpdatedBy] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsTestAccount] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [stg].[Venutize_Payment_Account_Profiles] ADD CONSTRAINT [PK__Venutize__7EF6BFCDE7700482] PRIMARY KEY CLUSTERED  ([ETL_ID])
GO
