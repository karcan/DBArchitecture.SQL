CREATE FUNCTION [SystemConstant].[FN_GetSystemConstantByCode]
(
	@pCode	NVARCHAR(50)
)
RETURNS NVARCHAR(100)
AS
BEGIN
	RETURN (SELECT [Value] FROM [dbo].[V_SystemConstant] WHERE Code = @pCode)
END
