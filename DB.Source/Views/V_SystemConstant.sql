CREATE VIEW [dbo].[V_SystemConstant]
	AS 
	SELECT 
		 [ID]
		,[Code]
		,[Value]
		,[Type]
		,[Description]
		,[IsActive]
		,[IsDeleted]
		,[CreatedUserID]
		,[CreatedDate]
		,[ModifiedUserID]
		,[ModifiedDate]
	FROM 
		[dbo].[SystemConstant] WITH (NOLOCK);