CREATE VIEW [dbo].[V_User]
	AS 
	SELECT 
		 [ID]
		,[Username]
		,[Password]
		,[FirstName]
		,[LastName]
		,[Email]
		,[PasswordUpdateDate]
		,[PhoneNumber]
		,[LanguageID]
		,[IsActive]
		,[CreatedUserID]
		,[CreatedDate]
		,[ModifiedUserID]
		,[ModifiedDate]
	FROM 
		[dbo].[User] WITH (NOLOCK)
