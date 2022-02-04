CREATE FUNCTION [Session].[FN_GetCurrentDatetime]()
RETURNS DATETIME2(7)
AS
BEGIN
	DECLARE @vDatetime DATETIME2(7) =  CAST(SESSION_CONTEXT(N'CurrentDatetime') AS DATETIME2(7))
	IF @vDatetime IS NULL
	BEGIN
		SET @vDatetime = GETDATE()
		EXEC sp_set_session_context N'CurrentDatetime', @vDatetime, 1
	END

	RETURN @vDatetime
END
