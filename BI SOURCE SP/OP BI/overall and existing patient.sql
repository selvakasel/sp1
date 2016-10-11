CREATE PROCEDURE sp_Exist_and_New --- sp_Exist_and_New
(
	@Fromdate VARCHAR(max) = ''
	
	)
AS
BEGIN
	DECLARE @listOfIDs TABLE (
		CountVal BIGINT
		,NAME VARCHAR(20)
		)

	IF (@Fromdate = '')
		
	BEGIN
		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(PatientID)
				FROM registration
				WHERE PatientID IN (
						SELECT PatientID
						FROM registration
						GROUP BY PatientID
						HAVING COUNT(PatientID) = 1
						)
					AND (CreatedDate = getdate())
				)
			,'Overall New Patient'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(PatientID)
				FROM registration
				WHERE PatientID IN (
						SELECT PatientID
						FROM registration
						GROUP BY PatientID
						HAVING COUNT(PatientID) > 1
						)
					AND (CreatedDate = getdate())
				)
			,'Existing  Patient'
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
				SELECT count(PatientID)
				FROM registration
				WHERE PatientID IN (
						SELECT PatientID
						FROM registration
						GROUP BY PatientID
						HAVING COUNT(PatientID) = 1
						)
					AND (CreatedDate = @Fromdate)
				)
			,'Overall New Patient'
			)

		INSERT INTO @listOfIDs (
			CountVal
			,NAME
			)
		VALUES (
			(
				SELECT count(PatientID)
				FROM registration
				WHERE PatientID IN (
						SELECT PatientID
						FROM registration
						GROUP BY PatientID
						HAVING COUNT(PatientID) > 1
						)
					AND (CreatedDate = @Fromdate)
				)
			,'Existing  Patient'
			)

		SELECT *
		FROM @listOfIDs
	END
END
