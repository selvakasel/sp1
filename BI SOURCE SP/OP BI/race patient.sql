alter PROCEDURE sp_count_race (
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
				SELECT count(patientid)
				FROM patient
				WHERE Race = 1
				AND (CreatedDate = getdate())
				)
			,'Malay'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(patientid)
				FROM patient
				WHERE Race = 2
				AND (CreatedDate = getdate())
				)
			,'Chinese '
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(patientid)
				FROM patient
				WHERE Race = 3
				AND (CreatedDate = getdate())
				)
			,'Indian'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(patientid)
				FROM patient
				WHERE Race = 4
				AND (CreatedDate = getdate())
				)
			,'Others'
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
				SELECT count(patientid)
				FROM patient
				WHERE Race = 1
					AND (CreatedDate = @Fromdate)
				)
			,'MALAY'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(patientid)
				FROM patient
				WHERE Race = 2
					AND (CreatedDate = @Fromdate)
				)
			,'CHINESE'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(patientid)
				FROM patient
				WHERE Race = 3
					AND (CreatedDate = @Fromdate)
				)
			,'INDIAN'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(patientid)
				FROM patient
				WHERE Race = 4
					AND (CreatedDate = @Fromdate)
				)
			,'OTHERS'
			)

		

		SELECT *
		FROM @listOfIDs
	END
END
