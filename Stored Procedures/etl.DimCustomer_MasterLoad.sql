SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


CREATE PROCEDURE [etl].[DimCustomer_MasterLoad]

AS
BEGIN

EXEC MDM.etl.LoadDimCustomer @ClientDB = 'Lightning', @LoadView = '[etl].[vw_Load_DimCustomer_TM]', @LogLevel = '0', @DropTemp = '1', @IsDataUploaderSource = '0';


-- Eloqua
EXEC mdm.etl.LoadDimCustomer @ClientDB = 'Lightning', @LoadView = '[ods].[vw_Eloqua_LoadDimCustomer]', @LogLevel = '0', @DropTemp = '1', @IsDataUploaderSource = '0'

--CRM_Contact
EXEC mdm.etl.LoadDimCustomer @ClientDB = 'Lightning', @LoadView = '[etl].[vw_DynamicsContact_LoadDimCustomer]', @LogLevel = '0', @DropTemp = '1', @IsDataUploaderSource = '0'

--CRM_Account
EXEC mdm.etl.LoadDimCustomer @ClientDB = 'Lightning', @LoadView = '[etl].[vw_DynamicsAccount_LoadDimCustomer]', @LogLevel = '0', @DropTemp = '1', @IsDataUploaderSource = '0'

--Venutize
EXEC mdm.etl.LoadDimCustomer @ClientDB = 'Lightning', @LoadView = '[etl].[vw_Load_DimCustomer_VENUTIZE]', @LogLevel = '0', @DropTemp = '1', @IsDataUploaderSource = '0'


END
GO
