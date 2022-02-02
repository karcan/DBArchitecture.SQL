CREATE FUNCTION [SystemConstant].[FN_GetDefaultLoVScrollSize]()
RETURNS TINYINT
AS
BEGIN
	RETURN [SystemConstant].[FN_GetSystemConstantByCode]('Default:LoVScrollSize')
END
