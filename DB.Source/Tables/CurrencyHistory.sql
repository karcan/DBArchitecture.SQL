CREATE TABLE [dbo].[CurrencyHistory]
(
	[Date]					DATE			NOT NULL,
	[SourceCurrencyCodeID]	SMALLINT		NOT NULL,
	[TargetCurrencyCodeID]	SMALLINT		NOT NULL,
	[SourceQuantity]		TINYINT			NOT NULL,
	[TargetQuantity]		TINYINT			NOT NULL,
	[BanknoteSelling]		DECIMAL(11,5)	NOT NULL,
	[BanknoteBuying]		DECIMAL(11,5)	NOT NULL,
	[ForexSelling]			DECIMAL(11,5)	NOT NULL,
	[ForexBuying]			DECIMAL(11,5)	NOT NULL,
	[CreatedDate]			DATETIME2(7)	NOT NULL,
	[ModifiedDate]			DATETIME2(7)	NOT NULL
)