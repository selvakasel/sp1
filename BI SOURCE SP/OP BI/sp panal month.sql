CREATE PROCEDURE sp_op_panal_month --   sp_op_panal_month '2016'
	(
	@Fromdate VARCHAR(max) = ''
	--	,@Todate VARCHAR(max)
	--	,@year varchar(max)
	)
AS
BEGIN
	DECLARE @listOfIDs TABLE (
		CountVal BIGINT
		,countval1 bigint
		,NAME VARCHAR(20)
		)

	IF (@Fromdate = '')
	BEGIN
		INSERT INTO @listOfIDs (
			CountVal
			,countval1
			,NAME
			)
		VALUES (
			(
				SELECT count(ispanel)
				FROM registration
				WHERE IsPanel = 0
					AND (MONTH(CreatedDate) = 1)
					AND (YEAR(CreatedDate) = YEAR(GETDATE()))
				)
				,(
				SELECT count(ispanel)
				FROM registration
				WHERE IsPanel != 0
				AND (MONTH(CreatedDate) = 1)
					AND (YEAR(CreatedDate) = YEAR(GETDATE()))
				)
			,'Jan'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,countval1
			,NAME
			)
		VALUES (
			(
				SELECT count(ispanel)
				FROM registration
				WHERE IsPanel = 0
					AND (MONTH(CreatedDate) = 2)
					AND (YEAR(CreatedDate) = YEAR(GETDATE()))
				)
				,(
				SELECT count(ispanel)
				FROM registration
				WHERE IsPanel != 0
				AND (MONTH(CreatedDate) = 2)
					AND (YEAR(CreatedDate) = YEAR(GETDATE()))
				)
			,'Feb'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,countval1
			,NAME
			)
		VALUES (
			(
				SELECT count(ispanel)
				FROM registration
				WHERE IsPanel = 0
					AND (MONTH(CreatedDate) = 3)
					AND (YEAR(CreatedDate) = YEAR(GETDATE()))
				)
				,(
				SELECT count(ispanel)
				FROM registration
				WHERE IsPanel != 0
				AND (MONTH(CreatedDate) = 3)
					AND (YEAR(CreatedDate) = YEAR(GETDATE()))
				)
			,'Mar'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,countval1
			,NAME
			)
		VALUES (
			(
				SELECT count(ispanel)
				FROM registration
				WHERE IsPanel = 0
					AND (MONTH(CreatedDate) = 4)
					AND (YEAR(CreatedDate) = YEAR(GETDATE()))
				)
				,(
				SELECT count(ispanel)
				FROM registration
				WHERE IsPanel != 0
				AND (MONTH(CreatedDate) = 4)
					AND (YEAR(CreatedDate) = YEAR(GETDATE()))
				)
			,'Apl'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,countval1
			,NAME
			)
		VALUES (
			(
				SELECT count(ispanel)
				FROM registration
				WHERE IsPanel = 0
					AND (MONTH(CreatedDate) = 5)
					AND (YEAR(CreatedDate) = YEAR(GETDATE()))
				)
				,(
				SELECT count(ispanel)
				FROM registration
				WHERE IsPanel != 0
				AND (MONTH(CreatedDate) = 5)
					AND (YEAR(CreatedDate) = YEAR(GETDATE()))
				)
			,'May'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,countval1
			,NAME
			)
		VALUES (
			(
				SELECT count(ispanel)
				FROM registration
				WHERE IsPanel = 0
					AND (MONTH(CreatedDate) = 6)
					AND (YEAR(CreatedDate) = YEAR(GETDATE()))
				)
				,(
				SELECT count(ispanel)
				FROM registration
				WHERE IsPanel != 0
				AND (MONTH(CreatedDate) = 6)
					AND (YEAR(CreatedDate) = YEAR(GETDATE()))
				)
			,'Jun'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,countval1
			,NAME
			)
		VALUES (
			(
				SELECT count(ispanel)
				FROM registration
				WHERE IsPanel = 0
					AND (MONTH(CreatedDate) = 7)
					AND (YEAR(CreatedDate) = YEAR(GETDATE()))
				)
				,(
				SELECT count(ispanel)
				FROM registration
				WHERE IsPanel != 0
				AND (MONTH(CreatedDate) = 7)
					AND (YEAR(CreatedDate) = YEAR(GETDATE()))
				)
			,'July'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,countval1
			,NAME
			)
		VALUES (
			(
				SELECT count(ispanel)
				FROM registration
				WHERE IsPanel = 0
					AND (MONTH(CreatedDate) = 8)
					AND (YEAR(CreatedDate) = YEAR(GETDATE()))
				)
				,(
				SELECT count(ispanel)
				FROM registration
				WHERE IsPanel != 0
				AND (MONTH(CreatedDate) = 8)
					AND (YEAR(CreatedDate) = YEAR(GETDATE()))
				)
			,'Aug'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,countval1
			,NAME
			)
		VALUES (
			(
				SELECT count(ispanel)
				FROM registration
				WHERE IsPanel = 0
					AND (MONTH(CreatedDate) = 9)
					AND (YEAR(CreatedDate) = YEAR(GETDATE()))
				)
				,(
				SELECT count(ispanel)
				FROM registration
				WHERE IsPanel != 0
				AND (MONTH(CreatedDate) = 9)
					AND (YEAR(CreatedDate) = YEAR(GETDATE()))
				)
			,'Sep'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,countval1
			,NAME
			)
		VALUES (
			(
				SELECT count(ispanel)
				FROM registration
				WHERE IsPanel = 0
					AND (MONTH(CreatedDate) = 10)
					AND (YEAR(CreatedDate) = YEAR(GETDATE()))
				)
				,(
				SELECT count(ispanel)
				FROM registration
				WHERE IsPanel != 0
				AND (MONTH(CreatedDate) = 10)
					AND (YEAR(CreatedDate) = YEAR(GETDATE()))
				)
			,'Oct'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,countval1
			,NAME
			)
		VALUES (
			(
				SELECT count(ispanel)
				FROM registration
				WHERE IsPanel = 0
					AND (MONTH(CreatedDate) = 11)
					AND (YEAR(CreatedDate) = YEAR(GETDATE()))
				)
				,(
				SELECT count(ispanel)
				FROM registration
				WHERE IsPanel != 0
				AND (MONTH(CreatedDate) = 11)
					AND (YEAR(CreatedDate) = YEAR(GETDATE()))
				)
			,'Nov'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,countval1
			,NAME
			)
		VALUES (
			(
				SELECT count(ispanel)
				FROM registration
				WHERE IsPanel = 0
					AND (MONTH(CreatedDate) = 12)
					AND (YEAR(CreatedDate) = YEAR(GETDATE()))
				)
				,(
				SELECT count(ispanel)
				FROM registration
				WHERE IsPanel != 0
				AND (MONTH(CreatedDate) = 12)
					AND (YEAR(CreatedDate) = YEAR(GETDATE()))
				)
			,'Dec'
			)

		SELECT *
		FROM @listOfIDs
	END
	ELSE
	BEGIN

	INSERT INTO @listOfIDs (
			CountVal
			,countval1
			,NAME
			)
		VALUES (
			(
				SELECT count(ispanel)
				FROM registration
				WHERE IsPanel = 0
					AND (MONTH(CreatedDate) = 1)
					AND (YEAR(CreatedDate) = YEAR(@Fromdate))
				)
				,(
				SELECT count(ispanel)
				FROM registration
				WHERE IsPanel != 0
				AND (MONTH(CreatedDate) = 1)
					AND (YEAR(CreatedDate) = YEAR(@Fromdate))
				)
			,'Jan'
			)
		

		INSERT INTO @listOfIDs (
			CountVal
			,countval1
			,NAME
			)
		VALUES (
			(
				SELECT count(ispanel)
				FROM registration
				WHERE IsPanel = 0
					AND (MONTH(CreatedDate) = 2)
					AND (YEAR(CreatedDate) = YEAR(@Fromdate))
				)
				,(
				SELECT count(ispanel)
				FROM registration
				WHERE IsPanel != 0
				AND (MONTH(CreatedDate) = 2)
					AND (YEAR(CreatedDate) = YEAR(@Fromdate))
				)
			,'Feb'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,countval1
			,NAME
			)
		VALUES (
			(
				SELECT count(ispanel)
				FROM registration
				WHERE IsPanel = 0
					AND (MONTH(CreatedDate) = 3)
					AND (YEAR(CreatedDate) = YEAR(@Fromdate))
				)
				,(
				SELECT count(ispanel)
				FROM registration
				WHERE IsPanel != 0
				AND (MONTH(CreatedDate) = 3)
					AND (YEAR(CreatedDate) = YEAR(@Fromdate))
				)
			,'Mar'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,countval1
			,NAME
			)
		VALUES (
			(
				SELECT count(ispanel)
				FROM registration
				WHERE IsPanel = 0
					AND (MONTH(CreatedDate) = 4)
					AND (YEAR(CreatedDate) = YEAR(@Fromdate))
				)
				,(
				SELECT count(ispanel)
				FROM registration
				WHERE IsPanel != 0
				AND (MONTH(CreatedDate) = 4)
					AND (YEAR(CreatedDate) = YEAR(@Fromdate))
				)
			,'Apl'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,countval1
			,NAME
			)
		VALUES (
			(
				SELECT count(ispanel)
				FROM registration
				WHERE IsPanel = 0
					AND (MONTH(CreatedDate) = 5)
					AND (YEAR(CreatedDate) = YEAR(@Fromdate))
				)
				,(
				SELECT count(ispanel)
				FROM registration
				WHERE IsPanel != 0
				AND (MONTH(CreatedDate) = 5)
					AND (YEAR(CreatedDate) = YEAR(@Fromdate))
				)
			,'May'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,countval1
			,NAME
			)
		VALUES (
			(
				SELECT count(ispanel)
				FROM registration
				WHERE IsPanel = 0
					AND (MONTH(CreatedDate) = 6)
					AND (YEAR(CreatedDate) = YEAR(@Fromdate))
				)
				,(
				SELECT count(ispanel)
				FROM registration
				WHERE IsPanel != 0
				AND (MONTH(CreatedDate) = 6)
					AND (YEAR(CreatedDate) = YEAR(@Fromdate))
				)
			,'Jun'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,countval1
			,NAME
			)
		VALUES (
			(
				SELECT count(ispanel)
				FROM registration
				WHERE IsPanel = 0
					AND (MONTH(CreatedDate) = 7)
					AND (YEAR(CreatedDate) = YEAR(@Fromdate))
				)
				,(
				SELECT count(ispanel)
				FROM registration
				WHERE IsPanel != 0
				AND (MONTH(CreatedDate) = 7)
					AND (YEAR(CreatedDate) = YEAR(@Fromdate))
				)
			,'Jul'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,countval1
			,NAME
			)
		VALUES (
			(
				SELECT count(ispanel)
				FROM registration
				WHERE IsPanel = 0
					AND (MONTH(CreatedDate) = 8)
					AND (YEAR(CreatedDate) = YEAR(@Fromdate))
				)
				,(
				SELECT count(ispanel)
				FROM registration
				WHERE IsPanel != 0
				AND (MONTH(CreatedDate) = 8)
					AND (YEAR(CreatedDate) = YEAR(@Fromdate))
				)
			,'Aug'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,countval1
			,NAME
			)
		VALUES (
			(
				SELECT count(ispanel)
				FROM registration
				WHERE IsPanel = 0
					AND (MONTH(CreatedDate) = 9)
					AND (YEAR(CreatedDate) = YEAR(@Fromdate))
				)
				,(
				SELECT count(ispanel)
				FROM registration
				WHERE IsPanel != 0
				AND (MONTH(CreatedDate) = 9)
					AND (YEAR(CreatedDate) = YEAR(@Fromdate))
				)
			,'Sep'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,countval1
			,NAME
			)
		VALUES (
			(
				SELECT count(ispanel)
				FROM registration
				WHERE IsPanel = 0
					AND (MONTH(CreatedDate) = 10)
					AND (YEAR(CreatedDate) = YEAR(@Fromdate))
				)
				,(
				SELECT count(ispanel)
				FROM registration
				WHERE IsPanel != 0
				AND (MONTH(CreatedDate) = 10)
					AND (YEAR(CreatedDate) = YEAR(@Fromdate))
				)
			,'Oct'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,countval1
			,NAME
			)
		VALUES (
			(
				SELECT count(ispanel)
				FROM registration
				WHERE IsPanel = 0
					AND (MONTH(CreatedDate) = 11)
					AND (YEAR(CreatedDate) = YEAR(@Fromdate))
				)
				,(
				SELECT count(ispanel)
				FROM registration
				WHERE IsPanel != 0
				AND (MONTH(CreatedDate) = 11)
					AND (YEAR(CreatedDate) = YEAR(@Fromdate))
				)
			,'Nov'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,countval1
			,NAME
			)
		VALUES (
			(
				SELECT count(ispanel)
				FROM registration
				WHERE IsPanel = 0
					AND (MONTH(CreatedDate) = 12
					AND (YEAR(CreatedDate) = YEAR(@Fromdate)))
				)
				,(
				SELECT count(ispanel)
				FROM registration
				WHERE IsPanel != 0
				AND (MONTH(CreatedDate) = 12)
					AND (YEAR(CreatedDate) = YEAR(@Fromdate))
				)
			,'Dec'
			)

		SELECT *
		FROM @listOfIDs
	END
END
