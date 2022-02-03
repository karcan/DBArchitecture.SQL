CREATE TABLE [dbo].[User]
(
	[ID]					INT						IDENTITY(1000,1),
	[Username]				[dbo].[DT_Username]		NOT NULL,
	[Password]				NVARCHAR(500)			NOT NULL,
	[FirstName]				[dbo].[DT_FirstName]	NOT NULL,
	[LastName]				[dbo].[DT_LastName]		NOT NULL,
	[Email]					[dbo].[DT_Email]		NOT NULL,
	[PasswordUpdateDate]	DATETIME2(7)			NULL,
	[PhoneNumber]			NVARCHAR(15)			NULL,
	[LanguageID]			TINYINT					NULL				CONSTRAINT [DF_User_LanguageID] DEFAULT([SystemConstant].[FN_GetDefaultLanguageID]()), CONSTRAINT [CHK_User_LanguageID] CHECK ([LanguageID] IS NOT NULL),
	[IsActive]				BIT						NULL				CONSTRAINT [DF_User_IsActive] DEFAULT (1), CONSTRAINT [CHK_User_IsActive] CHECK ([IsActive] IS NOT NULL),
	[CreatedUserID]			INT						NOT NULL,
	[CreatedDate]			DATETIME2(7)			NULL				CONSTRAINT [DF_User_CreateDate] DEFAULT(GETDATE()), CONSTRAINT [CHK_User_CreateDate] CHECK ([CreatedDate] IS NOT NULL),
	[ModifiedUserID]		INT						NULL,
	[ModifiedDate]			DATETIME2(7)			NULL

	CONSTRAINT [PK_User]
		PRIMARY KEY ([ID] ASC),

	CONSTRAINT [FK_User_User_ID]
		FOREIGN KEY ([ID]) 
			REFERENCES [dbo].[User]([ID])
)
