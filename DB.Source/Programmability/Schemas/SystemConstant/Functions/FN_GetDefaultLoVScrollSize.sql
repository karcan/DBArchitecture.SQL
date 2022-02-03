CREATE FUNCTION [SystemConstant].[FN_GetDefaultLoVScrollSize]()
RETURNS TINYINT
AS
BEGIN
	RETURN CAST([SystemConstant].[FN_GetSystemConstantByCode]('Default:LoVScrollSize') AS TINYINT)
END
