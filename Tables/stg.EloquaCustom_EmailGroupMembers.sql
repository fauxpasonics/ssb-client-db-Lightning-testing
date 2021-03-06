CREATE TABLE [stg].[EloquaCustom_EmailGroupMembers]
(
[ETL_ID] [int] NOT NULL IDENTITY(1, 1),
[ETL_CreatedDate] [datetime] NOT NULL CONSTRAINT [DF__EloquaCus__ETL_C__683E5C36] DEFAULT (getdate()),
[ETL_SourceFileName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EmailGroup] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ContactID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EmailAddress] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FirstName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LastName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Company] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EmailDisplayName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Address1] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Address2] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Address3] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[City] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[StateorProvince] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ZiporPostalCode] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Country] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BusinessPhone] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MobilePhone] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Fax] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Title] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Salutation] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Salesperson] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SFDCContactID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SFDCLeadID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DateCreated] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DateModified] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EloquaContactID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SFDCAccountID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LastModifiedbyCRMSystem] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LastSFDCCampaignID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LastSFDCCampaignStatus] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CompanyRevenue] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SFDCEmailOptOut] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LeadSourceMostRecent] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LeadSourceOriginal] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Industry] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AnnualRevenue] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LeadStatus] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[JobRole] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LeadScoreHighValueWebsiteContent] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LeadScoreDateEngagementMostRecent] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IntegratedMarketingandSalesFunnelStage] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProductSolutionofInterest] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Region] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PURLNameDefaultHypersite] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LeadRatingCombined] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EmailAddressDomain] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FirstandLastName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CompanySize] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LeadScoreLastHighTouchEventDate] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LeadRatingProfileExplicit] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LeadRatingEngagementImplicit] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LeadScoreProfileExplicit] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LeadScoreEngagementImplicit] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LeadScoreDateProfileMostRecent] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Employees] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Territory] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MD5HashedEmailAddress] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SHA256HashedEmailAddress] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MD5HashedBusinessPhone] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SHA256HashedBusinessPhone] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MD5HashedMobilePhone] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SHA256HashedMobilePhone] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PURLName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MSCRMContactID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MSCRMLeadID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MSCRMAccountID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LastMSCRMCampaignID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LastMSCRMCampaignName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LastMSCRMCampaignStatus] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LastMSCRMCampaignResponseID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MSCRMEmailOptOut] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MSCRMLeadRating] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FavoritePlayer] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HomePhone] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ArchticsID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SalespersonEmailAddress] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SalespersonPhoneNumber] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[StormSTMFunds] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[STMTotalFundsLoaded] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RelocationTime] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RelocationDay] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RelocationDate] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CheckinTime] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[STMAccountLevel] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RetentionRepName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RetentionRepEmail] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RetentionRepPhoneNumber] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SellingRepName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MerchItem] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MerchSize] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MerchSizeAlt] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MerchSelectionName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MerchSelectionNumber] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MerchSewn] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MerchNote] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FullName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SeatLocation] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[STMID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PlanType] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TBEPID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AccountName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
