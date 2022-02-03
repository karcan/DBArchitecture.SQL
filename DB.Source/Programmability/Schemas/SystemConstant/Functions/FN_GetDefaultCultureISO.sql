CREATE FUNCTION [SystemConstant].[FN_GetDefaultCultureISO]()
RETURNS NVARCHAR(5)
AS
BEGIN
	RETURN CAST([SystemConstant].[FN_GetSystemConstantByCode]('Default:CultureISO') AS NVARCHAR(5))
END
