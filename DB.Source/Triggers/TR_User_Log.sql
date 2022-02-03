CREATE TRIGGER [TR_User_Log]
	ON [dbo].[User]
	FOR DELETE, INSERT, UPDATE
	AS
	BEGIN
		SET NOCOUNT ON;
		SET DATEFORMAT YMD;

		-- if there is no affected rows, break trigger.
		IF @@ROWCOUNT = 0 
			RETURN;

		DECLARE @vChangeKind	NVARCHAR(2)

		-- Get action type ex: 
		BEGIN
			SET @vChangeKind =	CASE
									-- UPDATE ROLLBACK
									WHEN
										EXISTS (SELECT TOP(1) 1 FROM INSERTED)
										AND EXISTS (SELECT TOP(1) 1 FROM DELETED)
										AND (SESSION_CONTEXT(N'ChangeKind') = 'RU')
									THEN 1
									-- UPDATE
									WHEN
										EXISTS(SELECT TOP(1) 1 FROM INSERTED)
										AND EXISTS(SELECT TOP(1) 1 FROM DELETED)
									THEN 2
									-- INSERT ROLLBACK
									WHEN
										EXISTS (SELECT TOP(1) 1 FROM INSERTED)
										AND (SESSION_CONTEXT(N'ChangeKind') = 'RI')
									THEN 3
									-- INSERT
									WHEN
										EXISTS(SELECT TOP(1) 1 FROM INSERTED)
									THEN 4
									-- DELETE ROLLBACK
									WHEN
										EXISTS (SELECT TOP(1) 1 FROM DELETED)
										AND (SESSION_CONTEXT(N'ChangeKind') = 'RD')
									THEN 5
									-- DELETE
									WHEN
										EXISTS(SELECT TOP(1) 1 FROM DELETED)
									THEN 6
								END
		END

		-- Unknown ChangeKind
		IF @vChangeKind IS NULL
			RETURN;


		-- Get Detail
		BEGIN
			SELECT
				stbl.name,
				ssch.name
			FROM
				sys.triggers AS strg
				INNER JOIN sys.tables stbl ON stbl.object_id = strg.parent_id
				INNER JOIN sys.schemas AS ssch ON ssch.schema_id = stbl.schema_id
			WHERE
				strg.object_id = @@PROCID
		END
	END
