CREATE FUNCTION [dbo].[FN_GetCurrentProcedureName]
(
	@pObjectID	INT
)
RETURNS NVARCHAR(128)
AS
BEGIN
	RETURN ( 
		SELECT 
			CONCAT(QUOTENAME(OBJECT_SCHEMA_NAME(@@PROCID)),'.',QUOTENAME(OBJECT_NAME(@@PROCID)))
	)
END
