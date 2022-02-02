CREATE TABLE [dbo].[SystemConstant]
(
	[ID]					SMALLINT		IDENTITY(1000, 1),
	[Code]					NVARCHAR(50)	NOT NULL,
	[Value]					NVARCHAR(100)	NOT NULL,
	[Type]					NVARCHAR(50)	NOT NULL,
	[Description]			NVARCHAR(250)	NOT NULL,
	[IsActive]				BIT				NULL				CONSTRAINT [DF_SystemConstant_IsActive] DEFAULT (1), CONSTRAINT [CHK_SystemConstant_IsActive] CHECK (IsActive IS NOT NULL),
	[IsDeleted]				BIT				NULL				CONSTRAINT [DF_SystemConstant_IsDeleted] DEFAULT (0), CONSTRAINT [CHK_SystemConstant_IsDeleted] CHECK (IsDeleted IS NOT NULL),
	[CreatedUserID]			INT				NOT NULL,
	[CreatedDate]			DATETIME2(7)	NULL				CONSTRAINT [DF_SystemConstant_CreateDate] DEFAULT(GETDATE()), CONSTRAINT [CHK_SystemConstant_CreateDate] CHECK (CreatedDate IS NOT NULL),
	[ModifiedUserID]		INT				NULL,
	[ModifiedDate]			DATETIME2(7)	NULL

	CONSTRAINT [PK_SystemConstant]
		PRIMARY KEY ([ID] ASC)
)
