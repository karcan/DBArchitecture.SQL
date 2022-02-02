CREATE FUNCTION [SystemConstant].[FN_GetDefaultLanguageID]()
RETURNS TINYINT
AS
BEGIN
	RETURN [SystemConstant].[FN_GetSystemConstantByCode]('Default:LanguageID')
END
