

alter PROCEDURE sp_pattypesday   --  sp_pattypesday '2016-08-19 13:12:38.853'
 (
	@Fromdate datetime = ''	
	)
AS
BEGIN
	DECLARE @listOfID TABLE (
		CountVal BIGINT
		,NAME VARCHAR(20)
		)

	IF (
			@Fromdate = ''
			
			)
	BEGIN
		INSERT INTO @listOfID (
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
						and (CreatedDate = getdate())
					
				)
			,'Existing'
			)

		INSERT INTO @listOfID (
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
						and (CreatedDate = getdate())
				)
			,'New'
			)

	

		SELECT *
		FROM @listOfID
	END
	ELSE
	BEGIN
		INSERT INTO @listOfID (
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
				and (
						CreatedDate = @Fromdate
							
						)
					
				)
			,'Existing'
			)

		INSERT INTO @listOfID (
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
			,'New'
			)

		

		SELECT *
		FROM @listOfID
	END
END

