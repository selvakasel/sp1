CREATE PROCEDURE sp_Salutation_gribble --  sp_Salutation_gribble '2015'
	(@Fromdate VARCHAR(max) = '')
AS
BEGIN
	DECLARE @listOfIDs TABLE (
		Male BIGINT
		,Female BIGINT
		,NAME VARCHAR(20)
		)

	IF (@Fromdate = '')
	BEGIN
		INSERT INTO @listOfIDs (
			Male
			,Female
			,NAME
			)
		VALUES (
			(
				SELECT count(a.sex)
				FROM patient a
				INNER JOIN Invoice b ON a.PatientID = b.PatientID
				WHERE a.Sex = 'male'
					AND (
						MONTH(a.CreatedDate) = 1
						AND YEAR(a.CreatedDate) = YEAR(GETDATE())
						)
				)
			,(
				SELECT count(a.sex)
				FROM patient a
				INNER JOIN Invoice b ON a.PatientID = b.PatientID
				WHERE a.Sex = 'Female'
					AND (
						MONTH(a.CreatedDate) = 1
						AND YEAR(a.CreatedDate) = YEAR(GETDATE())
						)
				)
			,'Jan'
			)

		INSERT INTO @listOfIDs (
			Male
			,Female
			,NAME
			)
		VALUES (
			(
				SELECT count(a.sex)
				FROM patient a
				INNER JOIN Invoice b ON a.PatientID = b.PatientID
				WHERE a.Sex = 'male'
					AND (
						MONTH(a.CreatedDate) = 2
						AND YEAR(a.CreatedDate) = YEAR(GETDATE())
						)
				)
			,(
				SELECT count(a.sex)
				FROM patient a
				INNER JOIN Invoice b ON a.PatientID = b.PatientID
				WHERE a.Sex = 'Female'
					AND (
						MONTH(a.CreatedDate) = 2
						AND YEAR(a.CreatedDate) = YEAR(GETDATE())
						)
				)
			,'Feb'
			)

		INSERT INTO @listOfIDs (
			Male
			,Female
			,NAME
			)
		VALUES (
			(
				SELECT count(a.sex)
				FROM patient a
				INNER JOIN Invoice b ON a.PatientID = b.PatientID
				WHERE a.Sex = 'male'
					AND (
						MONTH(a.CreatedDate) = 3
						AND YEAR(a.CreatedDate) = YEAR(GETDATE())
						)
				)
			,(
				SELECT count(a.sex)
				FROM patient a
				INNER JOIN Invoice b ON a.PatientID = b.PatientID
				WHERE a.Sex = 'Female'
					AND (
						MONTH(a.CreatedDate) = 3
						AND YEAR(a.CreatedDate) = YEAR(GETDATE())
						)
				)
			,'Mar'
			)

		INSERT INTO @listOfIDs (
			Male
			,Female
			,NAME
			)
		VALUES (
			(
				SELECT count(a.sex)
				FROM patient a
				INNER JOIN Invoice b ON a.PatientID = b.PatientID
				WHERE a.Sex = 'male'
					AND (
						MONTH(a.CreatedDate) = 4
						AND YEAR(a.CreatedDate) = YEAR(GETDATE())
						)
				)
			,(
				SELECT count(a.sex)
				FROM patient a
				INNER JOIN Invoice b ON a.PatientID = b.PatientID
				WHERE a.Sex = 'Female'
					AND (
						MONTH(a.CreatedDate) = 4
						AND YEAR(a.CreatedDate) = YEAR(GETDATE())
						)
				)
			,'Apr'
			)

		INSERT INTO @listOfIDs (
			Male
			,Female
			,NAME
			)
		VALUES (
			(
				SELECT count(a.sex)
				FROM patient a
				INNER JOIN Invoice b ON a.PatientID = b.PatientID
				WHERE a.Sex = 'male'
					AND (
						MONTH(a.CreatedDate) = 5
						AND YEAR(a.CreatedDate) = YEAR(GETDATE())
						)
				)
			,(
				SELECT count(a.sex)
				FROM patient a
				INNER JOIN Invoice b ON a.PatientID = b.PatientID
				WHERE a.Sex = 'Female'
					AND (
						MONTH(a.CreatedDate) = 5
						AND YEAR(a.CreatedDate) = YEAR(GETDATE())
						)
				)
			,'May'
			)

		INSERT INTO @listOfIDs (
			Male
			,Female
			,NAME
			)
		VALUES (
			(
				SELECT count(a.sex)
				FROM patient a
				INNER JOIN Invoice b ON a.PatientID = b.PatientID
				WHERE a.Sex = 'male'
					AND (
						MONTH(a.CreatedDate) = 6
						AND YEAR(a.CreatedDate) = YEAR(GETDATE())
						)
				)
			,(
				SELECT count(a.sex)
				FROM patient a
				INNER JOIN Invoice b ON a.PatientID = b.PatientID
				WHERE a.Sex = 'Female'
					AND (
						MONTH(a.CreatedDate) = 6
						AND YEAR(a.CreatedDate) = YEAR(GETDATE())
						)
				)
			,'Jun'
			)

		INSERT INTO @listOfIDs (
			Male
			,Female
			,NAME
			)
		VALUES (
			(
				SELECT count(a.sex)
				FROM patient a
				INNER JOIN Invoice b ON a.PatientID = b.PatientID
				WHERE a.Sex = 'male'
					AND (
						MONTH(a.CreatedDate) = 7
						AND YEAR(a.CreatedDate) = YEAR(GETDATE())
						)
				)
			,(
				SELECT count(a.sex)
				FROM patient a
				INNER JOIN Invoice b ON a.PatientID = b.PatientID
				WHERE a.Sex = 'Female'
					AND (
						MONTH(a.CreatedDate) = 7
						AND YEAR(a.CreatedDate) = YEAR(GETDATE())
						)
				)
			,'Jul'
			)

		INSERT INTO @listOfIDs (
			Male
			,Female
			,NAME
			)
		VALUES (
			(
				SELECT count(a.sex)
				FROM patient a
				INNER JOIN Invoice b ON a.PatientID = b.PatientID
				WHERE a.Sex = 'male'
					AND (
						MONTH(a.CreatedDate) = 8
						AND YEAR(a.CreatedDate) = YEAR(GETDATE())
						)
				)
			,(
				SELECT count(a.sex)
				FROM patient a
				INNER JOIN Invoice b ON a.PatientID = b.PatientID
				WHERE a.Sex = 'female'
					AND (
						MONTH(a.CreatedDate) = 8
						AND YEAR(a.CreatedDate) = YEAR(GETDATE())
						)
				)
			,'Aug'
			)

		INSERT INTO @listOfIDs (
			Male
			,Female
			,NAME
			)
		VALUES (
			(
				SELECT count(a.sex)
				FROM patient a
				INNER JOIN Invoice b ON a.PatientID = b.PatientID
				WHERE a.Sex = 'male'
					AND (
						MONTH(a.CreatedDate) = 9
						AND YEAR(a.CreatedDate) = YEAR(GETDATE())
						)
				)
			,(
				SELECT count(a.sex)
				FROM patient a
				INNER JOIN Invoice b ON a.PatientID = b.PatientID
				WHERE a.Sex = 'Female'
					AND (
						MONTH(a.CreatedDate) = 9
						AND YEAR(a.CreatedDate) = YEAR(GETDATE())
						)
				)
			,'Sep'
			)

		INSERT INTO @listOfIDs (
			Male
			,Female
			,NAME
			)
		VALUES (
			(
				SELECT count(a.sex)
				FROM patient a
				INNER JOIN Invoice b ON a.PatientID = b.PatientID
				WHERE a.Sex = 'male'
					AND (
						MONTH(a.CreatedDate) = 10
						AND YEAR(a.CreatedDate) = YEAR(GETDATE())
						)
				)
			,(
				SELECT count(a.sex)
				FROM patient a
				INNER JOIN Invoice b ON a.PatientID = b.PatientID
				WHERE a.Sex = 'Female'
					AND (
						MONTH(a.CreatedDate) = 10
						AND YEAR(a.CreatedDate) = YEAR(GETDATE())
						)
				)
			,'Oct'
			)

		INSERT INTO @listOfIDs (
			Male
			,Female
			,NAME
			)
		VALUES (
			(
				SELECT count(a.sex)
				FROM patient a
				INNER JOIN Invoice b ON a.PatientID = b.PatientID
				WHERE a.Sex = 'male'
					AND (
						MONTH(a.CreatedDate) = 11
						AND YEAR(a.CreatedDate) = YEAR(GETDATE())
						)
				)
			,(
				SELECT count(a.sex)
				FROM patient a
				INNER JOIN Invoice b ON a.PatientID = b.PatientID
				WHERE a.Sex = 'Female'
					AND (
						MONTH(a.CreatedDate) = 11
						AND YEAR(a.CreatedDate) = YEAR(GETDATE())
						)
				)
			,'Nov'
			)

		INSERT INTO @listOfIDs (
			Male
			,Female
			,NAME
			)
		VALUES (
			(
				SELECT count(a.sex)
				FROM patient a
				INNER JOIN Invoice b ON a.PatientID = b.PatientID
				WHERE a.Sex = 'male'
					AND (
						MONTH(a.CreatedDate) = 12
						AND YEAR(a.CreatedDate) = YEAR(GETDATE())
						)
				)
			,(
				SELECT count(a.sex)
				FROM patient a
				INNER JOIN Invoice b ON a.PatientID = b.PatientID
				WHERE a.Sex = 'Female'
					AND (
						MONTH(a.CreatedDate) = 12
						AND YEAR(a.CreatedDate) = YEAR(GETDATE())
						)
				)
			,'Dec'
			)

		SELECT *
		FROM @listOfIDs
	END
	ELSE
	BEGIN
		INSERT INTO @listOfIDs (
			Male
			,Female
			,NAME
			)
		VALUES (
			(
				SELECT count(a.sex)
				FROM patient a
				INNER JOIN Invoice b ON a.PatientID = b.PatientID
				WHERE a.Sex = 'male'
					AND (
						MONTH(a.CreatedDate) = 1
						AND YEAR(a.CreatedDate) = YEAR(@Fromdate)
						)
				)
			,(
				SELECT count(a.sex)
				FROM patient a
				INNER JOIN Invoice b ON a.PatientID = b.PatientID
				WHERE a.Sex = 'Female'
					AND (
						MONTH(a.CreatedDate) = 1
						AND YEAR(a.CreatedDate) = YEAR(@Fromdate)
						)
				)
			,'Jan'
			)

		INSERT INTO @listOfIDs (
			Male
			,Female
			,NAME
			)
		VALUES (
			(
				SELECT count(a.sex)
				FROM patient a
				INNER JOIN Invoice b ON a.PatientID = b.PatientID
				WHERE a.Sex = 'male'
					AND (
						MONTH(a.CreatedDate) = 2
						AND YEAR(a.CreatedDate) = YEAR(@Fromdate)
						)
				)
			,(
				SELECT count(a.sex)
				FROM patient a
				INNER JOIN Invoice b ON a.PatientID = b.PatientID
				WHERE a.Sex = 'Female'
					AND (
						MONTH(a.CreatedDate) = 2
						AND YEAR(a.CreatedDate) = YEAR(@Fromdate)
						)
				)
			,'Feb'
			)

		INSERT INTO @listOfIDs (
			Male
			,Female
			,NAME
			)
		VALUES (
			(
				SELECT count(a.sex)
				FROM patient a
				INNER JOIN Invoice b ON a.PatientID = b.PatientID
				WHERE a.Sex = 'male'
					AND (
						MONTH(a.CreatedDate) = 3
						AND YEAR(a.CreatedDate) = YEAR(@Fromdate)
						)
				)
			,(
				SELECT count(a.sex)
				FROM patient a
				INNER JOIN Invoice b ON a.PatientID = b.PatientID
				WHERE a.Sex = 'Female'
					AND (
						MONTH(a.CreatedDate) = 3
						AND YEAR(a.CreatedDate) = YEAR(@Fromdate)
						)
				)
			,'Mar'
			)

		INSERT INTO @listOfIDs (
			Male
			,Female
			,NAME
			)
		VALUES (
			(
				SELECT count(a.sex)
				FROM patient a
				INNER JOIN Invoice b ON a.PatientID = b.PatientID
				WHERE a.Sex = 'male'
					AND (
						MONTH(a.CreatedDate) = 4
						AND YEAR(a.CreatedDate) = YEAR(@Fromdate)
						)
				)
			,(
				SELECT count(a.sex)
				FROM patient a
				INNER JOIN Invoice b ON a.PatientID = b.PatientID
				WHERE a.Sex = 'Female'
					AND (
						MONTH(a.CreatedDate) = 4
						AND YEAR(a.CreatedDate) = YEAR(@Fromdate)
						)
				)
			,'Apr'
			)

		INSERT INTO @listOfIDs (
			Male
			,Female
			,NAME
			)
		VALUES (
			(
				SELECT count(a.sex)
				FROM patient a
				INNER JOIN Invoice b ON a.PatientID = b.PatientID
				WHERE a.Sex = 'male'
					AND (
						MONTH(a.CreatedDate) = 5
						AND YEAR(a.CreatedDate) = YEAR(@Fromdate)
						)
				)
			,(
				SELECT count(a.sex)
				FROM patient a
				INNER JOIN Invoice b ON a.PatientID = b.PatientID
				WHERE a.Sex = 'Female'
					AND (
						MONTH(a.CreatedDate) = 5
						AND YEAR(a.CreatedDate) = YEAR(@Fromdate)
						)
				)
			,'May'
			)

		INSERT INTO @listOfIDs (
			Male
			,Female
			,NAME
			)
		VALUES (
			(
				SELECT count(a.sex)
				FROM patient a
				INNER JOIN Invoice b ON a.PatientID = b.PatientID
				WHERE a.Sex = 'male'
					AND (
						MONTH(a.CreatedDate) = 6
						AND YEAR(a.CreatedDate) = YEAR(@Fromdate)
						)
				)
			,(
				SELECT count(a.sex)
				FROM patient a
				INNER JOIN Invoice b ON a.PatientID = b.PatientID
				WHERE a.Sex = 'Female'
					AND (
						MONTH(a.CreatedDate) = 6
						AND YEAR(a.CreatedDate) = YEAR(@Fromdate)
						)
				)
			,'Jun'
			)

		INSERT INTO @listOfIDs (
			Male
			,Female
			,NAME
			)
		VALUES (
			(
				SELECT count(a.sex)
				FROM patient a
				INNER JOIN Invoice b ON a.PatientID = b.PatientID
				WHERE a.Sex = 'male'
					AND (
						MONTH(a.CreatedDate) = 7
						AND YEAR(a.CreatedDate) = YEAR(@Fromdate)
						)
				)
			,(
				SELECT count(a.sex)
				FROM patient a
				INNER JOIN Invoice b ON a.PatientID = b.PatientID
				WHERE a.Sex = 'Female'
					AND (
						MONTH(a.CreatedDate) = 7
						AND YEAR(a.CreatedDate) = YEAR(@Fromdate)
						)
				)
			,'Jul'
			)

		INSERT INTO @listOfIDs (
			Male
			,Female
			,NAME
			)
		VALUES (
			(
				SELECT count(a.sex)
				FROM patient a
				INNER JOIN Invoice b ON a.PatientID = b.PatientID
				WHERE a.Sex = 'male'
					AND (
						MONTH(a.CreatedDate) = 8
						AND YEAR(a.CreatedDate) = YEAR(@Fromdate)
						)
				)
			,(
				SELECT count(a.sex)
				FROM patient a
				INNER JOIN Invoice b ON a.PatientID = b.PatientID
				WHERE a.Sex = 'Female'
					AND (
						MONTH(a.CreatedDate) = 8
						AND YEAR(a.CreatedDate) = YEAR(@Fromdate)
						)
				)
			,'Aug'
			)

		INSERT INTO @listOfIDs (
			Male
			,Female
			,NAME
			)
		VALUES (
			(
				SELECT count(a.sex)
				FROM patient a
				INNER JOIN Invoice b ON a.PatientID = b.PatientID
				WHERE a.Sex = 'male'
					AND (
						MONTH(a.CreatedDate) = 9
						AND YEAR(a.CreatedDate) = YEAR(@Fromdate)
						)
				)
			,(
				SELECT count(a.sex)
				FROM patient a
				INNER JOIN Invoice b ON a.PatientID = b.PatientID
				WHERE a.Sex = 'Female'
					AND (
						MONTH(a.CreatedDate) = 9
						AND YEAR(a.CreatedDate) = YEAR(@Fromdate)
						)
				)
			,'Sep'
			)

		INSERT INTO @listOfIDs (
			Male
			,Female
			,NAME
			)
		VALUES (
			(
				SELECT count(a.sex)
				FROM patient a
				INNER JOIN Invoice b ON a.PatientID = b.PatientID
				WHERE a.Sex = 'male'
					AND (
						MONTH(a.CreatedDate) = 10
						AND YEAR(a.CreatedDate) = YEAR(@Fromdate)
						)
				)
			,(
				SELECT count(a.sex)
				FROM patient a
				INNER JOIN Invoice b ON a.PatientID = b.PatientID
				WHERE a.Sex = 'Female'
					AND (
						MONTH(a.CreatedDate) = 10
						AND YEAR(a.CreatedDate) = YEAR(@Fromdate)
						)
				)
			,'Oct'
			)

		INSERT INTO @listOfIDs (
			Male
			,Female
			,NAME
			)
		VALUES (
			(
				SELECT count(a.sex)
				FROM patient a
				INNER JOIN Invoice b ON a.PatientID = b.PatientID
				WHERE a.Sex = 'male'
					AND (
						MONTH(a.CreatedDate) = 11
						AND YEAR(a.CreatedDate) = YEAR(@Fromdate)
						)
				)
			,(
				SELECT count(a.sex)
				FROM patient a
				INNER JOIN Invoice b ON a.PatientID = b.PatientID
				WHERE a.Sex = 'Female'
					AND (
						MONTH(a.CreatedDate) = 11
						AND YEAR(a.CreatedDate) = YEAR(@Fromdate)
						)
				)
			,'Nov'
			)

		INSERT INTO @listOfIDs (
			Male
			,Female
			,NAME
			)
		VALUES (
			(
				SELECT count(a.sex)
				FROM patient a
				INNER JOIN Invoice b ON a.PatientID = b.PatientID
				WHERE a.Sex = 'male'
					AND (
						MONTH(a.CreatedDate) = 12
						AND YEAR(a.CreatedDate) = YEAR(@Fromdate)
						)
				)
			,(
				SELECT count(a.sex)
				FROM patient a
				INNER JOIN Invoice b ON a.PatientID = b.PatientID
				WHERE a.Sex = 'Female'
					AND (
						MONTH(a.CreatedDate) = 12
						AND YEAR(a.CreatedDate) = YEAR(@Fromdate)
						)
				)
			,'Dec'
			)

		SELECT *
		FROM @listOfIDs
	END
END
