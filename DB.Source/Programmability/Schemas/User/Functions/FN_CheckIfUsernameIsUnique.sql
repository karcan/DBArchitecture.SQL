CREATE FUNCTION [User].[FN_CheckIfUsernameIsUnique]
(
	@pUserID	INT						= NULL,
	@pUsername	[User].[DT_Username]
)
RETURNS @vReturnTable TABLE
(
	IsSuccess	BIT,
	[Message]	NVARCHAR(250)
)
AS
BEGIN
	
	IF EXISTS (SELECT TOP(1) 1 FROM [dbo].[V_User] WHERE Username = @pUsername AND (@pUserID IS NULL OR ID = @pUserID))
		INSERT INTO @vReturnTable
		VALUES(0, '');
	ELSE
		INSERT INTO @vReturnTable(IsSuccess)
		VALUES(1);

	RETURN
END
