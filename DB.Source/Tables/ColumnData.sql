CREATE TABLE [dbo].[ColumnData]
(
	[TableName]				NVARCHAR(128)	NOT NULL,
	[ColumnName]			NVARCHAR(128)	NOT NULL,
	[Code]					NVARCHAR(25)	NOT NULL,
	[Value]					SMALLINT		NOT NULL,
	[LanguageSourceDataID]	INT				NOT NULL,
)
