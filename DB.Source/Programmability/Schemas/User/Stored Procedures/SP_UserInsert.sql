CREATE PROCEDURE [dbo].[SP_UserInsert]		@pUserID		INT						NOT NULL,
											@pUsername		[User].[DT_Username]	NOT NULL,
											@pPassword		NVARCHAR(500)			NOT NULL,
											@pFirstName		NVARCHAR(50)			NOT NULL,
											@pLastName		NVARCHAR(50)			NOT NULL,
											@Email			[User].[DT_Email]		NOT NULL,
											@PhoneNumber	NVARCHAR(15)			NULL,
											@pLanguageID	TINYINT					NULL
AS
BEGIN
	PRINT 'USER HAS INSERTED TEST.'
END
