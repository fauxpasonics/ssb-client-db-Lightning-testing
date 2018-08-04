CREATE TABLE [ods].[Venutize_Payment_Account_Profiles]
(
[ETL_ID] [int] NOT NULL IDENTITY(1, 1),
[ETL_CreatedDate] [datetime] NOT NULL CONSTRAINT [DF__Venutize___ETL_C__7AF2094E] DEFAULT (getdate()),
[ETL_UpdatedDate] [datetime] NOT NULL CONSTRAINT [DF__Venutize___ETL_U__7BE62D87] DEFAULT (getdate()),
[ETL_IsDeleted] [bit] NOT NULL CONSTRAINT [DF__Venutize___ETL_I__7CDA51C0] DEFAULT ((0)),
[ETL_DeletedDate] [datetime] NULL,
[ETL_DeltaHashKey] [binary] (32) NULL,
[ETL_SourceFileName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PaymentAccountProfileID] [int] NULL,
[UserID] [int] NULL,
[PaymentAccountID] [int] NULL,
[Title] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Description] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PaymentType] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GatewayPaymentProfileID] [bigint] NULL,
[Last4Digits] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UserData2] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LastSyncDate] [datetime] NULL,
[IsDefault] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsActive] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DateCreated] [datetime] NULL,
[DateUpdated] [datetime] NULL,
[UpdatedBy] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsTestAccount] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [ods].[Venutize_Payment_Account_Profiles] ADD CONSTRAINT [PK__Venutize__7EF6BFCD7B8F56BD] PRIMARY KEY CLUSTERED  ([ETL_ID])
GO
