CREATE FUNCTION [SystemConstant].[FN_GetDefaultLanguageID]()
RETURNS TINYINT
AS
BEGIN
	RETURN CAST([SystemConstant].[FN_GetSystemConstantByCode]('Default:LanguageID') AS TINYINT)
END
