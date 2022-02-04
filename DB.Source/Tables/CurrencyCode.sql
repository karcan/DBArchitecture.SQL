CREATE TABLE [dbo].[CurrencyCode]
(
	[ID]					SMALLINT		IDENTITY(1000, 1),
	[Code]					NVARCHAR(3)		NOT NULL,
	[LanguageSourceDataID]	SMALLINT		NOT NULL
)
