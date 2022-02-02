CREATE FUNCTION [SystemConstant].[FN_GetDefaultCultureISO]()
RETURNS NVARCHAR(5)
AS
BEGIN
	RETURN [SystemConstant].[FN_GetSystemConstantByCode]('Default:CultureISO')
END
