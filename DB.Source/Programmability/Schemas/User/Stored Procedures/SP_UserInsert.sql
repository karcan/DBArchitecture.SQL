CREATE PROCEDURE [dbo].[SP_UserInsert]		@pUserID		INT,
											@pUsername		[dbo].[DT_Username],
											@pPassword		NVARCHAR(500),
											@pFirstName		NVARCHAR(50),
											@pLastName		NVARCHAR(50),
											@Email			[dbo].[DT_Email],
											@PhoneNumber	NVARCHAR(15)			= NULL,
											@pLanguageID	TINYINT					= NULL
AS
BEGIN
	PRINT 'USER HAS INSERTED TEST.'
END
