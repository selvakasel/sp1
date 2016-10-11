CREATE PROCEDURE sp_location_day (
	@Fromdate VARCHAR(max) = ''
	
	)
AS
BEGIN
	DECLARE @listOfIDs TABLE (
		CountVal BIGINT
		,NAME VARCHAR(20)
		)

	IF (
			@Fromdate = ''
			
			)
	BEGIN
		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(STATE)
				FROM Patient
				WHERE STATE = 'Sabah'
				AND (CreatedDate = getdate())
				)
			,'Sabah'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(STATE)
				FROM Patient
				WHERE STATE = 'Perak'
				AND (CreatedDate = getdate())
				)
			,'Perak'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(STATE)
				FROM Patient
				WHERE STATE = 'Kelantan'
				AND (CreatedDate = getdate())
				)
			,'Kelantan'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(STATE)
				FROM Patient
				WHERE STATE = 'Selangor'
				AND (CreatedDate = getdate())
				)
			,'Selangor'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(STATE)
				FROM Patient
				WHERE STATE = 'Sarawak'
				AND (CreatedDate = getdate())
				)
			,'Sarawak'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(STATE)
				FROM Patient
				WHERE STATE = 'Kedah'
				AND (CreatedDate = getdate())
				)
			,'Kedah'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(STATE)
				FROM Patient
				WHERE STATE = 'Melaka'
				AND (CreatedDate = getdate())
				)
			,'Melaka'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(STATE)
				FROM Patient
				WHERE STATE = 'Pahang'
				AND (CreatedDate = getdate())
				)
			,'Pahang'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(STATE)
				FROM Patient
				WHERE STATE = 'Wilayah Persekutuan'
				AND (CreatedDate = getdate())
				)
			,'WilayahPersekutuan'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(STATE)
				FROM Patient
				WHERE STATE = 'Terengganu'
				AND (CreatedDate = getdate())
				)
			,'Terengganu'
			)

		SELECT *
		FROM @listOfIDs
	END
	ELSE
	BEGIN
		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(STATE)
				FROM Patient
				WHERE STATE = 'Sabah'
				AND (CreatedDate = @Fromdate)
				)
			,'Sabah'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(STATE)
				FROM Patient
				WHERE STATE = 'Perak'
					AND (CreatedDate = @Fromdate)
				)
			,'Perak '
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(STATE)
				FROM Patient
				WHERE STATE = 'Kelantan'
					AND (CreatedDate = @Fromdate)
				)
			,'Kelantan'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(STATE)
				FROM Patient
				WHERE STATE = 'Selangor'
				AND (CreatedDate = @Fromdate)
				)
			,'Selangor'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(STATE)
				FROM Patient
				WHERE STATE = 'Sarawak'
					AND (CreatedDate = @Fromdate)
				)
			,'Sarawak'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(STATE)
				FROM Patient
				WHERE STATE = 'Kedah'
				AND (CreatedDate = @Fromdate)
				)
			,'Kedah'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(STATE)
				FROM Patient
				WHERE STATE = 'Melaka'
				AND (CreatedDate = @Fromdate)
				)
			,'Melaka'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(STATE)
				FROM Patient
				WHERE STATE = 'Pahang'
				AND (CreatedDate = @Fromdate)
				)
			,'Pahang'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(STATE)
				FROM Patient
				WHERE STATE = 'Wilayah Persekutuan'
				AND (CreatedDate = @Fromdate)
				)
			,'WilayahPersekutuan'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(STATE)
				FROM Patient
				WHERE STATE = 'Terengganu'
				AND (CreatedDate = @Fromdate)
				)
			,'Terengganu'
			)

		SELECT *
		FROM @listOfIDs
	END
END
