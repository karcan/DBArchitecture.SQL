CREATE FUNCTION [SystemConstant].[FN_GetDefaultPageNumber]()
RETURNS INT
AS
BEGIN
	RETURN [SystemConstant].[FN_GetSystemConstantByCode]('Default:PageNumber')
END
