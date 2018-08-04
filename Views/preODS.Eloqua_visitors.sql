SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE VIEW [preODS].[Eloqua_visitors]
AS

SELECT DISTINCT
	[ETL__multi_query_value_for_audit]
	,CONVERT(INT,[SK]) [SK]
	,CONVERT(INT,[page]) [page]
	,CONVERT(INT,[pageSize]) [pageSize]
	,CONVERT(INT,[total]) [total]
	,CONVERT(NVARCHAR(250),[elements_]) [elements_]
	,CONVERT(NVARCHAR(250),[elements_type]) [elements_type]
	,CONVERT(NVARCHAR(250),[elements_visitorId]) [elements_visitorId]
	,CONVERT(NVARCHAR(250),[elements_createdAt]) [elements_createdAt]
	,CONVERT(NVARCHAR(250),[elements_V-Browser-Type]) [elements_V_Browser_Type]
	,CONVERT(NVARCHAR(250),[elements_V-IPAddress]) [elements_V_IPAddress]
	,CONVERT(INT,[elements_V-Total-Pages]) [elements_V_Total_Pages]
	,CONVERT(INT,[elements_V-Total-Time]) [elements_V_Total_Time]
	,CONVERT(INT,[elements_V-Total-Visits]) [elements_V_Total_Visits]
	,CONVERT(INT,[elements_V-Name]) [elements_V_Name]
	,CONVERT(INT,[elements_V-Current-Visit-Length]) [elements_V_Current_Visit_Length]
	,CONVERT(INT,[elements_V-Current-Total-Pages]) [elements_V_Current_Total_Pages]
	,CONVERT(NVARCHAR(500),[elements_V-FirstVisitDateAndTime]) [elements_V_FirstVisitDateAndTime]
	,CONVERT(NVARCHAR(MAX),[elements_V-FirstPageInVisit]) [elements_V_FirstPageInVisit]
	,CONVERT(NVARCHAR(MAX),[elements_V-LastPageInVisit]) [elements_V_LastPageInVisit]
	,CONVERT(NVARCHAR(500),[elements_V-LastVisitDateAndTime]) [elements_V_LastVisitDateAndTime]
	,CONVERT(INT,[elements_V-TimeZoneOffsetMin]) [elements_V_TimeZoneOffsetMin]
	,CONVERT(NVARCHAR(500),[elements_V-TimeZone]) [elements_V_TimeZone]
	,CONVERT(NVARCHAR(250),[elements_V-CountryFromIP]) [elements_V_CountryFromIP]
	,CONVERT(NVARCHAR(MAX),[elements_V-CompanyNameFromIP1]) [elements_V_CompanyNameFromIP1]
	,CONVERT(NVARCHAR(MAX),[elements_V-ISPFromIP]) [elements_V_ISPFromIP]
	,CONVERT(NVARCHAR(250),[elements_V-ProvinceFromIP]) [elements_V_ProvinceFromIP]
	,CONVERT(NVARCHAR(250),[elements_V-CityFromIP]) [elements_V_CityFromIP]
	,CONVERT(NVARCHAR(100),[elements_V-LatitudeFromIP]) [elements_V_LatitudeFromIP]
	,CONVERT(NVARCHAR(100),[elements_V-LongitudeFromIP]) [elements_V_LongitudeFromIP]
	,CONVERT(UNIQUEIDENTIFIER,[elements_externalId]) [elements_externalId_K]
	,CONVERT(NVARCHAR(250),[elements_currentStatus]) [elements_currentStatus]
	,CONVERT(NVARCHAR(MAX),[elements_V-HostName]) [elements_V_HostName]
	,CONVERT(NVARCHAR(500),[elements_V-CompanyDNSName]) [elements_V_CompanyDNSName]
	,CONVERT(NVARCHAR(250),[elements_contactId]) [elements_contactId]
	,CONVERT(NVARCHAR(250),[elements_V-ZipCodeFromIP]) [elements_V_ZipCodeFromIP]
	,CONVERT(NVARCHAR(250),[elements_V-CountryName]) [elements_V_CountryName]
FROM [src].[Eloqua_visitors] WITH (NOLOCK)
GO
