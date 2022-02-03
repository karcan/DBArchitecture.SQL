CREATE FUNCTION [SystemConstant].[FN_GetDefaultPageNumber]()
RETURNS INT
AS
BEGIN
	RETURN CAST([SystemConstant].[FN_GetSystemConstantByCode]('Default:PageNumber') AS INT)
END
