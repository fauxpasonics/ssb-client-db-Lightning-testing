SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO



CREATE PROCEDURE [etl].[Cust_FactTicketSalesProcessing]
(
	@BatchId NVARCHAR (50) = '00000000-0000-0000-0000-000000000000',
	@Options NVARCHAR(MAX) = NULL
)

AS
BEGIN

/* Lightning 2017-18 Season*/
UPDATE fts
--SELECT fts.FactTicketSalesId, ds.SeasonName, de.EventCode, de.EventName, dpc.PriceCode, dpc.PriceCodeGroup, dp.PlanCode, dp.PlanName,
SET DimTicketClassId=CASE WHEN ISNULL(dpc.PC2,'') = 'R' AND ISNULL(dpc.PC3,'') NOT IN ('A','B','C') AND dp.PlanCode IN ('L18', 'L18-X') THEN 1
WHEN ISNULL(dpc.PC2,'') = 'H' AND ISNULL(dpc.PC3,'') = 'R' AND ISNULL(dpc.PC4,'') = '' AND dp.PlanCode IN ('L18HA', 'L18HB', 'L18HX-X') THEN 2
WHEN ISNULL(dpc.PC2,'') = 'H' AND ISNULL(dpc.PC3,'') = 'R' AND ISNULL(dpc.PC4,'') = '' AND dp.PlanCode NOT IN ('L18HA', 'L18HB', 'L18HX-X') AND dpc.PriceCodeGroup = 'HR' THEN 3
WHEN ISNULL(dpc.PC2,'') = 'M' AND ISNULL(dpc.PC3,'') = 'R' AND ISNULL(dpc.PC4,'') = '' AND dp.PlanCode LIKE 'L18T%' THEN 4
WHEN ISNULL(dpc.PC2,'') = 'M' AND ISNULL(dpc.PC3,'') = 'R' AND ISNULL(dpc.PC4,'') = '' AND dp.PlanCode NOT LIKE 'L18T%' AND dpc.PriceCodeGroup = 'MR' THEN 5
WHEN ISNULL(dpc.PC2,'') = 'R' AND ISNULL(dpc.PC3,'') = 'A' THEN 6
WHEN ISNULL(dpc.PC2,'') = 'H' AND ISNULL(dpc.PC3,'') = 'R' AND ISNULL(dpc.PC4,'') = 'A' THEN 7 
WHEN ISNULL(dpc.PC2,'') = 'M' AND ISNULL(dpc.PC3,'') = 'R' AND ISNULL(dpc.PC4,'') = 'A' THEN 8
WHEN ISNULL(dpc.PC2,'') = 'R' AND ISNULL(dpc.PC3,'') = 'B' THEN 9
WHEN ISNULL(dpc.PC2,'') = 'R' AND ISNULL(dpc.PC3,'') = 'C' THEN 10
WHEN ISNULL(dpc.PC2,'') = 'N' AND ISNULL(dpc.PC3,'') = '' THEN 11
WHEN ISNULL(dpc.PC2,'') = 'H' AND ISNULL(dpc.PC3,'') = 'N'  AND dpc.PriceCodeGroup != 'HN' THEN 12
WHEN ISNULL(dpc.PC2,'') = 'H' AND ISNULL(dpc.PC3,'') = 'N'  AND dpc.PriceCodeGroup = 'HN' THEN 13
WHEN ISNULL(dpc.PC2,'') = 'M' AND ISNULL(dpc.PC3,'') = 'N'  AND dpc.PriceCodeGroup != 'MN' THEN 14
WHEN ISNULL(dpc.PC2,'') = 'M' AND ISNULL(dpc.PC3,'') = 'N'  AND dpc.PriceCodeGroup = 'MN' THEN 15
WHEN ISNULL(dpc.PC2,'') = 'N' AND ISNULL(dpc.PC3,'') = 'A' THEN 16
WHEN ISNULL(dpc.PC2,'') = 'N' AND ISNULL(dpc.PC3,'') = 'C' THEN 17
WHEN ISNULL(dpc.PC2,'') = 'U' AND ISNULL(dpc.PC3,'') = '' THEN 18
WHEN ISNULL(dpc.PC2,'') = 'H' AND ISNULL(dpc.PC3,'') = 'U'  AND ISNULL(dpc.PC4,'') = '' THEN 19
WHEN ISNULL(dpc.PC2,'') = 'U' AND ISNULL(dpc.PC3,'') = 'A' THEN 20
WHEN ISNULL(dpc.PC2,'') = 'H' AND ISNULL(dpc.PC3,'') = 'U' AND ISNULL(dpc.PC4,'') = 'A' THEN 21
WHEN ISNULL(dpc.PC2,'') = 'F' AND ISNULL(dpc.PC3,'') = 'A' THEN 22
WHEN ISNULL(dpc.PC2,'') = 'X' THEN 23
WHEN ISNULL(dpc.PC2,'') = 'S' AND ISNULL(dpc.PC3,'') = 'P' THEN 26
WHEN ISNULL(dpc.PC2,'') = 'T' AND ISNULL(dpc.PC3,'') = 'R' THEN 29
WHEN ISNULL(dpc.PC3,'') = 'E' THEN 32
WHEN ISNULL(dpc.PC2,'') = 'H' AND ISNULL(dpc.PC4,'') = 'E' THEN 33
WHEN ISNULL(dpc.PC2,'') = 'M' AND ISNULL(dpc.PC4,'') = 'E' THEN 34
WHEN ISNULL(dpc.PC2,'') = 'E' THEN 35
WHEN ISNULL(dpc.PC2,'') = 'G' AND ISNULL(dpc.PC3,'') NOT IN ('0','X','P','N','W','Y','Z') THEN 36
WHEN ISNULL(dpc.PC2,'') = 'G' AND ISNULL(dpc.PC3,'') = '0' AND ISNULL(dpc.PC4,'') = '1' THEN 37
WHEN ISNULL(dpc.PC2,'') = 'G' AND ISNULL(dpc.PC3,'') = '0' AND ISNULL(dpc.PC4,'') = '2' THEN 38
WHEN ISNULL(dpc.PC2,'') = 'G' AND ISNULL(dpc.PC3,'') = '0' AND ISNULL(dpc.PC4,'') = '3' THEN 39
WHEN ISNULL(dpc.PC2,'') = 'G' AND ISNULL(dpc.PC3,'') = '0' AND ISNULL(dpc.PC4,'') = '4' THEN 40
WHEN ISNULL(dpc.PC2,'') = 'G' AND ISNULL(dpc.PC3,'') = 'X' AND ISNULL(dpc.PC4,'') = 'A' THEN 41
WHEN ISNULL(dpc.PC2,'') = 'G' AND ISNULL(dpc.PC3,'') = 'X' AND ISNULL(dpc.PC4,'') = 'B' THEN 42
WHEN ISNULL(dpc.PC2,'') = 'G' AND ISNULL(dpc.PC3,'') = 'P' THEN 43
WHEN ISNULL(dpc.PC2,'') = 'G' AND ISNULL(dpc.PC3,'') = 'N' THEN 44
WHEN ISNULL(dpc.PC2,'') = 'G' AND ISNULL(dpc.PC3,'') = 'W' THEN 45
WHEN ISNULL(dpc.PC2,'') = 'G' AND ISNULL(dpc.PC3,'') = 'Y' THEN 46
WHEN ISNULL(dpc.PC2,'') = 'G' AND ISNULL(dpc.PC3,'') = 'Z' THEN 47
WHEN ISNULL(dpc.PC2,'') = 'C' AND dp.PlanCode = 'L18TD' THEN 48
WHEN ISNULL(dpc.PC2,'') = 'A' AND ISNULL(dpc.PC3,'') != '0' THEN 49
WHEN ISNULL(dpc.PC2,'') = 'A' AND ISNULL(dpc.PC3,'') = '0' AND ISNULL(dpc.PC4,'') = '1' THEN 50
WHEN ISNULL(dpc.PC2,'') = 'A' AND ISNULL(dpc.PC3,'') = '0' AND ISNULL(dpc.PC4,'') = '2' THEN 51
WHEN ISNULL(dpc.PC2,'') = 'A' AND ISNULL(dpc.PC3,'') = '0' AND ISNULL(dpc.PC4,'') = '3' THEN 52
WHEN ISNULL(dpc.PC2,'') = 'A' AND ISNULL(dpc.PC3,'') = '0' AND ISNULL(dpc.PC4,'') = '4' THEN 53
WHEN ISNULL(dpc.PC2,'') = 'A' AND ISNULL(dpc.PC3,'') = '0' AND ISNULL(dpc.PC4,'') = '5' THEN 54
WHEN ISNULL(dpc.PC2,'') = 'A' AND ISNULL(dpc.PC3,'') = '0' AND ISNULL(dpc.PC4,'') = '6' THEN 55
WHEN ISNULL(dpc.PC2,'') = 'A' AND ISNULL(dpc.PC3,'') = '0' AND ISNULL(dpc.PC4,'') = '7' THEN 56
WHEN ISNULL(dpc.PC2,'') = 'C' AND dp.PlanCode != 'L18TD' THEN 57
ELSE 0 END
FROM dbo.FactTicketSales_V2 fts
JOIN dbo.DimSeason_V2 ds ON ds.DimSeasonId = fts.DimSeasonId
JOIN dbo.DimEvent_V2 de ON de.DimEventId = fts.DimEventId
JOIN dbo.DimPriceCode_V2 dpc ON dpc.DimPriceCodeId = fts.DimPriceCodeId
JOIN dbo.DimPlan_V2 dp ON dp.DimPlanId = fts.DimPlanId
WHERE de.DimSeasonId = 61;

UPDATE fts
SET DimPlanTypeId = CASE WHEN dtc.TicketClassCode = '_R' THEN 1
	   WHEN dtc.TicketClassCode = '_N' THEN 2
	   WHEN dtc.TicketClassCode = '_U' THEN 3
	   WHEN dtc.TicketClassCode = '_E' THEN 4
	   WHEN dtc.TicketClassCode = '_TR' THEN 5
	   WHEN dtc.TicketClassCode = '_SP' THEN 6
	   WHEN dtc.TicketClassCode = '_AA' THEN 7
	   WHEN dtc.TicketClassCode = '_C' THEN 8
	   ELSE 0
	   END
FROM dbo.FactTicketSales_V2 fts 
    JOIN dbo.DimTicketClass_V2 dtc
        ON dtc.DimTicketClassId = fts.DimTicketClassId
WHERE DimSeasonId = 61;

UPDATE fts
SET fts.DimTicketTypeId = CASE WHEN Config_Category2 = 'Full' THEN 1
	   WHEN Config_Category2 = 'Half' THEN 2 
	   WHEN Config_Category2 = 'Ten' THEN 3 
	   WHEN Config_Category2 = 'Mini' THEN 4
	   WHEN Config_Category2 = 'Single' THEN 5 
	   WHEN Config_Category2 = 'Group' THEN 6
	   WHEN Config_Category2 = 'Comp' THEN 7 
	   WHEN Config_Category5 = 'Suites' THEN 8 
	   ELSE 0
	   END
FROM dbo.FactTicketSales_V2 fts 
    JOIN dbo.DimTicketClass_V2 dtc
        ON dtc.DimTicketClassId = fts.DimTicketClassId
WHERE DimSeasonId = 61;

/* Lightning 2017-18 Season*/
UPDATE fts
--SELECT fts.FactTicketSalesId, ds.SeasonName, de.EventCode, de.EventName, dpc.PriceCode, dpc.PriceCodeGroup, dp.PlanCode, dp.PlanName,
SET DimTicketClassId=CASE WHEN ISNULL(dpc.PC2,'') = 'R' AND ISNULL(dpc.PC3,'') NOT IN ('A','B','C') AND dp.PlanCode IN ('L17', 'L17-X') THEN 1
WHEN ISNULL(dpc.PC2,'') = 'H' AND ISNULL(dpc.PC3,'') = 'R' AND ISNULL(dpc.PC4,'') = '' AND dp.PlanCode IN ('L17HA', 'L17HB', 'L17HX-X') THEN 2
WHEN ISNULL(dpc.PC2,'') = 'H' AND ISNULL(dpc.PC3,'') = 'R' AND ISNULL(dpc.PC4,'') = '' AND dp.PlanCode NOT IN ('L17HA', 'L17HB', 'L17HX-X') AND dpc.PriceCodeGroup = 'HR' THEN 3
WHEN ISNULL(dpc.PC2,'') = 'M' AND ISNULL(dpc.PC3,'') = 'R' AND ISNULL(dpc.PC4,'') = '' AND dp.PlanCode LIKE 'L17T%' THEN 4
WHEN ISNULL(dpc.PC2,'') = 'M' AND ISNULL(dpc.PC3,'') = 'R' AND ISNULL(dpc.PC4,'') = '' AND dp.PlanCode NOT LIKE 'L17T%' AND dpc.PriceCodeGroup = 'MR' THEN 5
WHEN ISNULL(dpc.PC2,'') = 'R' AND ISNULL(dpc.PC3,'') = 'A' THEN 6
WHEN ISNULL(dpc.PC2,'') = 'H' AND ISNULL(dpc.PC3,'') = 'R' AND ISNULL(dpc.PC4,'') = 'A' THEN 7 
WHEN ISNULL(dpc.PC2,'') = 'M' AND ISNULL(dpc.PC3,'') = 'R' AND ISNULL(dpc.PC4,'') = 'A' THEN 8
WHEN ISNULL(dpc.PC2,'') = 'R' AND ISNULL(dpc.PC3,'') = 'B' THEN 9
WHEN ISNULL(dpc.PC2,'') = 'R' AND ISNULL(dpc.PC3,'') = 'C' THEN 10
WHEN ISNULL(dpc.PC2,'') = 'N' AND ISNULL(dpc.PC3,'') = '' THEN 11
WHEN ISNULL(dpc.PC2,'') = 'H' AND ISNULL(dpc.PC3,'') = 'N'  AND dpc.PriceCodeGroup != 'HN' THEN 12
WHEN ISNULL(dpc.PC2,'') = 'H' AND ISNULL(dpc.PC3,'') = 'N'  AND dpc.PriceCodeGroup = 'HN' THEN 13
WHEN ISNULL(dpc.PC2,'') = 'M' AND ISNULL(dpc.PC3,'') = 'N'  AND dpc.PriceCodeGroup != 'MN' THEN 14
WHEN ISNULL(dpc.PC2,'') = 'M' AND ISNULL(dpc.PC3,'') = 'N'  AND dpc.PriceCodeGroup = 'MN' THEN 15
WHEN ISNULL(dpc.PC2,'') = 'N' AND ISNULL(dpc.PC3,'') = 'A' THEN 16
WHEN ISNULL(dpc.PC2,'') = 'N' AND ISNULL(dpc.PC3,'') = 'C' THEN 17
WHEN ISNULL(dpc.PC2,'') = 'U' AND ISNULL(dpc.PC3,'') = '' THEN 18
WHEN ISNULL(dpc.PC2,'') = 'H' AND ISNULL(dpc.PC3,'') = 'U'  AND ISNULL(dpc.PC4,'') = '' THEN 19
WHEN ISNULL(dpc.PC2,'') = 'U' AND ISNULL(dpc.PC3,'') = 'A' THEN 20
WHEN ISNULL(dpc.PC2,'') = 'H' AND ISNULL(dpc.PC3,'') = 'U' AND ISNULL(dpc.PC4,'') = 'A' THEN 21
WHEN ISNULL(dpc.PC2,'') = 'F' AND ISNULL(dpc.PC3,'') = 'A' THEN 22
WHEN ISNULL(dpc.PC2,'') = 'X' THEN 23
WHEN ISNULL(dpc.PC2,'') = 'S' AND ISNULL(dpc.PC3,'') = 'P' THEN 26
WHEN ISNULL(dpc.PC2,'') = 'T' AND ISNULL(dpc.PC3,'') = 'R' THEN 29
WHEN ISNULL(dpc.PC3,'') = 'E' THEN 32
WHEN ISNULL(dpc.PC2,'') = 'H' AND ISNULL(dpc.PC4,'') = 'E' THEN 33
WHEN ISNULL(dpc.PC2,'') = 'M' AND ISNULL(dpc.PC4,'') = 'E' THEN 34
WHEN ISNULL(dpc.PC2,'') = 'E' THEN 35
WHEN ISNULL(dpc.PC2,'') = 'G' AND ISNULL(dpc.PC3,'') NOT IN ('0','X','P','N','W','Y','Z') THEN 36
WHEN ISNULL(dpc.PC2,'') = 'G' AND ISNULL(dpc.PC3,'') = '0' AND ISNULL(dpc.PC4,'') = '1' THEN 37
WHEN ISNULL(dpc.PC2,'') = 'G' AND ISNULL(dpc.PC3,'') = '0' AND ISNULL(dpc.PC4,'') = '2' THEN 38
WHEN ISNULL(dpc.PC2,'') = 'G' AND ISNULL(dpc.PC3,'') = '0' AND ISNULL(dpc.PC4,'') = '3' THEN 39
WHEN ISNULL(dpc.PC2,'') = 'G' AND ISNULL(dpc.PC3,'') = '0' AND ISNULL(dpc.PC4,'') = '4' THEN 40
WHEN ISNULL(dpc.PC2,'') = 'G' AND ISNULL(dpc.PC3,'') = 'X' AND ISNULL(dpc.PC4,'') = 'A' THEN 41
WHEN ISNULL(dpc.PC2,'') = 'G' AND ISNULL(dpc.PC3,'') = 'X' AND ISNULL(dpc.PC4,'') = 'B' THEN 42
WHEN ISNULL(dpc.PC2,'') = 'G' AND ISNULL(dpc.PC3,'') = 'P' THEN 43
WHEN ISNULL(dpc.PC2,'') = 'G' AND ISNULL(dpc.PC3,'') = 'N' THEN 44
WHEN ISNULL(dpc.PC2,'') = 'G' AND ISNULL(dpc.PC3,'') = 'W' THEN 45
WHEN ISNULL(dpc.PC2,'') = 'G' AND ISNULL(dpc.PC3,'') = 'Y' THEN 46
WHEN ISNULL(dpc.PC2,'') = 'G' AND ISNULL(dpc.PC3,'') = 'Z' THEN 47
WHEN ISNULL(dpc.PC2,'') = 'C' AND dp.PlanCode = 'L17TD' THEN 48
WHEN ISNULL(dpc.PC2,'') = 'A' AND ISNULL(dpc.PC3,'') != '0' THEN 49
WHEN ISNULL(dpc.PC2,'') = 'A' AND ISNULL(dpc.PC3,'') = '0' AND ISNULL(dpc.PC4,'') = '1' THEN 50
WHEN ISNULL(dpc.PC2,'') = 'A' AND ISNULL(dpc.PC3,'') = '0' AND ISNULL(dpc.PC4,'') = '2' THEN 51
WHEN ISNULL(dpc.PC2,'') = 'A' AND ISNULL(dpc.PC3,'') = '0' AND ISNULL(dpc.PC4,'') = '3' THEN 52
WHEN ISNULL(dpc.PC2,'') = 'A' AND ISNULL(dpc.PC3,'') = '0' AND ISNULL(dpc.PC4,'') = '4' THEN 53
WHEN ISNULL(dpc.PC2,'') = 'A' AND ISNULL(dpc.PC3,'') = '0' AND ISNULL(dpc.PC4,'') = '5' THEN 54
WHEN ISNULL(dpc.PC2,'') = 'A' AND ISNULL(dpc.PC3,'') = '0' AND ISNULL(dpc.PC4,'') = '6' THEN 55
WHEN ISNULL(dpc.PC2,'') = 'A' AND ISNULL(dpc.PC3,'') = '0' AND ISNULL(dpc.PC4,'') = '7' THEN 56
WHEN ISNULL(dpc.PC2,'') = 'C' AND dp.PlanCode != 'L17TD' THEN 57
ELSE 0 END
FROM dbo.FactTicketSales_V2 fts
JOIN dbo.DimSeason_V2 ds ON ds.DimSeasonId = fts.DimSeasonId
JOIN dbo.DimEvent_V2 de ON de.DimEventId = fts.DimEventId
JOIN dbo.DimPriceCode_V2 dpc ON dpc.DimPriceCodeId = fts.DimPriceCodeId
JOIN dbo.DimPlan_V2 dp ON dp.DimPlanId = fts.DimPlanId
WHERE de.DimSeasonId = 53;

UPDATE fts
SET DimPlanTypeId = CASE WHEN dtc.TicketClassCode = '_R' THEN 1
	   WHEN dtc.TicketClassCode = '_N' THEN 2
	   WHEN dtc.TicketClassCode = '_U' THEN 3
	   WHEN dtc.TicketClassCode = '_E' THEN 4
	   WHEN dtc.TicketClassCode = '_TR' THEN 5
	   WHEN dtc.TicketClassCode = '_SP' THEN 6
	   WHEN dtc.TicketClassCode = '_AA' THEN 7
	   WHEN dtc.TicketClassCode = '_C' THEN 8
	   ELSE 0
	   END
FROM dbo.FactTicketSales_V2 fts 
    JOIN dbo.DimTicketClass_V2 dtc
        ON dtc.DimTicketClassId = fts.DimTicketClassId
WHERE DimSeasonId = 53;

UPDATE fts
SET fts.DimTicketTypeId = CASE WHEN Config_Category2 = 'Full' THEN 1
	   WHEN Config_Category2 = 'Half' THEN 2 
	   WHEN Config_Category2 = 'Ten' THEN 3 
	   WHEN Config_Category2 = 'Mini' THEN 4
	   WHEN Config_Category2 = 'Single' THEN 5 
	   WHEN Config_Category2 = 'Group' THEN 6
	   WHEN Config_Category2 = 'Comp' THEN 7 
	   WHEN Config_Category5 = 'Suites' THEN 8 
	   ELSE 0
	   END
FROM dbo.FactTicketSales_V2 fts 
    JOIN dbo.DimTicketClass_V2 dtc
        ON dtc.DimTicketClassId = fts.DimTicketClassId
WHERE DimSeasonId = 53;

/* Lightning 2016-17 Season*/
UPDATE fts
SET DimTicketClassId=CASE WHEN ISNULL(dpc.PC2,'') = 'R' AND ISNULL(dpc.PC3,'') NOT IN ('A','B') THEN 60
WHEN ISNULL(dpc.PC2,'') = 'H' AND ISNULL(dpc.PC3,'') = 'R' AND ISNULL(dpc.PC4,'') != 'E' THEN 61
WHEN ISNULL(dpc.PC2,'') = 'M' AND ISNULL(dpc.PC3,'') = 'R' AND ISNULL(dpc.PC4,'') != 'E' THEN 62
WHEN ISNULL(dpc.PC2,'') = 'R' AND ISNULL(dpc.PC3,'') = 'A' THEN 63
WHEN ISNULL(dpc.PC2,'') = 'R' AND ISNULL(dpc.PC3,'') = 'B' THEN 64
WHEN ISNULL(dpc.PC2,'') = 'N' THEN 65
WHEN ISNULL(dpc.PC2,'') = 'H' AND ISNULL(dpc.PC3,'') = 'N' THEN 66
WHEN ISNULL(dpc.PC2,'') = 'M' AND ISNULL(dpc.PC3,'') = 'N' THEN 67
WHEN ISNULL(dpc.PC2,'') = 'U' THEN 68
WHEN ISNULL(dpc.PC2,'') = 'H' AND ISNULL(dpc.PC3,'') = 'U'  AND ISNULL(dpc.PC4,'') != 'E' THEN 69
WHEN ISNULL(dpc.PC2,'') = 'F' AND ISNULL(dpc.PC3,'') = 'A' THEN 70
WHEN ISNULL(dpc.PC2,'') = 'F' AND ISNULL(dpc.PC3,'') = 'B' THEN 71
WHEN ISNULL(dpc.PC2,'') = 'X' THEN 72
WHEN ISNULL(dpc.PC2,'') = 'S' AND ISNULL(dpc.PC3,'') = 'P' THEN 75
WHEN ISNULL(dpc.PC2,'') = 'T' AND ISNULL(dpc.PC3,'') = 'R' THEN 79
WHEN ISNULL(dpc.PC3,'') = 'E' THEN 82
WHEN ISNULL(dpc.PC2,'') = 'H' AND ISNULL(dpc.PC4,'') = 'E' THEN 83
WHEN ISNULL(dpc.PC2,'') = 'M' AND ISNULL(dpc.PC4,'') = 'E' THEN 84
WHEN ISNULL(dpc.PC2,'') = 'E' THEN 85
WHEN ISNULL(dpc.PC2,'') = 'G' AND ISNULL(dpc.PC3,'') NOT IN ('0','X','P','N','W','Y','Z') AND ISNULL(dpc.PC4,'') NOT IN ('1','2','3','4','A','B','C','D','E','F','G','H') THEN 86
WHEN ISNULL(dpc.PC2,'') = 'G' AND ISNULL(dpc.PC3,'') = '0' AND ISNULL(dpc.PC4,'') = '1' THEN 87
WHEN ISNULL(dpc.PC2,'') = 'G' AND ISNULL(dpc.PC3,'') = '0' AND ISNULL(dpc.PC4,'') = '2' THEN 88
WHEN ISNULL(dpc.PC2,'') = 'G' AND ISNULL(dpc.PC3,'') = '0' AND ISNULL(dpc.PC4,'') = '3' THEN 89
WHEN ISNULL(dpc.PC2,'') = 'G' AND ISNULL(dpc.PC3,'') = '0' AND ISNULL(dpc.PC4,'') = '4' THEN 90
WHEN ISNULL(dpc.PC2,'') = 'G' AND ISNULL(dpc.PC3,'') = 'X' AND ISNULL(dpc.PC4,'') = 'A' THEN 91
WHEN ISNULL(dpc.PC2,'') = 'G' AND ISNULL(dpc.PC3,'') = 'X' AND ISNULL(dpc.PC4,'') = 'B' THEN 92
WHEN ISNULL(dpc.PC2,'') = 'G' AND ISNULL(dpc.PC3,'') = 'X' AND ISNULL(dpc.PC4,'') = 'C' THEN 93
WHEN ISNULL(dpc.PC2,'') = 'G' AND ISNULL(dpc.PC3,'') = 'X' AND ISNULL(dpc.PC4,'') = 'D' THEN 94
WHEN ISNULL(dpc.PC2,'') = 'G' AND ISNULL(dpc.PC3,'') = 'X' AND ISNULL(dpc.PC4,'') = 'E' THEN 95
WHEN ISNULL(dpc.PC2,'') = 'G' AND ISNULL(dpc.PC3,'') = 'X' AND ISNULL(dpc.PC4,'') = 'F' THEN 96
WHEN ISNULL(dpc.PC2,'') = 'G' AND ISNULL(dpc.PC3,'') = 'X' AND ISNULL(dpc.PC4,'') = 'G' THEN 97
WHEN ISNULL(dpc.PC2,'') = 'G' AND ISNULL(dpc.PC3,'') = 'X' AND ISNULL(dpc.PC4,'') = 'H' THEN 98
WHEN ISNULL(dpc.PC2,'') = 'G' AND ISNULL(dpc.PC3,'') = 'P' THEN 99
WHEN ISNULL(dpc.PC2,'') = 'G' AND ISNULL(dpc.PC3,'') = 'N' THEN 100
WHEN ISNULL(dpc.PC2,'') = 'G' AND ISNULL(dpc.PC3,'') = 'W' THEN 101
WHEN ISNULL(dpc.PC2,'') = 'G' AND ISNULL(dpc.PC3,'') = 'Y' THEN 102
WHEN ISNULL(dpc.PC2,'') = 'G' AND ISNULL(dpc.PC3,'') = 'Z' THEN 103
WHEN ISNULL(dpc.PC1,'') = 'A' THEN 104
WHEN ISNULL(dpc.PC2,'') = 'A' AND ISNULL(dpc.PC3,'') != '0' THEN 105
WHEN ISNULL(dpc.PC2,'') = 'A' AND ISNULL(dpc.PC3,'') = '0' AND ISNULL(dpc.PC4,'') = '1' THEN 106
WHEN ISNULL(dpc.PC2,'') = 'A' AND ISNULL(dpc.PC3,'') = '0' AND ISNULL(dpc.PC4,'') = '2' THEN 107
WHEN ISNULL(dpc.PC2,'') = 'A' AND ISNULL(dpc.PC3,'') = '0' AND ISNULL(dpc.PC4,'') = '3' THEN 108
WHEN ISNULL(dpc.PC2,'') = 'A' AND ISNULL(dpc.PC3,'') = '0' AND ISNULL(dpc.PC4,'') = '4' THEN 109
WHEN ISNULL(dpc.PC2,'') = 'A' AND ISNULL(dpc.PC3,'') = '0' AND ISNULL(dpc.PC4,'') = '5' THEN 110
WHEN ISNULL(dpc.PC2,'') = 'A' AND ISNULL(dpc.PC3,'') = '0' AND ISNULL(dpc.PC4,'') = '6' THEN 111
WHEN ISNULL(dpc.PC2,'') = 'A' AND ISNULL(dpc.PC3,'') = '0' AND ISNULL(dpc.PC4,'') = '7' THEN 112
WHEN ISNULL(dpc.PC2,'') = 'A' AND ISNULL(dpc.PC3,'') = '0' AND ISNULL(dpc.PC4,'') = '8' THEN 113
WHEN ISNULL(dpc.PC2,'') = 'A' AND ISNULL(dpc.PC3,'') = '0' AND ISNULL(dpc.PC4,'') = '9' THEN 114
WHEN ISNULL(dpc.PC2,'') = 'C' THEN 115
ELSE 0 END
FROM dbo.FactTicketSales_V2 fts
JOIN dbo.DimSeason_V2 ds ON ds.DimSeasonId = fts.DimSeasonId
JOIN dbo.DimEvent_V2 de ON de.DimEventId = fts.DimEventId
JOIN dbo.DimPriceCode_V2 dpc ON dpc.DimPriceCodeId = fts.DimPriceCodeId
JOIN dbo.DimPlan_V2 dp ON dp.DimPlanId = fts.DimPlanId
WHERE fts.DimSeasonId = 34


UPDATE fts
SET DimPlanTypeId = CASE WHEN dtc.TicketClassCode = '_R' THEN 1
	   WHEN dtc.TicketClassCode = '_N' THEN 2
	   WHEN dtc.TicketClassCode = '_U' THEN 3
	   WHEN dtc.TicketClassCode = '_E' THEN 4
	   WHEN dtc.TicketClassCode = '_TR' THEN 5
	   WHEN dtc.TicketClassCode = '_SP' THEN 6
	   WHEN dtc.TicketClassCode = '_AA' THEN 7
	   WHEN dtc.TicketClassCode = '_C' THEN 8
	   ELSE 0
	   END
FROM dbo.FactTicketSales_V2 fts 
    JOIN dbo.DimTicketClass_V2 dtc
        ON dtc.DimTicketClassId = fts.DimTicketClassId
WHERE fts.DimSeasonId = 34

UPDATE fts
SET fts.DimTicketTypeId = CASE WHEN Config_Category2 = 'Full' THEN 1
	   WHEN Config_Category2 = 'Half' THEN 2 
	   WHEN Config_Category2 = 'Ten' THEN 3 
	   WHEN Config_Category2 = 'Mini' THEN 4
	   WHEN Config_Category2 = 'Single' THEN 5 
	   WHEN Config_Category2 = 'Group' THEN 6
	   WHEN Config_Category2 = 'Comp' THEN 7 
	   WHEN Config_Category5 = 'Suites' THEN 8 
	   ELSE 0
	   END
FROM dbo.FactTicketSales_V2 fts 
    JOIN dbo.DimTicketClass_V2 dtc
        ON dtc.DimTicketClassId = fts.DimTicketClassId
WHERE fts.DimSeasonId = 34


END 
GO
