CREATE FUNCTION [SystemConstant].[FN_GetDefaultPageRowSize]()
RETURNS BIGINT
AS
BEGIN
	RETURN CAST([SystemConstant].[FN_GetSystemConstantByCode]('Default:PageRowSize') AS BIGINT)
END
