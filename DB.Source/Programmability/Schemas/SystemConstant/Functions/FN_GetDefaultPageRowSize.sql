CREATE FUNCTION [SystemConstant].[FN_GetDefaultPageRowSize]()
RETURNS BIGINT
AS
BEGIN
	RETURN [SystemConstant].[FN_GetSystemConstantByCode]('Default:PageRowSize')
END
