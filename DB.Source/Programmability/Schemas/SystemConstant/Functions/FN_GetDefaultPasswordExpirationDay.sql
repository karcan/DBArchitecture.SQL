CREATE FUNCTION [SystemConstant].[FN_GetDefaultPasswordExpirationDay]()
RETURNS TINYINT
AS
BEGIN
	RETURN CAST([SystemConstant].[FN_GetSystemConstantByCode]('Default:PasswordExpirationDay') AS TINYINT)
END
