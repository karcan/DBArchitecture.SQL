CREATE FUNCTION [User].[FN_CheckIfEmailIsUnique]
(
	@pUserID	INT					= NULL,
	@pEmail		[User].[DT_Email]
)
RETURNS @vReturnTable TABLE
(
	IsSuccess	BIT,
	[Message]	NVARCHAR(250)
)
AS
BEGIN
	
	IF EXISTS (SELECT TOP(1) 1 FROM [dbo].[V_User] WHERE Email = @pEmail AND (@pUserID IS NULL OR ID = @pUserID))
		INSERT INTO @vReturnTable
		VALUES(0, '');
	ELSE
		INSERT INTO @vReturnTable(IsSuccess)
		VALUES(1);

	RETURN
END
