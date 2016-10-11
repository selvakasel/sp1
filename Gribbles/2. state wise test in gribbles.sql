CREATE PROCEDURE sp_gribbles_state -- sp_gribbles_state '2015-07-28 ' , '2016-07-28 '
	(
	@Fromdate VARCHAR(max) = ''
	,@Todate VARCHAR(max) = ''
	)
AS
BEGIN
	DECLARE @listOfIDs TABLE (
		CountVal BIGINT
		,NAME VARCHAR(20)
		)

	IF (
			@Fromdate = ''
			AND @Todate = ''
			)
	BEGIN
		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(a.STATE)
				FROM Patient a
				INNER JOIN Invoice b ON a.PatientID = b.PatientID
				WHERE STATE = 'Johor'
					AND b.Activeflag = 1
				)
			,'Johor'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(a.STATE)
				FROM Patient a
				INNER JOIN Invoice b ON a.PatientID = b.PatientID
				WHERE STATE = 'Perak'
					AND b.Activeflag = 1
				)
			,'Perak'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(a.STATE)
				FROM Patient a
				INNER JOIN Invoice b ON a.PatientID = b.PatientID
				WHERE STATE = 'Kelantan'
					AND b.Activeflag = 1
				)
			,'Kelantan'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(a.STATE)
				FROM Patient a
				INNER JOIN Invoice b ON a.PatientID = b.PatientID
				WHERE STATE = 'Selangor'
					AND b.Activeflag = 1
				)
			,'Selangor'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(a.STATE)
				FROM Patient a
				INNER JOIN Invoice b ON a.PatientID = b.PatientID
				WHERE STATE = 'Sarawak'
					AND b.Activeflag = 1
				)
			,'Sarawak'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(a.STATE)
				FROM Patient a
				INNER JOIN Invoice b ON a.PatientID = b.PatientID
				WHERE STATE = 'Kedah'
					AND b.Activeflag = 1
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
				SELECT count(a.STATE)
				FROM Patient a
				INNER JOIN Invoice b ON a.PatientID = b.PatientID
				WHERE STATE = 'Johor'
					AND b.Activeflag = 1
					AND (
						a.CreatedDate BETWEEN @Fromdate
							AND @Todate
						)
				)
			,'Johor'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(a.STATE)
				FROM Patient a
				INNER JOIN Invoice b ON a.PatientID = b.PatientID
				WHERE STATE = 'Perak'
					AND b.Activeflag = 1
					AND (
						b.CreatedDate BETWEEN @Fromdate
							AND @Todate
						)
				)
			,'Perak '
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(a.STATE)
				FROM Patient a
				INNER JOIN Invoice b ON a.PatientID = b.PatientID
				WHERE STATE = 'Kelantan'
					AND b.Activeflag = 1
					AND (
						a.CreatedDate BETWEEN @Fromdate
							AND @Todate
						)
				)
			,'Kelantan'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(a.STATE)
				FROM Patient a
				INNER JOIN Invoice b ON a.PatientID = b.PatientID
				WHERE STATE = 'Selangor'
					AND b.Activeflag = 1
					AND (
						b.CreatedDate BETWEEN @Fromdate
							AND @Todate
						)
				)
			,'Selangor'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(a.STATE)
				FROM Patient a
				INNER JOIN Invoice b ON a.PatientID = b.PatientID
				WHERE STATE = 'Sarawak'
					AND b.Activeflag = 1
					AND (
						b.CreatedDate BETWEEN @Fromdate
							AND @Todate
						)
				)
			,'Sarawak'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(a.STATE)
				FROM Patient a
				INNER JOIN Invoice b ON a.PatientID = b.PatientID
				WHERE STATE = 'Kedah'
					AND b.Activeflag = 1
					AND (
						b.CreatedDate BETWEEN @Fromdate
							AND @Todate
						)
				)
			,'Kedah'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(a.STATE)
				FROM Patient a
				INNER JOIN Invoice b ON a.PatientID = b.PatientID
				WHERE STATE = 'Melaka'
					AND b.Activeflag = 1
					AND (
						b.CreatedDate BETWEEN @Fromdate
							AND @Todate
						)
				)
			,'Melaka'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(a.STATE)
				FROM Patient a
				INNER JOIN Invoice b ON a.PatientID = b.PatientID
				WHERE STATE = 'Pahang'
					AND b.Activeflag = 1
					AND (
						b.CreatedDate BETWEEN @Fromdate
							AND @Todate
						)
				)
			,'Pahang'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(a.STATE)
				FROM Patient a
				INNER JOIN Invoice b ON a.PatientID = b.PatientID
				WHERE STATE = 'WilayahPersekutuan'
					AND b.Activeflag = 1
					AND (
						b.CreatedDate BETWEEN @Fromdate
							AND @Todate
						)
				)
			,'WilayahPersekutuan'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(a.STATE)
				FROM Patient a
				INNER JOIN Invoice b ON a.PatientID = b.PatientID
				WHERE STATE = 'Terengganu'
					AND b.Activeflag = 1
					AND (
						b.CreatedDate BETWEEN @Fromdate
							AND @Todate
						)
				)
			,'Terengganu'
			)

		SELECT *
		FROM @listOfIDs
	END
END
