SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


CREATE PROCEDURE [etl].[sp_CRMInteg_RecentCustData]
AS

TRUNCATE TABLE etl.CRMProcess_RecentCustData

DECLARE @Client VARCHAR(50)
SET @Client = 'lightning' --updateme


SELECT x.dimcustomerid, MAX(x.maxtransdate) maxtransdate, x.team
INTO #tmpTicketSales
	FROM (

		SELECT dc.dimcustomerid, MAX(fts.CreatedDate) maxtransdate, @Client AS team
		FROM dbo.DimCustomer dc (NOLOCK)
			INNER JOIN dbo.FactTicketSales_V2 fts
				ON dc.AccountId = fts.ETL__SSID_TM_acct_id AND dc.SourceSystem = 'TM'
		WHERE dc.CustomerType='Primary' AND fts.CreatedDate>= DATEADD(YEAR, -3, GETDATE())
		GROUP BY dc.dimcustomerid


		UNION

		SELECT ma.DimCustomerId, MAX(tex.add_datetime)  maxtransdate, @Client
		FROM ods.TM_Tex tex
		INNER JOIN dbo.vwDimCustomer_ModAcctId ma
		ON tex.assoc_acct_id = ma.AccountId AND ma.SourceSystem = 'tm' AND ma.CustomerType = 'primary'
		WHERE tex.add_datetime >= DATEADD(YEAR, -3, GETDATE())
		GROUP BY ma.DimCustomerId

		--	UNION
		
		--SELECT dc.dimcustomerid, MAX(n.upd_Datetime) maxtransdate, @Client AS team
		--FROM dbo.DimCustomer dc
		--	INNER JOIN ods.TM_Note n
		--		ON n.acct_id = dc.AccountId
		--WHERE dc.CustomerType='Primary' AND CONVERT(DATE,n.upd_Datetime)>= DATEADD(YEAR, -2, GETDATE())
		--GROUP BY dc.DimCustomerId

		) x
		GROUP BY x.dimcustomerid, x.team



INSERT INTO etl.CRMProcess_RecentCustData (dimcustomerid, SSID, MaxTransDate, Team)
SELECT a.dimcustomerid, SSID, [MaxTransDate], Team FROM [#tmpTicketSales] a 
INNER JOIN dbo.[vwDimCustomer_ModAcctId] b ON [b].[DimCustomerId] = [a].[DimCustomerId]


GO
