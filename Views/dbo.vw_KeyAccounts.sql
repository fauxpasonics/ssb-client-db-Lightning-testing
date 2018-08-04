SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO



CREATE VIEW [dbo].[vw_KeyAccounts]
AS 

--WITH SSBID AS (
--	SELECT DISTINCT ssbid.SSB_CRMSYSTEM_CONTACT_ID
--	FROM mdm.vw_TM_STH vw
--	JOIN dbo.dimcustomerssbid ssbid ON vw.dimcustomerid = ssbid.DimCustomerid
--	WHERE vw.STH = 1 OR vw.Suite = 1
--	)


--SELECT dc.DimCustomerID, ssbid.SSB_CRMSYSTEM_CONTACT_ID SSBID, dc.SSID
--FROM SSBID vw
--JOIN dbo.dimcustomerssbid ssbid ON vw.SSB_CRMSYSTEM_CONTACT_ID = ssbid.SSB_CRMSYSTEM_CONTACT_ID
--JOIN dbo.dimcustomer dc ON ssbid.DimCustomerid = dc.DimCustomerId
--WHERE dc.SourceSystem = 'CRM_Contacts'
WITH STR_Sponsor AS (
SELECT DISTINCT
        ssbid.DimCustomerId ,
        ssbid.SSB_CRMSYSTEM_CONTACT_ID ,
        ssbid.SSID
--INTO #STR_Sponsor
FROM    Lightning_Reporting.Prodcopy.str_Invoice strinv
        JOIN Lightning.dbo.vwDimCustomer_ModAcctId ssbid (NOLOCK) ON ssbid.SSID = strinv.str_customerid
                                                        AND ssbid.SourceSystem = 'CRM_Account'
UNION

SELECT DISTINCT
        ssbid.DimCustomerId ,
        ssbid.SSB_CRMSYSTEM_CONTACT_ID ,
        ssbid.SSID
FROM    Lightning_Reporting.Prodcopy.str_Opportunity stropp
        JOIN Lightning.dbo.vwDimCustomer_ModAcctId ssbid (NOLOCK) ON ssbid.SSID = stropp.str_customerid
                                                        AND ssbid.SourceSystem = 'CRM_Account'
UNION
SELECT DISTINCT
        ssbid.DimCustomerId ,
        ssbid.SSB_CRMSYSTEM_CONTACT_ID ,
        ssbid.SSID
FROM    Lightning_Reporting.Prodcopy.str_Quote strquote
        JOIN Lightning.dbo.vwDimCustomer_ModAcctId ssbid (NOLOCK) ON ssbid.SSID = strquote.str_customerid
                                                        AND ssbid.SourceSystem = 'CRM_Account'
UNION
SELECT DISTINCT
        ssbid.DimCustomerId ,
        ssbid.SSB_CRMSYSTEM_CONTACT_ID ,
        ssbid.SSID
FROM    Lightning_Reporting.Prodcopy.str_Salesorder strcont
        JOIN Lightning.dbo.vwDimCustomer_ModAcctId ssbid (NOLOCK) ON ssbid.SSID = strcont.str_customerid
                                                        AND ssbid.SourceSystem = 'CRM_Account'
														)
SELECT DISTINCT DimcustomerID, STR_Sponsor.SSB_CRMSYSTEM_CONTACT_ID SSBID, SSID
FROM STR_Sponsor
Union
SELECT DISTINCT DimCustomerId, SSB_CRMSYSTEM_CONTACT_ID SSBID, ssid 
FROM dbo.[vwDimCustomer_ModAcctId] dc
JOIN dbo.FactTicketSales_V2 fts ON fts.ETL__SSID_TM_acct_id = dc.AccountId AND dc.SourceSystem = 'TM' AND dc.CustomerType = 'Primary' 
JOIN dbo.DimSeason_V2 ds ON ds.DimSeasonId = fts.DimSeasonId
WHERE DimTicketTypeId IN (1,2,3) AND ds.SeasonYear>= YEAR(GETDATE())-1



GO
